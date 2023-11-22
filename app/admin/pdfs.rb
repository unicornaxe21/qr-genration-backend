ActiveAdmin.register Pdf do

  permit_params :address, :attachment, :qr_code_address
  config.xls_builder.delete_columns :id

  index do
    column :address
    column :qr_code_address
    column :count
    actions
  end

  show do
    attributes_table do
      row :address
      row :qr_code_address
      row 'File' do |f|
        link_to('Download file', f.attachment.service_url, target: "_blank")
      end
      row :qr_code do |qr|
        image_tag url_for(qr.qr_code)
      end
    end
  end

  form do |f|
    f.inputs do
      f.input :address
      f.input :attachment, as: :file
    end
    f.actions
  end

end
