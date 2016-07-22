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

def load_location_manager
  Place.create(id: 1, name: 'Hotbox')
  Place.create(id: 2, name: 'Hotbox')
  User.create(id: 1, email: 'one@example.com', password: 'test123')
  User.create(id: 2, email: 'two@example.com', password: 'test123')
  User.create(id: 3, email: 'three@example.com', password: 'test123')
  User.create(id: 4, email: 'four@example.com', password: 'test123')
  User.create(id: 5, email: 'five@example.com', password: 'test123')
  locationmanager.create(place_id: 1, user_id: 1)
  @test_location = locationmanager.create(place_id: 1, user_id: 2)
  locationmanager.create(place_id: 2, user_id: 3)
  locationmanager.create(place_id: 2, user_id: 4)
end
