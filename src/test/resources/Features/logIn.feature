Feature: Sign In
  Scenario: AC29-356 Sign in - Email/Password - Valid Email/Valid Password
    When I open "login" page
    And I type email "teacher3@gmail.com"
    And I type password "12345Abc"
    And I click Sign In button
    Then  text "Log Out" appears

    Scenario: AC29-460 Sign In - Email/Password - Valid Email/Invalid Password
      When I open "login" page
      And I type email "teacher3@gmail.com"
      And I type password "12345Abc!"
      And I click Sign In button
      Then  text "Authentication failed. User not found or password does not match" appears

      Scenario: AC29-461 Sign In - Email/Password - Invalid Email/Valid Password
        When I open "login" page
        And I type email "teacher33@gmail.com"
        And I type password "12345Abc"
        And I click Sign In button
        Then  text "Authentication failed. User not found or password does not match" appears


        Scenario: AC29-305 Sign In - Email - Field is required
          When I open "login" page
          And I type email ""
          And I type password "12345Abc"
          And I click Sign In button
          Then text "This field is required" appears

          Scenario: AC29-343 Sign In - Password - Password field is required
            When I open "login" page
            And I type email "teacher3@gmail.com"
            And I type password ""
            And I click Sign In button
            Then text "This field is required" appears

            Scenario:AC29-311 Sign In - Email - White spaces are not allowed before @ character
              When I open "login" page
              And I type email "teacher3 @gmail.com"
              And I type password "12345Abc"
              And I click Sign In button
              Then text "Should be a valid email address" appears

              Scenario: AC29-312 Sign In - Email - White spaces are not allowed after @ character
                When I open "login" page
                And I type email "teacher3@ gmail.com"
                And I type password "12345Abc"
                And I click Sign In button
                Then text "Should be a valid email address" appears

                Scenario: AC29-313 Sign In - Email - White spaces are not allowed after (.) character
                  When I open "login" page
                  And I type email "teacher3@gmail. com"
                  And I type password "12345Abc"
                  And I click Sign In button
                  Then text "Should be a valid email address" appears

                  Scenario: AC29-354 Sign In - Password - White spaces are not allowed
                    When I open "login" page
                    And I type email "teacher3@gmail.com"
                    And I type password "12345Abc "
                    And I click Sign In button
                    Then text "Whitespaces are not allowed" appears

                    Scenario: AC29-462 Sign In - Password - Masking password
                    When I open "login" page
                    And I type password "12345Abc"
                    Then Password displays in bullets, copy, cut disable

