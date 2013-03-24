Feature: Facebook

  In order to sign up
  As an Parent or sitter
  I want to register myself from facebook

  Scenario: I want to sign up as a parent
    When I go to the home page
    And I follow "Welcome Parent"
    Then I should see ""
    Then I should break