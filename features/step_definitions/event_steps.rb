Given /^I am on the event creation page$/ do
  visit new_event_url
end

When /^I create the following event:$/ do |table|
  table.rows_hash.each do |field, value|
    fill_in field, :with => value
  end
  click_on 'Submit'
end

Then /^I should be notified that my event was successfully created$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^I should be given a link to share$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^I should be notified that my event was not created$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^I should see the problem with the form$/ do
  pending # express the regexp above with the code you wish you had
end
