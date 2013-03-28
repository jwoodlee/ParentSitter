Feature: Facebook

  In order to sign up
  As an sitter
  I want to register myself from facebook

  Scenario: I want to sign up as a sitter
    When I go to the home page
    And I log in as a sitter
    Then I should be on the new_sitter page
    And I fill in "Birth date" with "1989-03-19"
    And I fill in "Zipcode" with "208006"
    And I fill in "Cell phone" with "9876543210"
    And I press "Submit"
    Then I should see "Sitter Registered Successfully."
    And I follow "Welcome Sitter"
    Then I should see "Successfully authorized from Facebook account."