Feature: Settings - Full Name

  Scenario: Settings - Full Name - Alphanumeric and special characters
    When I navigate to login page
    And I type email "teacher3@gmail.com"
    And I type password "12345Abc"
    And I click on Sign In button
    And I click on "Settings" on left menu
    And I click on "Change Your Name" button
    And I type name "ABc1234$%5^ ABc1234$%5^" into New name field
    And I click on "Change" button
    Then I verify that name "ABc1234$%5^ ABc1234$%5^" changed successfully
    And I click on "Change Your Name" button
    And I change name back to default "Olga Wilson"
    And I click on "Change" button
    Then I verify that name "Olga Wilson" changed successfully

  Scenario: Settings - Full name - Required field
    When I navigate to login page
    And I type email "teacher3@gmail.com"
    And I type password "12345Abc"
    And I click on Sign In button
    And I click on "Settings" on left menu
    And I click on "Change Your Name" button on Settings page
    And I remove name from New name field
    And I verify that button "Change" is disabled
    And I see error message "This field is required" displayed

  Scenario: Settings - Full Name - Max 100 characters including at least 1 space between words
    When I navigate to login page
    And I type email "teacher3@gmail.com"
    And I type password "12345Abc"
    And I click on Sign In button
    And I click on "Settings" on left menu
    And I click on "Change Your Name" button
    And I type name "gLmezJJMqLNXflDGxcpsRICRHCfMpxLwypn ZDcbePqolYYeeyfKbhafAgItzNfFchEDYkvKkzLWsEPFxsKaNsiZlKAAqeWgpyej" into New name field
    And I click on "Change" button
    Then I verify that name "gLmezJJMqLNXflDGxcpsRICRHCfMpxLwypn ZDcbePqolYYeeyfKbhafAgItzNfFchEDYkvKkzLWsEPFxsKaNsiZlKAAqeWgpyej" changed successfully
    And I click on "Change Your Name" button
    And I change name back to default "Olga Wilson"
    And I click on "Change" button
    Then I verify that name "Olga Wilson" changed successfully

  Scenario: Settings - Full Name Min 2 characters plus at least 1 space between words
    When I navigate to login page
    And I type email "teacher3@gmail.com"
    And I type password "12345Abc"
    And I click on Sign In button
    And I click on "Settings" on left menu
    And I click on "Change Your Name" button
    And I type name "v b" into New name field
    And I click on "Change" button
    Then I verify that name "v b" changed successfully
    And I click on "Change Your Name" button
    And I change name back to default "Olga Wilson"
    And I click on "Change" button
    Then I verify that name "Olga Wilson" changed successfully

    Scenario: Settings - Full Name - Trailing and leading spaces are not allowed
      When I navigate to login page
      And I type email "teacher3@gmail.com"
      And I type password "12345Abc"
      And I click on Sign In button
      And I click on "Settings" on left menu
      And I click on "Change Your Name" button
      And I type name " Wilson Wilson" into New name field
      And I click on "Change" button
      And I verify that name "Wilson Wilson" saved without leading spaces
      And I click on "Change Your Name" button
      And I type name "Wilson Wilson " into New name field
      And I click on "Change" button
      And I verify that name "Wilson Wilson" saved without trailing spaces
      And I click on "Change Your Name" button
      And I change name back to default "Olga Wilson"
      And I click on "Change" button
      Then I verify that name "Olga Wilson" changed successfully

    Scenario: Settings - Full Name - Max 100 characters+1
      When I navigate to login page
      And I type email "teacher3@gmail.com"
      And I type password "12345Abc"
      And I click on Sign In button
      And I click on "Settings" on left menu
      And I click on "Change Your Name" button
      And I type name "gLmezJJMqLNXflDGxcpsRICRHCfMpxLwypn ZDcbePqolYYeeyfKbhafAgItzNfFchEDYkvKkzLWsEPFxsKaNsiZlKAAqeWgpyej1" into New name field
      And I verify that button "Change" is disabled
      And I see error message "Too long. Should be no more than 100 characters" displayed




