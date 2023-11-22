ActiveAdmin.register Client do

  permit_params :first_name, :last_name, :phone_number, :email, :is_owner
  config.xls_builder.delete_columns :id, :created_at, :updated_at
  actions :all, :except => [:new]

  index do
    column :first_name
    column :last_name
    column :address do |f|
       f.pdf.address
    end
    column :qr_code do |qr|
      image_tag qr.pdf.qr_code_url,  size: '100x100'
    end
    column :phone_number
    column :email
    column :is_owner
    actions
  end

  show do
    attributes_table do
      row :first_name
      row :last_name
      row :address do |f|
         f.pdf.address
      end
      row :phone_number
      row :email
      row :is_owner
      row :qr_code do |qr|
        image_tag qr.pdf.qr_code_url, size: '150x150'
      end
      active_admin_comments
    end
  end

end
