Given /^I have opened "(.*?)"$/ do |url|
  visit url 
end

When /^I try to login as "(.*?)"$/ do |arg1|
  fill_in "Email", :with => "osama.binladen" 
  click_button "Sign in" 
end

Then /^I should google should show me an error message$/ do
  sleep 2
  page.has_content?("The username or password you entered is incorrect.")
end
