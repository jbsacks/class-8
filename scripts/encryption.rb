# to encrypt a secret, use BCrypt::Password.create(secret)
# to test a secret, use BCrypt::Password.new(encrypted) == secret
# run this file using rails runner scripts/encryption.rb

# TODO:
# 1. encrypt a secret and puts encrypted string
secret = "password123"
puts secret
encrypt_secret = BCrypt::Password.create(secret)
puts encrypt_secret
# 2. decrypt the encrypted string

# 3. check if decrypted value matches secret
secret_to_test = "password123"
puts BCrypt::Password.new(encrypt_secret) == secret_to_test