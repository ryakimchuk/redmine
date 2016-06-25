Feature: Change user password

  Scenario: Change user password
    Given I am on Home Page
    When I click Sign in button
    Then I see login form
    When I fill in login form
    And I click Log in button
    Then I should see greeting message
    Given I am on Home Page
    When I am click on My account button
    Then I should see My account page
    And I click on Change password button
    When I fill in change password form
    And I click Apply button
    Then I should see "Password was successfully updated." message

  Scenario: Return to old password
    Given I am on Home Page
    When I click Sign in button
    Then I see login form
    When I fill in login form with new password
    And I click Log in button
    Then I should see greeting message
    Given I am on my Account page
    When I click on Change password button
    And I fill in change password form with old password
    When I click Apply button
    Then I should see "Password was successfully updated." message
