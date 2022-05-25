class Users::RegistrationsController < Devise::RegistrationsController
  def create
    super do
      resource.photo.attach(params[:photo])
    end
  end
end
