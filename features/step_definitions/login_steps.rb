Given('the Sign in page') do
    visit 'https://demo.realworld.io/#/login'
end
  
When('the user already have an account') do
    puts 'done'
end
  
And('it should fill the Email and Password field and click on the button Sign in') do
    email = find('input[type="email"].form-control')
    email.send_keys 'nana@gmail.com'
    password = find('input[type="password"].form-control')
    password.send_keys 'blablabla'
    button = find('.btn', text:'Sign in')
    button.click
end

Then('it should be redirected to the home page') do
    sleep 5
    url = current_url
    expect(url).to eq 'https://demo.realworld.io/#/'
end

And('it should fill the Email and Password field wrong and click on the button Sign in') do
    email = find('input[type="email"].form-control')
    email.send_keys 'nana@gmail.com'
    password = find('input[type="password"].form-control')
    # this is the wrong password
    password.send_keys 'blabla'
    button = find('.btn', text:'Sign in')
    button.click
end

Then('it should present the error mensage email or password is invalid') do 
    error = find('.ng-binding', text:'email or password is invalid')
    expect(error).to have_content 'email or password is invalid'
end