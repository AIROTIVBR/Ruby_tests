Given('the user is on the Sign in page') do
    visit 'https://demo.realworld.io/#/login'
end
  
When('the user clicks on the redirect url') do
    link = find('.text-xs-center', text:'Need an account?')
    link.click
    url = current_url
    expect(url).to eq 'https://demo.realworld.io/#/register'
end
  
When('fills the username, email and password inputs') do
    user = find('input[type="text"].form-control')
    user.send_keys 'TestesYY'
    email = find('input[type="email"].form-control')
    email.send_keys 'TestesYY@gmail.com'
    password = find('input[type="password"].form-control')
    password.send_keys 'blablabla'
end
  
When('the user clicks on the sign up button') do
    button = find('.btn', text:'Sign up')
    button.click
end
  
Then('it should redirect the user to the Home page') do
    sleep 10
    url = current_url
    expect(url).to eq 'https://demo.realworld.io/#/'
end
  
Given('the user is on the Sign up page') do
    visit 'https://demo.realworld.io/#/register'
end
  
When('the user fills the username, email and password inputs') do
    user = find('input[type="text"].form-control')
    user.send_keys 'TestesXX'
    email = find('input[type="email"].form-control')
    email.send_keys 'TestesXX@gmail.com'
    password = find('input[type="password"].form-control')
    password.send_keys 'blablabla'
end
  
When('the username and email already exists') do
    puts 'done'
end
  
Then('it should present an error mensage to the user about this error') do
    puts 'done'
end