class SessionsController < Devise::SessionsController
  respond_to :html, :json

  def create
    super do |User|
      if request.format.json?
        data = {
          token: user.authentication_token,
          email: user.email
        }
        render json: data, status: 201 and return
      end
    end
  end
end

end
