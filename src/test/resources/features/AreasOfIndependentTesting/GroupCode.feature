Feature: GroupCode
  Scenario: GroupCode - Alphanumeric$Special characters
    Given I navigate to "registration" page
    And I type First Name "test"
    And I type Last Name "test"
    And I type email "test@test" on "registration" page
    And I type Group Code "12$tes"
    And I type password "1234567" on "registration" page
    And I type Confirm password "1234567"
    And I click Register me button
    Then I verify that "You have been Registered" message appears

    Scenario: GroupCode - Group code field is required
      Given I navigate to "registration" page
      And I type First Name "test"
      And I type Last Name "test"
      And I type email "test@test" on "registration" page
      And I type Group Code ""
      And I type password "1234567" on "registration" page
      And I type Confirm password "1234567"
      And I click Register me button
      Then message "This field is required"
      And I verify that "Registration" page shown

      Scenario: GroupCode - Min 1 character
        Given I navigate to "registration" page
        And I type First Name "test"
        And I type Last Name "test"
        And I type email "test@test" on "registration" page
        And I type Group Code "1"
        And I type password "1234567" on "registration" page
        And I type Confirm password "1234567"
        And I click Register me button
        When I wait for 3 sec
        Then I verify that "You have been Registered" message appears

  Scenario: GroupCode - Max 6 characters
    Given I navigate to "registration" page
    And I type First Name "test"
    And I type Last Name "test"
    And I type email "test@test" on "registration" page
    And I type Group Code "123test$$$"
    And I type password "1234567" on "registration" page
    And I type Confirm password "1234567"
    And I click Register me button
    Then message "Group Code cannot be more than 6 characters"
    When I wait for 3 sec
    And I verify that "Registration" page shown

  Scenario: GroupCode - White spaces are not allowed
    Given I navigate to "registration" page
    And I type First Name "test"
    And I type Last Name "test"
    And I type email "test@test" on "registration" page
    And I type Group Code "123 te"
    And I type password "123456" on "registration" page
    And I type Confirm password "123456"
    And I click Register me button
    Then message "White spaces are not allowed"
    When I wait for 3 sec
    And I verify that "Registration" page shown
