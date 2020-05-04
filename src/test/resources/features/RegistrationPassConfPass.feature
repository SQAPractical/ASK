Feature:
  Scenario Outline: verify password and confirm password
    Given I open login page
    When I click on Register Now button
    Then element with "Environment: STAGING" present
    And I type firstName <FirstName>
    And I type LastName <LastName>
    And I type  email <Email>
    And I type groupcode <GroupCode>
    And I type  registration password <Password>
    And I type confirm password <ConfirmPassword>
    And I click on Register Me button
    Then text <text> appears
    Examples:
      | FirstName | LastName | Email                 | GroupCode | Password  | ConfirmPassword | text                        |
      |"Rama"     |"Devalla" | "rfdgfjhjd@smdb.ckjf" | "t2"      | "12345"   | "12345"         | "You have been Registered." |
      |"Rama"     |"Devalla" | "rfgdgfjd@smdb.ckjf"  | "t2"      | "123456"  | "123456"        | "You have been Registered." |
      |"Rama"     |"Devalla" | "rfdgfj67d@smdb.ckjf" | "t2"      | "1234"    | "1234"          | "Too short. Should be at least 5 characters" |
      |"Rama"     |"Devalla" | "rfdgfjd@smdb.ckjf"   | "t2"      | ""        | ""               | "This field is required" |
      |"Rama"     |"Devalla" | "rfdgfjdr@smdb.ckjf"   | "t2"      | "1234567890123456789012345678901"   | "1234567890123456789012345678901"         | "You have been Registered." |
      |"Rama"     |"Devalla" | "rfdgfjdh@smdb.ckjf"   | "t2"      | "12345678901234567890123456789012"   | "12345678901234567890123456789012"         | "You have been Registered." |
      |"Rama"     |"Devalla" | "rfdgfjd@smdb.ckjf"   | "t2"      | "123456789012345678901234567890123"   | "123456789012345678901234567890123"         | "Too long. Should be 32 characters only" |
      |"Rama"     |"Devalla" | "rfdgfjd@smdb.ckjf"   | "t2"      | "1234567"   | "12345"         | "Entered passwords should match" |
      |"Rama"     |"Devalla" | "rfdgfjd@smdb.ckjf"   | "t2"      | "123Abc@"   | "123aBC$"         | "Entered passwords should match" |
      |"Rama"     |"Devalla" | "rfdgfjd@smdb.ckjf"   | "t2"      | "123Abc@"   | ""         | "This field is required" |
      |"Rama"     |"Devalla" | "rfdgfjd@smdb.ckjf"   | "t2"      | "123 Abc@"   | "123 Abc@"        | "Whitespaces are not allowed" |





