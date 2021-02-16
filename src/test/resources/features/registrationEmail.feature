Feature: Registration - Email
  Scenario: Email - Alphanumeric Characters and @ special char
    Given I navigate to registration webpage
    And I fill out first name "ot"
    And I fill out last name "ggg"
    And I fill out email "nah78belh@ci87cawow.guru"
    And I fill out group "ttt"
    And I fill out password "abcde"
    And I fill out confirm password "abcde"
    And I click Register Me button
    Then Message "You have been Registered." appears

  Scenario: Email - Alphanumeric Characters and @ including other special char
    Given I navigate to registration webpage
    And I fill out first name "ot"
    And I fill out last name "ggg"
    And I fill out email "nahmed%belh@cing&cawow.guru"
    And I fill out group "ttt"
    And I fill out password "abcde"
    And I fill out confirm password "abcde"
    And I click Register Me button
    Then Message "Should be a valid email address" appears

  Scenario: Email - field required
    Given I navigate to registration webpage
    And I fill out first name "ot"
    And I fill out last name "ggg"
    And I fill out group "ttt"
    And I fill out password "abcde"
    And I fill out confirm password "abcde"
    And I click Register Me button
    Then Message "This field is required" appears

  Scenario: Email - 64 char in front, 63 in middle, 63 in end
    Given I navigate to registration webpage
    And I fill out first name "ot"
    And I fill out last name "ggg"
    And I fill out email "bgdfkjbgdskjlbgdmmmjlbgdsjkbgklskjbgskjbgjafdngdskjjfdkbgdskljbg@bgdfkjbgdskjlbgdfskjlbgdsjkbgklskjbgskjbgjafdngdskjjfdkbgdskljb.bgdfkjbgdskjlbgdfskjlbgdsjkbgklskjbgskjbgjafdngdskjjfdkbgdskljb"
    And I fill out group "ttt"
    And I fill out password "abcde"
    And I fill out confirm password "abcde"
    And I click Register Me button
    Then Message "You have been Registered." appears

  Scenario: Email - 65 char in front, 63 in middle, 63 in end
    Given I navigate to registration webpage
    And I fill out first name "ot"
    And I fill out last name "ggg"
    And I fill out email "bgldfkjbgdskjlbgdfskjlbgdsjkbgklskjbgskjbgjafdngdskjjfdkbgdskljbg@bgdfkjbgdskjlbgdfskjlbgdsjkbgklskjbgskjbgjafdngdskjjfdkbgdskljb.bgdfkjbgdskjlbgdfskjlbgdsjkbgklskjbgskjbgjafdngdskjjfdkbgdskljb"
    And I fill out group "ttt"
    And I fill out password "abcde"
    And I fill out confirm password "abcde"
    And I click Register Me button
    Then Message "Should be a valid email address" appears

  Scenario: Email - 64 char in front, 64 in middle, 63 in end
    Given I navigate to registration webpage
    And I fill out first name "ot"
    And I fill out last name "ggg"
    And I fill out email "bgdfkjbgdskjlbgdfskjlbgdsjkbgklskjbgskjbgjafdngdskjjfdkbgdskljbg@bgdfkjbgdsgkjlbgdfskjlbgdsjkbgklskjbgskjbgjafdngdskjjfdkbgdskljb.bgdfkjbgdskjlbgdfskjlbgdsjkbgklskjbgskjbgjafdngdskjjfdkbgdskljb"
    And I fill out group "ttt"
    And I fill out password "abcde"
    And I fill out confirm password "abcde"
    And I click Register Me button
    Then Message "Should be a valid email address" appears

  Scenario: Email - 64 char in front, 63 in middle, 64 in end
    Given I navigate to registration webpage
    And I fill out first name "ot"
    And I fill out last name "ggg"
    And I fill out email "bgdfkjbgdskjlbgdfskjlbgdsjkbgklskjbgskjbgjafdngdskjjfdkbgdskljbg@bgdfkjbgdskjlbgdfskjlbgdsjkbgklskjbgskjbgjafdngdskjjfdkbgdskljb.bgdfkjbgdskjlbgdfskjlbgdsjkbgklskjbgskjbgjafdngdskjjfdkfbgdskljb"
    And I fill out group "ttt"
    And I fill out password "abcde"
    And I fill out confirm password "abcde"
    And I click Register Me button
    Then Message "Should be a valid email address" appears

  Scenario: Email - No White Spaces Before Email
    Given I navigate to registration webpage
    And I fill out first name "ot"
    And I fill out last name "ggg"
    And I fill out email " nahbelh@og.com"
    And I fill out group "ttt"
    And I fill out password "abcde"
    And I fill out confirm password "abcde"
    And I click Register Me button
    Then Message "Should be a valid email address" appears

  Scenario: Email - No White Spaces Before Email
    Given I navigate to registration webpage
    And I fill out first name "ot"
    And I fill out last name "ggg"
    And I fill out email " nah belh@og.com"
    And I fill out group "ttt"
    And I fill out password "abcde"
    And I fill out confirm password "abcde"
    And I click Register Me button
    Then Message "Should be a valid email address" appears

  Scenario: Email - No White Spaces Before Email
    Given I navigate to registration webpage
    And I fill out first name "ot"
    And I fill out last name "ggg"
    And I fill out email "nahbelh @og.com"
    And I fill out group "ttt"
    And I fill out password "abcde"
    And I fill out confirm password "abcde"
    And I click Register Me button
    Then Message "Should be a valid email address" appears