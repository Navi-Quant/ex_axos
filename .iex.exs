basic_auth_opts = [
  username: System.get_env("AXOS_BASIC_USERNAME"),
  password: System.get_env("AXOS_BASIC_PASSWORD"),
  key: System.get_env("AXOS_BASIC_API_KEY")
]

oauth_opts = [
  username: System.get_env("AXOS_OAUTH_USERNAME"),
  password: System.get_env("AXOS_OAUTH_PASSWORD"),
  client_id: System.get_env("AXOS_OAUTH_CLIENT_ID"),
  client_secret: System.get_env("AXOS_OAUTH_CLIENT_SECRET")
]
