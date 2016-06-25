Feature: Logout from the system

  Background: Login to the system
    Given I am on Home Page
    When I click Sign in button
    Then I see login form
    When I fill in login form
    And I click Log in button
    Then I should see greeting message

  Scenario: Logout from the system
    Given I am on Home Page
    When I click on Sign out button
    Then I am logged out