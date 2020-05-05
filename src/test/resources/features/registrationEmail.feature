Feature: Registration with Email

  Scenario Outline: Register with Email
    Given I open registration page
    When I type First Name <FirstName>
    And I type Last Name <LastName>
    And I type Email <Email>
    And I type group <Group>
    And I type registration password <Pass>
    And I type confirm password <ConfirmPass>
    And I click Register Me button
    Then I wait some minutes
    Then message <Message> will be appeared
    Examples:
      | FirstName   | LastName  | Email                  | Group  | Pass   | ConfirmPass                       |Message|
#      1. Verify if user can create account with Alphanumeric & Special characters in Email
      | "Fir1" | "Las1" | "Exam111*##@gmail.com" | "T001" | "12345" | "12345" | "You have been Registered." |
#      2. Verify User cannot create account without Email.
      | "Fir1" | "Las1" |   ""                   | "T001" | "12345" |"12345"| "This field is required" |
#      3. Verify the user is not able to create account with maximum+1 characters in Email.
      | "Fir1" | "Las1" | "abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijkq@abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijk.abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijkQ" | "T001" | "12345" |"12345"| "Should be a valid email address" |
#       4. Verify user will not be able to create without special characters('@','.') in Email.
      | "Fir1" | "Las1" | "sample" | "T001" | "12345"|"12345" | "Should be a valid email address" |
#       5. Verify user is not able to create account with white spaces in Email.
      | "Fir1" | "Las1" | "samp le@gmail.com" | "T001" | "12345" |"12345"| "Should be a valid email address" |
#        6. Verify user is not able to create the account without the last part of the domain name in Email.
      | "Fir1" | "Las1" | "sample@gmail" | "T001" | "12345"      |"12345"| "Should be a valid email address" |

  Scenario: Able to create account with maximun characters in Email
    Given I open login page
     When I click on Register Now button
    When I type First Name "FirstN"
    And I type Last Name "LastN"
    And I type Email "abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijk4@abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghij2.abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghij2"
    And I type group "G1"
    And I type registration password "123456"
    And I type confirm password "123456"
    And I click Register Me button
    Then I wait some minutes
    Then message "You have been Registered." will be appeared
    When I click on Back to Login button
    When I type email "vctv1023@gmail.com"
    And I type password "12345"
    And I click Sign in button
    Then I wait some minutes
    When I click on "User's Management" on the left menu
    Then I wait some minutes
    When I click on "Students" tab
    Then I wait some minutes
    When I click on student that I have just created
    Then I wait some minutes
    And I click on Option button
    Then I wait some minutes
    When I click on Delete User
    Then I wait some minutes
    And I wait some minutes
    And confirmation popup appears
    When I click on "Delete" on "Confirmation" popup
    Then I wait some minutes
    When I click on Log Out button
    Then I wait some minutes



