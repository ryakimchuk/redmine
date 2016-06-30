Feature: Login to the system

  Background: Registration
    Given new user registered

  Scenario: Positive Login to the system
    Given I am on Home Page
    When I click Sign in button
    Then I see login form
    When I fill in login form
    And I click Log in button
    Then I should see greeting message