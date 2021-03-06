click_link 'Form Authentication'

# wait 3 seconds for field 'username' to appear
username = wait 3 do
  find_field 'username'
end

# $username is set in vars.rb
username.type $username

# we assume that because username was found, then password will be found without waiting
# also we use parenthesis around to be able to call .type on the returned element
find_field('password').type $password

click_button 'Login'

wait 3 do
  has_text? 'Welcome to the Secure Area'
end
