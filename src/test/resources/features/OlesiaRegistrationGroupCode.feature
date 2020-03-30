Feature: Registration - Fill out Group code
  @Acceptance
  Scenario Outline: Registration - Group Code
    Given I navigate to page for registration
    When I type <dataType0> into First name
    And I type <dataType1> into Last name
    And type <dataType3> into Group code
    And I type <dataType> into Email
    And I type password <password>
    And I type Confirm password <ConfirmPassword> in registration form
    And I click <buttonName> button
    Then I wait for message <xpath1> displayed
    Examples:
      | dataType0 | dataType1 | dataType3 | dataType | password | ConfirmPassword | buttonName    | xpath1                    |
      | "a"       | "b"       | "Co12!#"  | "q@q.q"  | "12345"  | "12345"         | "Register Me" | "//*[contains(text(),'You have been Registered')]" |
      | "a"       | "b"       | "C"       | "q@q.q"  | "12345"  | "12345"         | "Register Me" | "//*[contains(text(),'You have been Registered')]" |
      | "a"       | "b"       | "123456"  | "q@q.q"  | "12345"  | "12345"         | "Register Me" | "//*[contains(text(),'You have been Registered')]" |
      | "a"       | "b"       | "1234567" | "q@q.q"  | "12345"  | "12345"         | "Register Me" | "//*[contains(text(),'Should be no more than 6 characters')][@role='alert']" |
      | "a"       | "b"       | ""        | "q@q.q"  | "12345"  | "12345"         | "Register Me" | "//input[@formcontrolname='group']/../../..//*[contains(text(),'This field is required')]" |
      | "a"       | "b"       | " "       | "q@q.q"  | "12345"  | "12345"         | "Register Me" | "//*[contains(text(),'Should be no white space')][@role='alert']" |


