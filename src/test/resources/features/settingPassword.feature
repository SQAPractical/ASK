Feature: Settings - Password
  Scenario: Settings - Password - Alphanumeric and special characters
    When I navigate to login page
    And I type Email "pburhan40448@filesa.site"
    And I type Password "12345"
    And I click Sign In button
    And I click "Settings" menu item
    And I click on "Change Your Password" button
    And I type Password in the Changing Password window "123abc!@#"
    And I type new Password "123abc!@#"
    And I confirm new Password "123abc!@#"
    And I click on Change button
    And I click "Log Out" menu item
    And I confirm Log Out
    And I type Email "pburhan40448@filesa.site"
    And I type Password "123abc!@#"
    And I click Sign In button
    Then Home page appears
    And I click "Settings" menu item
    And I click on "Change Your Password" button
    And I type Password "123abc!@#"
    And I type new Password "12345"
    And I confirm new Password "12345"
    And I click on Change button

    Scenario: Setting - Password - "Password" field is required
      When I navigate to login page
      And I type Email "pburhan40448@filesa.site"
      And I type Password "12345"
      And I click Sign In button
      And I click "Settings" menu item
      And I click on "Change Your Password" button
      And I type new Password "54321"
      Then Text "This field is required" appears

      Scenario: Settings - Password - "New password" field is required
        When I navigate to login page
        And I type Email "pburhan40448@filesa.site"
        And I type Password "12345"
        And I click Sign In button
        And I click "Settings" menu item
        And I click on "Change Your Password" button
        And I type Password in the Changing Password window "12345"
        And I click on New Password field
        And I confirm new Password "54321"
        Then Text "This field is required" appears

        Scenario: Settings - Password - "Confirmed New password" field is required
          When I navigate to login page
          And I type Email "pburhan40448@filesa.site"
          And I type Password "12345"
          And I click Sign In button
          And I click "Settings" menu item
          And I click on "Change Your Password" button
          And I type Password in the Changing Password window "12345"
          And I type new Password "54321"
          And I click on Confirm Password field
          And I click on Change button
          Then Text "This field is required" appears

          Scenario: Settings - Password - Max length 32 char
            When I navigate to login page
            And I type Email "pburhan40448@filesa.site"
            And I type Password "12345"
            And I click Sign In button
            And I click "Settings" menu item
            And I click on "Change Your Password" button
            And I type Password in the Changing Password window "12345"
            And I type new Password "12345678901234567890123456789012"
            And I confirm new Password "12345678901234567890123456789012"
            And I click on Change button
            And I click "Log Out" menu item
            And I confirm Log Out
            And I type Email "pburhan40448@filesa.site"
            And I type Password "12345678901234567890123456789012"
            And I click Sign In button
            Then Home page appears
            And I click "Settings" menu item
            And I click on "Change Your Password" button
            And I type Password "12345678901234567890123456789012"
            And I type new Password "12345"
            And I confirm new Password "12345"
            And I click on Change button

            Scenario: Settings - Password - Max length +1
              When I navigate to login page
              And I type Email "pburhan40448@filesa.site"
              And I type Password "12345"
              And I click Sign In button
              And I click "Settings" menu item
              And I click on "Change Your Password" button
              And I type Password in the Changing Password window "12345"
              And I type new Password "123456789012345678901234567890123"
              And I click on Confirm Password field
              And I click on Change button
              Then Text "Too long. Should be no more than 32 characters" appears

              Scenario: Settings - Password - Min length 5 char
                When I navigate to login page
                And I type Email "pburhan40448@filesa.site"
                And I type Password "12345"
                And I click Sign In button
                And I click "Settings" menu item
                And I click on "Change Your Password" button
                And I type Password in the Changing Password window "54321"
                And I type new Password "54321"
                And I confirm new Password "54321"
                And I click on Change button
                And I click "Log Out" menu item
                And I confirm Log Out
                And I type Email "pburhan40448@filesa.site"
                And I type Password "54321"
                And I click Sign In button
                Then Home page appears
                And I click "Settings" menu item
                And I click on "Change Your Password" button
                And I type Password "54321"
                And I type new Password "12345"
                And I confirm new Password "12345"
                And I click on Change button

                Scenario: Settings - Password - Min length -1
                  When I navigate to login page
                  And I type Email "pburhan40448@filesa.site"
                  And I type Password "12345"
                  And I click Sign In button
                  And I click "Settings" menu item
                  And I click on "Change Your Password" button
                  And I type Password in the Changing Password window "12345"
                  And I type new Password "1234"
                  And I click on Confirm Password field
                  And I click on Change button
                  Then Text "Too short. Should be at least 5 characters" appears

                  Scenario: Settings - Password - Whitespaces are not allowed
                    When I navigate to login page
                    And I type Email "pburhan40448@filesa.site"
                    And I type Password "12345"
                    And I click Sign In button
                    And I click "Settings" menu item
                    And I click on "Change Your Password" button
                    And I type Password in the Changing Password window "12345"
                    And I type new Password "12 345"
                    And I click on Confirm Password field
                    And I click on Change button
                    Then Text "Whitespaces are not allowed" appears

                    Scenario: Settings - Password -Leading whitespace
                      When I navigate to login page
                      And I type Email "pburhan40448@filesa.site"
                      And I type Password "12345"
                      And I click Sign In button
                      And I click "Settings" menu item
                      And I click on "Change Your Password" button
                      And I type Password in the Changing Password window "12345"
                      And I type new Password " 12345"
                      And I click on Confirm Password field
                      And I click on Change button
                      Then Text "Whitespaces are not allowed" appears




























    







