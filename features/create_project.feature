Feature: Create new project

  Background: Login to the system
    Given I am on Home Page
    When I click Sign in button
    Then I see login form
    When I fill in login form
    And I click Log in button
    Then I should see greeting message

  Scenario: Create new project
    Given I am on Home Page
    When I click on Projects button
    And I click on New project button
    Then I should see New project form
    When I fill in project form
    And click Create button
    Then I should see Successful creation message