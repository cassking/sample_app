include ApplicationHelper

def sign_in(user)
	visit signin_path
	fill_in "Email", with: user.email
	fill_in "Password", with: user.password
	click_button "Sign in"
	#sign in when not using Capybara as well
	# As noted in the comment line, filling in the form doesn’t work 
	# when not using Capybara, so to cover this 
	# ase we also add the user’s remember token to the cookies:
	cookies[:remember_token] = user.remember_token
end
