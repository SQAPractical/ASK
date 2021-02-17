@fullRegression
Feature: Registration - Email
  Scenario: Email - Alphanumeric Characters and @ special char
    Given I navigate to registration page
    And I type first name "ot"
    And I type last name "ggg"
    And I type email "nah78belh@ci87cawow.guru"
    And I type group code "ttt"
    And I type password "abcde"
    And I confirm password "abcde"
    And I click Register Me
    Then Message "You have been Registered." Appears

  Scenario: Email - Alphanumeric Characters and @ including other special char
    Given I navigate to registration page
    And I type first name "ot"
    And I type last name "ggg"
    And I type email "nahmed%belh@cing&cawow.guru"
    And I type group code "ttt"
    And I type password "abcde"
    And I confirm password "abcde"
    And I click Register Me
    Then Message "Should be a valid email address" Appears

  Scenario: Email - field required
    Given I navigate to registration page
    And I type first name "ot"
    And I type last name "ggg"
    And I type group code "ttt"
    And I type password "abcde"
    And I confirm password "abcde"
    And I click Register Me
    Then Message "This field is required" Appears

  Scenario: Email - 64 char in front, 63 in middle, 63 in end
    Given I navigate to registration page
    And I type first name "ot"
    And I type last name "ggg"
    And I type email "bgdfkjbgdskjlbgdmmmjlbgdsjkbgklskjbgskjbgjafdngdskjjfdkbgdskljbg@bgdfkjbgdskjlbgdfskjlbgdsjkbgklskjbgskjbgjafdngdskjjfdkbgdskljb.bgdfkjbgdskjlbgdfskjlbgdsjkbgklskjbgskjbgjafdngdskjjfdkbgdskljb"
    And I type group code "ttt"
    And I type password "abcde"
    And I confirm password "abcde"
    And I click Register Me
    Then Message "You have been Registered." Appears

  Scenario: Email - 65 char in front, 63 in middle, 63 in end
    Given I navigate to registration page
    And I type first name "ot"
    And I type last name "ggg"
    And I type email "bgldfkjbgdskjlbgdfskjlbgdsjkbgklskjbgskjbgjafdngdskjjfdkbgdskljbg@bgdfkjbgdskjlbgdfskjlbgdsjkbgklskjbgskjbgjafdngdskjjfdkbgdskljb.bgdfkjbgdskjlbgdfskjlbgdsjkbgklskjbgskjbgjafdngdskjjfdkbgdskljb"
    And I type group code "ttt"
    And I type password "abcde"
    And I confirm password "abcde"
    And I click Register Me
    Then Message "Should be a valid email address" Appears

  Scenario: Email - 64 char in front, 64 in middle, 63 in end
    Given I navigate to registration page
    And I type first name "ot"
    And I type last name "ggg"
    And I type email "bgdfkjbgdskjlbgdfskjlbgdsjkbgklskjbgskjbgjafdngdskjjfdkbgdskljbg@bgdfkjbgdsgkjlbgdfskjlbgdsjkbgklskjbgskjbgjafdngdskjjfdkbgdskljb.bgdfkjbgdskjlbgdfskjlbgdsjkbgklskjbgskjbgjafdngdskjjfdkbgdskljb"
    And I type group code "ttt"
    And I type password "abcde"
    And I confirm password "abcde"
    And I click Register Me
    Then Message "Should be a valid email address" Appears

  Scenario: Email - 64 char in front, 63 in middle, 64 in end
    Given I navigate to registration page
    And I type first name "ot"
    And I type last name "ggg"
    And I type email "bgdfkjbgdskjlbgdfskjlbgdsjkbgklskjbgskjbgjafdngdskjjfdkbgdskljbg@bgdfkjbgdskjlbgdfskjlbgdsjkbgklskjbgskjbgjafdngdskjjfdkbgdskljb.bgdfkjbgdskjlbgdfskjlbgdsjkbgklskjbgskjbgjafdngdskjjfdkfbgdskljb"
    And I type group code "ttt"
    And I type password "abcde"
    And I confirm password "abcde"
    And I click Register Me
    Then Message "Should be a valid email address" Appears

  Scenario: Email - No White Spaces Before Email
    Given I navigate to registration page
    And I type first name "ot"
    And I type last name "ggg"
    And I type email " nahbelh@og.com"
    And I type group code "ttt"
    And I type password "abcde"
    And I confirm password "abcde"
    And I click Register Me
    Then Message "Should be a valid email address" Appears

  Scenario: Email - No White Spaces Before Email
    Given I navigate to registration page
    And I type first name "ot"
    And I type last name "ggg"
    And I type email " nah belh@og.com"
    And I type group code "ttt"
    And I type password "abcde"
    And I confirm password "abcde"
    And I click Register Me
    Then Message "Should be a valid email address" Appears

  Scenario: Email - No White Spaces Before Email
    Given I navigate to registration page
    And I type first name "ot"
    And I type last name "ggg"
    And I type email "nahbelh @og.com"
    And I type group code "ttt"
    And I type password "abcde"
    And I confirm password "abcde"
    And I click Register Me
    Then Message "Should be a valid email address" Appears