Feature: Create project version

  Background: Registration and Login to the system
    Given new user registered
    And new user logged in to the system
    When user create new project

  Scenario: Create new version of project
    Given I click on Versions tab
    And I click on New version button
    When I fill in project version form
    And I click Create button
    Then I should see greeting message