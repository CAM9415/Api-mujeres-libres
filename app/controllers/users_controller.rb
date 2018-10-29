class UsersController < ApplicationController
    skip_before_action :authorize_request, only: :create
    def create
        user=User.create(params.permit(:username, :password))
        profile=Profile.new(profile_params)
        auth_token = AuthenticateUser.new(user.username, user.password).call
        response = { message: Message.account_created, auth_token: auth_token }
        profile.user=user
        profile.save
        render json: user, status: :ok
    end 

    private 
    def profile_params
        params.permit(:nombre, :sexo, :fecha, :foto, :email)

    end

end 