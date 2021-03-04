class AuthorizeRequest
    def initialize(headers = {})
      @headers = headers
    end

    def user
      User.find_by(id: decoded_token['user_id']) if decoded_token
    end

    private

    attr_reader :headers

    def decoded_token
      secret = ENV['RAILS_MASTER_KEY']
      JWT.decode(auth_token, secret, true, { algorthim: 'HS256' })[0]
    rescue
      nil
    end

    def auth_token
      headers['Authorization'].split.last if headers['Authorization'].present?
    end
  end