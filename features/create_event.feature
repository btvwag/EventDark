@wip
Feature: Create Event
  As an event host
  I want to create an event page
  So that users can sign up

  Background:
    Given I am on the event creation page

  Scenario: Successfully create event
    When I create the following event:
      | Name          | BTVWAG BDD/TDD                |
      | Location      | Draker Labs                   |
      | Time          | October 26th 2011, 6:30PM EST |
      | Max Attendees | 20                            |
    Then I should be notified that my event was successfully created
    And I should be given a link to share

  Scenario: Fail to create event (invalid)
      | Name          | BTVWAG BDD/TDD                |
      | Location      | Draker Labs                   |
      | Time          | October 26th 2011, 6:30PM EST |
      | Max Attendees |                               |
    Then I should be notified that my event was not created
    And I should see the problem with the form
