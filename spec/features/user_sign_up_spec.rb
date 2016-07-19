require 'rails_helper'


feature 'User' do
	context 'has not signed up yet' do
		it 'should see a sign up link and a sign in link' do
			visit '/'
			expect(page).to have_link('Sign up')
			expect(page).not.to have_link('Sign up')
		end
	end
end
