class LoginController < ApplicationController

    def create
      
      user=User.find_by(name: params[:name]) 
      
      if user && user.authenticate(params[:password])
        
        render json: {token: make_token(user), id: user.id}
      elsif user 
        render json:{errors: ["Wrong Password, please try again!"]}, status: :unprocessable_entity
      else 
        render json:{errors: ["Hello Stranger! Please Sign up!"]}, status: :unprocessable_entity
      end 
      
    end
  
  end