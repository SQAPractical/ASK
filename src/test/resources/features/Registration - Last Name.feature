Feature: Registration - Last Name

  Scenario: Registration - Last Name - Alphanumeric and special characters
    When I navigate to registration page
    And I type first name "Yuliia"
    And I type last name "Hap12@!?"
    And I type email "Yulia.hodus+8@gmail.com"
    And I type group code "123"
    And I type password "Abc123"
    And I type confirm password "Abc123"
    And I click on Register Me button
    Then Message "You have been Registered." appears

  Scenario: Registration - Last Name - Field is required
    When I navigate to registration page
    And I type first name ""
    And I type last name ""
    And I type email "Yulia.hodus+8@gmail.com"
    And I type group code "123"
    And I type password "12345abc"
    And I type confirm password "12345abc"
    And I click on Register Me button
    Then Message "This field is required" appears

  Scenario: Registration - Last Name - Max 98 characters
    When I navigate to registration page
    And I type first name "Yuliia"
    And I type last name "qwerrtutuy12345!@##$%qwerrtutuy12345!@##$%qwerrtutuy12345!@##$%qwerrtutuy12345!@##$%qwerrtutuy12rt"
    And I type email "yulia.hodus+5@gamil.com"
    And I type group code "123"
    And I type password "12345abc"
    And I type confirm password "12345abc"
    And I click on Register Me button
    Then Message "You have been Registered." appears

  Scenario: Registration - Last Name - Max+1 characters
    When I navigate to registration page
    And I type first name "Yuliia"
    And I type last name "qwerrtutuy12345!@##$%qwerrtutuy12345!@##$%qwerrtutuy12345!@##$%qwerrtutuy12345!@##$%qwerrtutuy12rtfhbljdhbvdjhfbv jdf"
    And I type email "yulia.hodus+5@gamil.com"
    And I type group code "123"
    And I type password "12345abc"
    And I type confirm password "12345abc"
    And I click on Register Me button
    Then Message "You have been Registered." appears

  Scenario: Registration - Last Name - Min 1 character
    When I navigate to registration page
    And I type first name "Yuliia"
    And I type last name "H"
    And I type email "Yulia.hodus+8@gmail.com"
    And I type group code "123"
    And I type password "12345abc"
    And I type confirm password "12345abc"
    And I click on Register Me button
    Then Message "You have been Registered." appears

  Scenario: Registration - Last Name - Leading spaces
    When I navigate to registration page
    And I type first name "Yuliia"
    And I type last name "Haponenko "
    And I type email "test@gmail.com"
    And I type group code "123"
    And I type password "12345Abc"
    And I type confirm password "12345Abc"
    And I click on Register Me button
    Then Message "Whitespaces are not allowed" appears

  Scenario: Registration - Last Name - Trailing spaces
    When I navigate to registration page
    And I type first name "Yuliia"
    And I type last name " Haponenko"
    And I type email "test@gmail.com"
    And I type group code "123"
    And I type password "12345Abc"
    And I type confirm password "12345Abc"
    And I click on Register Me button
    Then Message "Whitespaces are not allowed" appears

  Scenario: Registration - Last Name - Spaces between the words
    When I navigate to registration page
    And I type first name "Yuliia"
    And I type last name "Hapo nenko"
    And I type email "test@gmail.com"
    And I type group code "123"
    And I type password "12345Abc"
    And I type confirm password "12345Abc"
    And I click on Register Me button
    Then Message "Whitespaces are not allowed" appears

  Scenario: Registration - Last Name - Registration - Last Name - Tab
    When I navigate to registration page
    And I type first name "Yuliia"
    And I type last name "Haponenko"
    Then I press tab