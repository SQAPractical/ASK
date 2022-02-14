Feature: Registration - Password/Confirm password
  Scenario: Registration - Password/Confirm password" Alphanumeric and special characters
    When I navigate to registration page
    And I type first name "Abcdef"
    And I type last name "Bcdefg"
    And I type email "test@gmail.com"
    And I type group code "1234"
    And I type password "ask!#$%789"
    And I type confirmPassword "ask!#$%789"
    And I click Register Me button
    Then message "You have been Registered." appears

  Scenario: Registration - Password/Confirm password - Password field is required - cannot be empty
    When I navigate to registration page
    And I type first name "Abcdef"
    And I type last name "Bcdefg"
    And I type email "test@gmail.com"
    And I type group code "1234"
    And I type password ""
    And I type confirmPassword "ask!#$%789"
    And I click Register Me button
    Then message "This field is required" appears

  Scenario: Registration - Password/Confirm password Minimum (5) characters
    When I navigate to registration page
    And I type first name "Abcdef"
    And I type last name "Bcdefg"
    And I type email "test@gmail.com"
    And I type group code "1234"
    And I type password "as!%8"
    And I type confirmPassword "as!%8"
    And I click Register Me button
    Then message "You have been Registered." appears

  Scenario: Registration - Password/Confirm password 4 Charaters
    When I navigate to registration page
    And I type first name "Abcdef"
    And I type last name "Bcdefg"
    And I type email "test@gmail.com"
    And I type group code "1234"
    And I type password "as!8"
    And I type confirmPassword "as!8"
    And I click Register Me button
    Then message "Too short. Should be at least 5 characters" appears

  Scenario: Registration - Password/Confirm password 32 Characters
    When I navigate to registration page
    And I type first name "Abcdef"
    And I type last name "Bcdefg"
    And I type email "test@gmail.com"
    And I type group code "1234"
    And I type password "aaaaaaaaaaaaaaaaaaaa5555555555!!"
    And I type confirmPassword "aaaaaaaaaaaaaaaaaaaa5555555555!!"
    And I click Register Me button
    Then message "You have been Registered." appears

  Scenario: AJ-213 Registration - Password/Confirm password Maximum 33 characters
    When I navigate to registration page
    And I type first name "Abcdef"
    And I type last name "Bcdefg"
    And I type email "test@gmail.com"
    And I type group code "1234"
    And I type password "aaaaaaaaaaaaaaaaaaaa5555555555!!!"
    And I type confirmPassword "aaaaaaaaaaaaaaaaaaaa5555555555!!!"
    And I click Register Me button
    Then message "Too long." appears

  Scenario: Registration - Password/Confirm password - Leading spaces aren't allowed
    When I navigate to registration page
    And I type first name "Abcdef"
    And I type last name "Bcdefg"
    And I type email "test@gmail.com"
    And I type group code "1234"
    And I type password " ask!#$%789"
    And I type confirmPassword " ask!#$%789"
    And I click Register Me button
    Then message "Whitespaces are not allowed" appears

  Scenario: Registration - Password/Confirm password Spaces are not allowed in the middle of the password
    When I navigate to registration page
    And I type first name "Abcdef"
    And I type last name "Bcdefg"
    And I type email "test@gmail.com"
    And I type group code "1234"
    And I type password "ask!#$% 789"
    And I type confirmPassword "ask!#$% 789"
    And I click Register Me button
    Then message "Whitespaces are not allowed" appears

  Scenario: Registration - Password/Confirm password Trailing spaces in password
    When I navigate to registration page
    And I type first name "Abcdef"
    And I type last name "Bcdefg"
    And I type email "test@gmail.com"
    And I type group code "1234"
    And I type password "ask!#$%789 "
    And I type confirmPassword "ask!#$%789 "
    And I click Register Me button
    Then message "Whitespaces are not allowed" appears

  Scenario: Registration - Password/Confirm password - Password must match Confirm Password
    When I navigate to registration page
    And I type first name "Abcdef"
    And I type last name "Bcdefg"
    And I type email "test@gmail.com"
    And I type group code "1234"
    And I type password "ask!#$%789"
    And I type confirmPassword "ask!#$%78"
    And I click Register Me button
    Then message "Entered passwords should match" appears

  Scenario: AJ-322 (FAIL) Registration - Password/Confirm password - Password must match Confirm password after changes
    When I navigate to registration page
    And I type first name "Abcdef"
    And I type last name "Bcdefg"
    And I type email "test@gmail.com"
    And I type group code "1234"
    And I type password "ask!#$%789"
    And I type confirmPassword "ask!#$%789"
    And I type password "ttt!#$%782"
    And I click Register Me button
    Then message "Entered passwords should match" appears