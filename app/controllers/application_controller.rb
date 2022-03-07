class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authenticate
  
  def serialize(resource, option = {})
    JSON.parse(ActiveModelSerializers::SerializableResource.new(
      resource,
      option
    ).to_json)
  end

  def authenticate
    tenant = Tenant.find_by(api_key: params[:api_key])
    if tenant.present?
      tenant_count = tenant.count ? (tenant.count + 1) : 1
      tenant.update(count: tenant_count)
      return 
    end
    render status: 400, json: { 
      status: 400,
      message: 'You api key is not valid, please try again' }
  end

  
end
