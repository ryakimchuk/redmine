Feature: Change user password

  Background: Registration and Login to the system
    Given new user registered
    And new user logged in to the system

  Scenario: Change user password
    Given I am on Home Page
    When I am click on My account button
    Then I should see My account page
    And I click on Change password button
    When I fill in change password form
    And I click Apply button
    Then I should see "Password was successfully updated." message
