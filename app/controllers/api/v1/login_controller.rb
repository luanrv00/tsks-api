require "jwt"

module Api
  module V1
    class LoginController < ApplicationController
      def create
        user = User.find_by_email params[:email]

        if user && user.authenticate(params[:password])
          payload = {email: params[:email]}
          token = JWT.encode payload, nil, "none"
          render json: {status_code: 200, token: token}, status: :ok
        else
          render json: {status_code: 403}, status: :forbidden
        end
      end
    end
  end
end
