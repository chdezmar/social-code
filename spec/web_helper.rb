def sign_in_user(email = 'test@gmail.com', password = '12345678')
    visit 'users/sign_in'
    fill_in 'Email', with: email
    fill_in 'Password', with: password
    click_button 'Log in'
end


def sign_up_user(email = 'test@gmail.com', password = '12345678', password_confirmation = '12345678')
    visit 'users/sign_up'
    fill_in 'Email', with: email
    fill_in 'Password', with: password
    fill_in 'Password confirmation', with: password_confirmation
    click_button 'Sign up'
end
