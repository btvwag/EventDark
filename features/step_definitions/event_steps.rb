Given /^I am on the event creation page$/ do
  visit new_event_path
end

When /^I create the following event:$/ do |table|
  table.rows_hash.each do |field, value|
    fill_in field, :with => value
  end
  click_on 'Submit'
end

Then /^I should be notified that my "([^"]*)" was (successfully|not) (created|saved|deleted)$/ do |object, status, action|
  klass = (status == 'successfully' ? 'notice' : 'warning')
  page.should have_selector(".flash.#{klass}")
  page.find('.flash').should have_content(object)
end

Then /^I should be given a link to share$/ do
  page.should have_content('Share this event:')
end

Then /^I should see the problem with the form$/ do
  page.find('p.inline-errors').should have_content('blank')
end
