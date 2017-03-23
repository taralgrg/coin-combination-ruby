require('capybara/rspec')
  require('./app')
  Capybara.app = Sinatra::Application
  set(:show_exceptions, false)

  describe('the user input path', {:type => :feature}) do
    it('processes the user entry and returns the correct amount of change') do
      visit('/')
      fill_in('amount_input', :with => '30')
      click_button('Send')
      expect(page).to have_content([1,0,1,0])
    end
  end
