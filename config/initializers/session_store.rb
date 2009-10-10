# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_openklean_session',
  :secret      => '4876d4af1d66d9aa73134fc954b59cdc3716689f601a79beffa9a41c0d033fe8756ea05d3430d3870b8ac3d021538a494d8d29273abc6db2e38d7291e28736e7'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
