Feature: Edit user roles

  Background: Login to the system
    Given I am on Home Page
    When I click Sign in button
    Then I see login form
    When I fill in login form
    And I click Log in button
    Then I should see greeting message

  Scenario: Edit user roles on the project
    Given I am on Home Page
    When I click on username link
    Then I should see user information page
    When I click on project name
    And I go to project Settings page
    When I click on Members tab
    And I click on Edit button
    When I change user role
    And click on Save button
    Then new role will be displayed