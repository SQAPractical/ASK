Feature: Registration - Group Code
  
  Scenario: Registration - Group Code - Alphanumeric and sp char
    When I navigate to registration option
    And I type first n "John"
    And I type last na "Smith"
    And I type emai "test1@gmail.com"
    And I type group c "qwe@1"
    And I type pass "12345"
    And I type confirm pass "12345"
    And I click Register Me button
    Then Message "You have been Registered." displays

  Scenario: Registration - Group Code - Group code field required
    When I navigate to registration option
    And I type first n "John"
    And I type last na "Smith"
    And I type emai "test1@gmail.com"
    And I type group c ""
    And I type pass "12345"
    And I type confirm pass "12345"
    And I click Register Me button
    Then Message "This field is required" displays

  Scenario: Registration - Group Code - Min 1 characters
    When I navigate to registration option
    And I type first n "John"
    And I type last na "Smith"
    And I type emai "test1@gmail.com"
    And I type group c "1"
    And I type pass "12345"
    And I type confirm pass "12345"
    And I click Register Me button
    Then Message "You have been Registered." displays

  Scenario: Registration - Group Code - Max 6 characters
    When I navigate to registration option
    And I type first n "John"
    And I type last na "Smith"
    And I type emai "test1@gmail.com"
    And I type group c "qwe@12"
    And I type pass "12345"
    And I type confirm pass "12345"
    And I click Register Me button
    Then Message "You have been Registered." displays

  Scenario: Registration - Group Code - Max +1 character
    When I navigate to registration option
    And I type first n "John"
    And I type last na "Smith"
    And I type emai "test1@gmail.com"
    And I type group c "1234567"
    And I type pass "12345"
    And I type confirm pass "12345"
    And I click Register Me button
    Then Message "Too long. Should be no more than 6 characters" displays

  Scenario: Registration - Group Code - Whitespaces are not allowed - In Between spaces
    When I navigate to registration option
    And I type first n "John"
    And I type last na "Smith"
    And I type emai "test1@gmail.com"
    And I type group c "123 56"
    And I type pass "12345"
    And I type confirm pass "12345"
    And I click Register Me button
    Then Message "Whitespaces are not allowed" displays

  Scenario: Registration - Group Code - Whitespaces are not allowed - Leading spaces
    When I navigate to registration option
    And I type first n "John"
    And I type last na "Smith"
    And I type emai "test1@gmail.com"
    And I type group c "  3456"
    And I type pass "12345"
    And I type confirm pass "12345"
    And I click Register Me button
    Then Message "Whitespaces are not allowed" displays

    Scenario: Registration - Group Code - Whitespaces are not allowed - Trailing spaces
    When I navigate to registration option
    And I type first n "John"
    And I type last na "Smith"
    And I type emai "test@gmail.com"
    And I type group c "1234  "
    And I type pass "12345"
    And I type confirm pass "12345"
    And I click Register Me button
    Then Message "Whitespaces are not allowed" displays