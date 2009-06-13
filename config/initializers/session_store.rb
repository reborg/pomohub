# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_pomohub_session',
  :secret      => 'c8c8906bfce50cd9ad3a2f7aa06603ae7bd5a99ba98cc12edc00464e4351883730ae4e6ee1633b3a1f6300e058c26e2562a77c12b86263afc079dfaff7270c4e'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
