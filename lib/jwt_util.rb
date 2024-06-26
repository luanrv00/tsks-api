require "jwt"

module JWTUtil
	def self.create_auth_token user_payload
		exp = 42.minutes.from_now.to_i
		payload = user_payload.merge({exp: exp})
		JWT.encode payload, ENV["AUTH_TOKEN_KEY"], "HS256"
	end

	def self.decode_auth_token token
		begin
      JWT.decode token, ENV["AUTH_TOKEN_KEY"], true, {algorithm: 'HS256'}
    rescue
      nil
    end
	end

	def self.create_refresh_token user_payload
		exp = 1.week.from_now.to_i
		payload = user_payload.merge({exp: exp})
		JWT.encode payload, ENV["REFRESH_TOKEN_KEY"], "HS256"
	end

	def self.decode_refresh_token token
		JWT.decode token, ENV["REFRESH_TOKEN_KEY"], false
	end
end