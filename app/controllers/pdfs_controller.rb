class PdfsController < ApplicationController

  def download
    pdf_file = Pdf.find_by(id: params[:id])
    s3 = Aws::S3::Client.new
    if pdf_file && pdf_file.count < 3
      file = s3.get_object(bucket:'my-bucket-for-qr-codes', key: pdf_file.attachment.key).body.read
      pdf_file.increment!(:count)
      send_data file, type: "application/pdf", :disposition => 'inline'
    else
      pdf_file.attachment.purge
      render json: { message: "Sorry, QR's term has been expired"}, status: 422
    end
  end

end
