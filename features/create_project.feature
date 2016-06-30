Feature: Create new project

  Background: Registration and Login to the system
    Given new user registered
    And new user logged in to the system

  Scenario: Create new project
    Given I am on Home Page
    When I click on Projects button
    And I click on New project button
    Then I should see New project form
    When I fill in project form
    And click Create button
    Then I should see Successful creation message