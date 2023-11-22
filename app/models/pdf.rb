class Pdf < ApplicationRecord
  require "rqrcode"

  has_many :clients, dependent: :destroy

  after_create :qr_create

  has_one_attached :attachment
  has_one_attached :qr_code

  def qr_create
    self.update(qr_code_address: self.attachment_url)
    qrCreator = RQRCode::QRCode.new("https://qr-appraisal.com.au/" + "?id=#{self.id.to_s}")

    png = qrCreator.as_png(
      bit_depth: 1,
      border_modules: 4,
      color_mode: ChunkyPNG::COLOR_GRAYSCALE,
      color: "black",
      file: nil,
      fill: "white",
      module_px_size: 6,
      resize_exactly_to: true,
      resize_gte_to: false,
      size: 360
    )
    self.qr_code.attach(io: StringIO.new(png.to_s), filename: "filename.png", content_type: 'application/pdf')
  end

  def attachment_url
    if attachment.attached?
      attachment.url(expires_in: 7.days.to_i)
    end
  end

  def qr_code_url
    if qr_code.attached?
      qr_code.url(expires_in: 7.days.to_i)
    end
  end

end
