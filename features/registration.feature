Feature: Registration

  Scenario: Positive Registration
    Given I am on Home Page
    When I click Register button
    And I fill registration form
    And I click submit button
    Then I am registered