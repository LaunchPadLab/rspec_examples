LpTokenAuth.config do |config|

  # The secret used when encrypting the JWT
  #
  config.secret = 'bd7b7ff285002b36a6d684abf8f3b9d4f38432eada761db47ec3da2f4efb5c169512e891561cc9ea6e0729332ffde37c5a4eca0b76f4e61a9a3aecc992d024f6'

  # The number of hours the token is active
  # default: 7 * 24
  #
  config.expires = 7 * 24

  # The encryption algorithm to use
  # default: HS512
  #
  config.algorithm = 'HS512'

  # Where to include the token in the response, must be an array, options are
  # :cookie, :header
  # default: [:cookie]
  #
  config.token_transport = [:cookie]
end
