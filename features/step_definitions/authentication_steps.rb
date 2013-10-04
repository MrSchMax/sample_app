Допустим(/^пользователь открыл страницу входа$/) do
  visit signin_path
end

Если(/^он ввел неверные данные для входа$/) do
  click_button "Sign in"
end

То(/^он должен видеть сообщение об ошибке$/) do
  expect(page).to have_selector('div.alert.alert-error')
end

Допустим(/^пользователь имеет аккаунт$/) do
  @user = User.create(name: "Example User", email: "user@example.com",
                      password: "foobar", password_confirmation: "foobar")
end

Если(/^он ввел верные данные для входа$/) do
  fill_in "Email",    with: @user.email
  fill_in "Password", with: @user.password
  click_button "Sign in"
end

То(/^он должен видеть страницу своего профиля$/) do
  expect(page).to have_title(@user.name)
end

То(/^он должен видеть сслыку выхода$/) do
  expect(page).to have_link('Sign out', signout_path)
end