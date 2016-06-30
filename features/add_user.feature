Feature: Add new user to the project

  Background: Registration and Login to the system
    Given new user registered
    And new user logged in to the system
    When user create new project

  Scenario: Add new user to the project
    Given I click on Members tab
    And I click on New member button
    Then I should see New member dialog window
    When I enter username to the search form
    And I choose User from the list
    When I choose user role
    And click on Add button
    Then user should display in the list of members