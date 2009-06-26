# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_sampleAuto_complete_session',
  :secret      => '9a06e4fd962dcc2033964eec5deeb63532a001326da5864b15c8ed1f0d87074790e5dfc90915e64fcb2fe3594539c1aef769834ff7b3f5abf79aec2f240e5645'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
