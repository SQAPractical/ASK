Feature:Registration - Last name
@Mikhail
  Scenario Outline: Registration Last name
    Given I navigate to registration page
    And I type first name <Fname>
    And I type last name <Lname>
    And I type group code <Group>
    And I type email <email>
    And I type password <password>
    And I confirm password <confirmPass>
    And I click <buttonName> button
    Then message <message> appears
    Examples:
      | Fname  | Lname | Group  | email            | password | confirmPass | buttonName    | message                                           |
      | "test" | "abc123!@$" | "test" | "test@test.test" | "12345"  | "12345"     | "Register Me" | "You have been Registered." |
      | "test" | "" | "test" | "test@test.test" | "12345"  | "12345"     | "Register Me" | "This field is required" |
      | "test" | "fgfdgdsgssdgfdgsgfdgsgfdgdgfdgfdgfgfgfgfdgfdgfgfdgTranslationfgfdgdsgssdgfdgsgfdgsgfdgdgfdgfdgfgfgfgfdgfdgfgfdgTranslationfgfdgdsgssdgfdgsgfdgsgfdgdgfdgfdgfgfgfgfdgfdgfgfdgTranslationfgfdgdsgssdgfdgsgfdgsgfdgdgfdgfdgfgfgfgfdgfdgfgfdgTranslationfgfdgdsgss" | "test" | "test@test.test" | "12345"  | "12345"     | "Register Me" | "You have been Registered." |
      | "test" | "1fgfdgdsgssdgfdgsgfdgsgfdgdgfdgfdgfgfgfgfdgfdgfgfdgTranslationfgfdgdsgssdgfdgsgfdgsgfdgdgfdgfdgfgfgfgfdgfdgfgfdgTranslationfgfdgdsgssdgfdgsgfdgsgfdgdgfdgfdgfgfgfgfdgfdgfgfdgTranslationfgfdgdsgssdgfdgsgfdgsgfdgdgfdgfdgfgfgfgfdgfdgfgfdgTranslationfgfdgdsgss" | "test" | "test@test.test" | "12345"  | "12345"     | "Register Me" | "Too long. Should be no more than 254 characters" |
      | "test" | "1"    | "test" | "test@test.test" | "12345"  | "12345"     | "Register Me" | "You have been Registered." |
      | "test" | "  "    | "test" | "test@test.test" | "12345"  | "12345"     | "Register Me" | "Whitespaces are not allowed" |


Scenario: Single Choice Question
  Given I navigate to registration page







