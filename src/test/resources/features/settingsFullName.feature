@FullRegression
Feature:"Settings - Full Name"
  Scenario:Settings - Full Name: Not allowable characters: Alphanumeric and special characters
    When I navigate to login page
    And I type my email "larysa71@yahoo.com"
    And I type password "P8ssw8rd38!"
    And I click Sign In button
    And I click on "Settings" on left menu
    And I click on Change Your Name button
    And I clear text
    And I type text "Laura1! StarkTeacher"
    And I click on Change button
    Then Text "Laura1! StarkTeacher" appears

  Scenario:Settings - Full Name: Full name field required, can’t be empty
    When I navigate to login page
    And I type my email "larysa71@yahoo.com"
    And I type password "P8ssw8rd38!"
    And I click Sign In button
    And I click on "Settings" on left menu
    And I click on Change Your Name button
    And I clear text
    And I click on Change button
    Then Error Message appears

  Scenario:Settings - Full Name: Max 100 characters including at least 1 space between words
    When I navigate to login page
    And I type my email "larysa71@yahoo.com"
    And I type password "P8ssw8rd38!"
    And I click Sign In button
    And I click on "Settings" on left menu
    And I click on Change Your Name button
    And I clear text
    And I type text "FistName49charachtersaaaaaaaaaaaaaaaaaaaaaaaaa LastName50charactresaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
    And I click on Change button
    Then Text "FistName49charachtersaaaaaaaaaaaaaaaaaaaaaaaaa LastName50charactresaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa" appears

  Scenario:Settings - Full Name: Min 2 characters plus at least 1 space between words
    When I navigate to login page
    And I type my email "larysa71@yahoo.com"
    And I type password "P8ssw8rd38!"
    And I click Sign In button
    And I click on "Settings" on left menu
    And I click on Change Your Name button
    And I clear text
    And I type text "A B"
    And I click on Change button
    Then Text "A B" appears

  #Scenario:Settings - Full Name: 1 Whitespace between words allowed
   # When I navigate to login page
   # And I type my email "larysa71@yahoo.com"
   # And I type password "P8ssw8rd38!"
   # And I click Sign In button
   # And I click on "Settings" on left menu
   # And I click on Change Your Name button
   # And I clear text
   # And I type text "A  B"
   # And I click on Change button
   # Then Error Message appears







  