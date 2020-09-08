Feature: Registration email

  Background: Open registration page
    Given I open "registration" page

  Scenario Outline: Registration-Email
    When I type first name "Portnov"
    And I type last name "Student"
    And I type email <email> on registration page
    And I type group code "1234"
    And I type password "Student123" on registration page
    And I type confirm password "Student123"
    And I click register me button
    Then Text <text> appears
    Examples:
      | email                                                                                                                                                                                               | text                              |
      | "portnov01@1234.com"                                                                                                                                                                                | "You have been Registered."       |
      | ""                                                                                                                                                                                                  | "This field is required"          |
      | "eesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttest@testtesttesttesttesttesttesttesttesttesttesttesttesttesttesttes.testtesttesttesttesttesttesttesttesttesttesttesttesttesttesttes"  | "You have been Registered."       |
      | "ttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttest@testtesttesttesttesttesttesttesttesttesttesttesttesttesttesttes.testtesttesttesttesttesttesttesttesttesttesttesttesttesttesttes" | "Should be a valid email address" |
      | "t@t.t"                                                                                                                                                                                             | "You have been Registered."       |
      | "test"                                                                                                                                                                                              | "Should be a valid email address" |
      | "test@test"                                                                                                                                                                                         | "Should be a valid email address" |
      | "test   @test.com"                                                                                                                                                                                  | "Should be a valid email address" |

    #There is a real bug in line 23
    #You should change email address in line 19 everytime before running the code.
    # If you rerun with same email in line 19, error message is shown in registration page like
    # "Uniqueness violation error. Record already exists"
