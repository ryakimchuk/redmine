Feature: Logout from the system

  Background: Registration and Login to the system
    Given new user registered
    And new user logged in to the system

  Scenario: Logout from the system
    Given I am on Home Page
    When I click on Sign out button
    Then I am logged out