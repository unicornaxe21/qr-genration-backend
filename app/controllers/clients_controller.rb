class ClientsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    pdf = Pdf.find(params[:pdfId][:pdf_id])
    client = pdf.clients.new(client_params) 
    if pdf.count < 3 && client.save 
      render json: client, status: :created
    else
      render json: { error: "Unable to create client" }, status: :bad_request
    end
  end

  private

  def client_params
    params.require(:client).permit(:first_name, :last_name, :email, :phone_number, :is_owner, :pdf_id)
  end

end
