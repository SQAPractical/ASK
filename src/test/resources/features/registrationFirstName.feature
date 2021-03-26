Feature: Registration - First Name
  Scenario: Registration - First name - Latin characters
    When I navigate to registration page
    And I type first name "Ivan"
    And I type last name "Test"
    And I type email "2mounir.tijan@starveyourego.com"
    And I type group code "QQQ"
    And I type password "12345"
    And I confirm password "12345"
    And I click Register me button
    Then Text "You have been Registered." appears

  Scenario: Registration - First name - Field is required
    When I navigate to registration page
    And I click on first name field
    And I click on last name field
    Then Text "This field is required" appears

  Scenario: Registration - First name - Max 100 char
    When I navigate to registration page
    And I type first name "IvanghjdhdhdkkkjhhgbnfndjfkghfjjfnjgjfkkdhgdsgjkdhhjksdkjhdsfhgfhsdGfghgfsjsjkdggfdsjjshsdfkdghjyerw"
    And I type last name "Test"
    And I type email "2mounir.tijan@starveyourego.com"
    And I type group code "QQQ"
    And I type password "12345"
    And I confirm password "12345"
    And I click Register me button
    Then Text "You have been Registered." appears

  Scenario: Registration - First name - 101 chars are not allowed
    When I navigate to registration page
    And I type first name "IvanghjdhdhdkkkjhhgbnfndjfkghfjjfnjgjfkkdhgdsgjkdhhjksdkjhdsfhgfhsdGfghgfsjsjkdggfdsjjshsdfkdghjyerwg"
    And I type last name "Test"
    And I type email "2mounir.tijan@starveyourego.com"
    And I type group code "QQQ"
    And I type password "12345"
    And I confirm password "12345"
    And I click Register me button
    Then Text "Too long. Should be no more than 100 characters" appears

  Scenario: Registration - First name - Min 1 char
    When I navigate to registration page
    And I type first name "a"
    And I type last name "Test"
    And I type email "2mounir.tijan@starveyourego.com"
    And I type group code "QQQ"
    And I type password "12345"
    And I confirm password "12345"
    And I click Register me button
    Then Text "You have been Registered." appears

  Scenario: Registration - First name - Whitespaces are not allowed
    When I navigate to registration page
    And I type first name "Ivan ivan"
    And I click on last name field
    Then Text "Whitespaces are not allowed" appears
