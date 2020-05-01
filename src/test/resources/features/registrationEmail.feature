Feature: Registration with Email

  Scenario Outline: Register with Email
    Given I open registration page
    When I type First Name <arg0>
    And I type Last Name <arg01>
    And I type Email <arg02>
    And I type group <arg03>
    And I type registration password <arg04>
    And I type confirm password <arg04>
    And I click Register Me button
    Then I wait some minutes
    Then message <arg05> will be appeared
    Examples:
      | arg0   | arg01  | arg02                  | arg03  | arg04   | arg05                       |
#      1. Verify if user can create account with Alphanumeric & Special characters in Email
      | "Fir1" | "Las1" | "Exam111*##@gmail.com" | "T001" | "12345" | "You have been Registered." |
#      2. Verify User cannot create account without Email.
      | "Fir1" | "Las1" |   ""                   | "T001" | "12345" | "This field is required" |
#      3. Verify the User is able to create account with maximum number of characters in the given format in Email Field.
      | "Fir1" | "Las1" | "abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijkq@abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijk.abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijk" | "T001" | "12345" | "You have been Registered." |
#      4. Verify the user is not able to create account with maximum+1 characters in Email.
      | "Fir1" | "Las1" | "abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijkq@abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijk.abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijkQ" | "T001" | "12345" | "Should be a valid email address" |
#       5. Verify user will not be able to create without special characters('@','.') in Email.
      | "Fir1" | "Las1" | "sample" | "T001" | "12345" | "Should be a valid email address" |
#       6. Verify user is not able to create account with white spaces in Email.
      | "Fir1" | "Las1" | "samp le@gmail.com" | "T001" | "12345" | "Should be a valid email address" |
#        7. Verify user is not able to create the account without the last part of the domain name in Email.
      | "Fir1" | "Las1" | "sample@gmail" | "T001" | "12345" | "Should be a valid email address" |