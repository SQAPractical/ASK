# Created by Elena
Feature: firstName

  Scenario: Registration - first Name - latin characters allowed
    Given I open "registration" page
    When I type FirstName "QWErt" on registration page
    And  I type LastName "test" on registration page
    Then I type Email "test@test.com" on registration page
    And  I type Group Code "ABC" on registration page
    Then I type Password "12345" on registration page
    And  I type Confirm Password "12345" on registration page
    Then I click Register Me button
    Then Text "You have been Registered." appears

  Scenario: Registration - First Name - Field required
   Given I open "registration" page
    And  Click on FirstName field
    Then  Click on lastName field
    Then Text "This field is required" appears

  Scenario: Registration - First Name - Max 254 char FN and 1 char LN
    Given I open "registration" page
    Then  I type "hsgdfasgfdgfjdjkajfgdjkfghlakdhfkdhfkdfhikdshfkladksdsfgdfgfhgfighksfhgkfhgkjfhgjkdfhgkjdfhgkdfghfkghdfkghfkdghfjkghfjkdghjkfhgjkfhgjkfhgjkfhdgjkfhgjkhdfjkghjkfghdfjkhgjkfh giuf ghr hgiruhgif hgiufh gkjhkash. shfjkshfdjkshfdjksfhjsdfhjksdfhdjksfhdsfhjfvd" in firstName field,"a" in lastName,"li@li.com" in mail field,"ABC" in groupCod field,"12345" in password field, "12345" in confirm password field
     And  I click Register Me button
    Then  Text "Should contain only latin characters" appears


  Scenario: Registration - First Name - 255 char FN and 1 char LN
    Given I open "registration" page
    Then I type "hsgdfasgfdgfjdjkajfgdjkfghlakdhfkdhfkdfhikdshfkladksdsfgdfgfhgfighksfhgkfhgkjfhgjkdfhgkjdfhgkdfghfkghdfkghfkdghfjkghfjkdghjkfhgjkfhgjkfhgjkfhdgjkfhgjkhdfjkghjkfghdfjkhgjkfh giuf ghr hgiruhgif hgiufh gkjhkash. shfjkshfdjkshfdjksfhjsdfhjksdfhdjksfhdsfhjfvvv" in firstName field,"a" in lastName,"li@li.com" in mail field,"ABC" in groupCod field,"12345" in password field, "12345" in confirm password field
    And I click Register Me button
    Then Text "Should contain only latin characters" appears

  Scenario: Registration - First Name - 254 char FN and 2 char LN
    Given I open "registration" page
    Then I type "hsgdfasgfdgfjdjkajfgdjkfghlakdhfkdhfkdfhikdshfkladksdsfgdfgfhgfighksfhgkfhgkjfhgjkdfhgkjdfhgkdfghfkghdfkghfkdghfjkghfjkdghjkfhgjkfhgjkfhgjkfhdgjkfhgjkhdfjkghjkfghdfjkhgjkfh giuf ghr hgiruhgif hgiufh gkjhkash. shfjkshfdjkshfdjksfhjsdfhjksdfhdjksfhdsfhjfvvv" in firstName field,"li" in lastName,"li@li.com" in mail field,"ABC" in groupCod field,"12345" in password field, "12345" in confirm password field
    And I click Register Me button
    Then Text "Should contain only latin characters" appears

  Scenario: Registration - First Name - 1 character in the field
    Given I open "registration" page
    Then I type in "I" in firstName field,"a" in lastName,"li@li.com" in mail field,"ABC" in groupCod field,"12345" in password field, "12345" in confirm password field
    And I click Register Me button
    Then Text "You have been Registered." appears

  Scenario: Registration - First Name - White spaces are not allowed
    Given I open "registration" page
    Then  I type "White space" in firstName field
    And  Click on lastName field
    Then Text "Should contain only latin characters" appears


  Scenario: Registration - First Name - White space BEFORE First Name
    Given I open "registration" page
    Then  I type " qwerty" in firstName field
    And  Click on lastName field
    Then Text "Should contain only latin characters" appears


   Scenario: Registration - First Name - White space AFTER First Name
     Given I open "registration" page
     Then  I type "qwerty " in firstName field
     And  Click on lastName field
     Then Text "Should contain only latin characters" appears






















