class AuthController < ApplicationController

    def login
        user = User.find_by(username: params[:username])
            if user && user.authenticate(params[:password])
                secret = ENV['SECRET_KEY_BASE']
                token = JWT.encode({ user_id: user.id }, secret, 'HS256')
                render json: { user: UserSerializer.new(user), token: token}
            else
                render json: { failure: "Invalid Username or Password" }
            end
    end

    def signup
        auth_params = params.permit(:username, :password, :email, :avatar)
        if params[:avatar].instance_of?(String) || params[:avatar].nil?
            user = User.create(auth_params)
            render json: user
        else 
            imageUploaded = Cloudinary::Uploader.upload(params[:avatar])
            user_params_new = auth_params
            user_params_new[:avatar] = imageUploaded["url"]
            user = User.create(user_params_new)
            if user.valid?
                secret = ENV['SECRET_KEY_BASE']
                token = JWT.encode({ user_id: user.id }, secret, 'HS256')
                render json: {user: user, token: token }, status: :created
            else 
                render json: { error: user.errors.full_messages }, status: :unprocessable_entity
            end
        end
    end
end
