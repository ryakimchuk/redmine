Feature: Add new user to the project

  Background: Login to the system
    Given I am on Home Page
    When I click Sign in button
    Then I see login form
    When I fill in login form
    And I click Log in button
    Then I should see greeting message

  Scenario: Add new user to the project
    Given I am on Home Page
    When I click on username link
    Then I should see user information page
    When I click on project name
    And I go to project Settings page
    When I click on Members tab
    And I click on New member button
    Then I should see New member dialog window
    When I enter username to the search form
    And I choose User from the list
    When I choose user role
    And click on Add button
    Then user should display in the list of members