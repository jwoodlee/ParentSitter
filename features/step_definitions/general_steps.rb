And /^I should break$/ do
  puts "Debugger Start"
  debugger
  puts "Debugger End"
end

When(/^I log in as a parent$/) do
	step %{I follow "Welcome Parent"}
  step %{I fill in "Email or Phone:" with "test@example.com"}
  step %{I fill in "Password:" with "test123"}
  step %{I press "Log In"}
  unless (page.driver.browser.current_url =~ /127.0.0.1/)
  	step %{I press "Go to App"}
  end
end

When(/^I log in as a sitter$/) do
  step %{I follow "Welcome Sitter"}
  step %{I fill in "Email or Phone:" with "test@example.com"}
  step %{I fill in "Password:" with "test123"}
  step %{I press "Log In"}
  unless (page.driver.browser.current_url =~ /127.0.0.1/)
    step %{I press "Go to App"}
  end
end