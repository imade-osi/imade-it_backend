class ApplicationController < ActionController::API
    def make_token(user)
        JWT.encode({ user_id: user.id }, hmac_secret, 'HS256')
    end
    
    def hmac_secret
        ENV['TOKEN_SIGNING_SECRET']
    end
    
      def token_user_id
        begin 
          token = request.headers["Authorization"]
          dumb_array = JWT.decode(token, hmac_secret, true, { algorithm: 'HS256' })
          dumb_array.first["user_id"]
        rescue
          nil
        end
      end
    
      def token_there_at_all?
        !!token_user_id
      end
end