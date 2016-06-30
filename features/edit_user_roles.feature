Feature: Edit user roles

  Background: Registration and Login to the system
    Given new user registered
    And new user logged in to the system
    When user create new project

  Scenario: Edit user roles on the project
    Given I click on Members tab
    And I click on Edit button
    When I change user role
    And click on Save button
    Then new role will be displayed