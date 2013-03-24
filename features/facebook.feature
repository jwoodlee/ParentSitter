Feature: Facebook

  In order to sign up
  As an Parent or sitter
  I want to register myself from facebook

  Scenario: I want to sign up as a parent
    When I go to the home page
    And I log in as a parent
    Then I should be on the new_parent page
    And I fill in "Birth date" with "1989-03-19"
    And I fill in "Zipcode" with "208006"
    And I fill in "Cell phone" with "9876543210"
    And I press "Submit"
    Then I should see "Parent Registered Successfully."
    And I follow "Welcome Parent"
    Then I should see "Successfully authorized from Facebook account."