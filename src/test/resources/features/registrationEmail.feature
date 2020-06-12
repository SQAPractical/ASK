@registration
Feature: Email

  @registration1 @Smoke
    #Verify that email field accepts Alphanumeric & Special characters
  Scenario: Alphanumeric & Special characters
    Given I navigate to "registration" page
    When I type "Mimi" into element with xpath "//input[@placeholder='First Name']"
    And I type "Miss" into element with xpath "//input[@placeholder='Last Name']"
    And I type "olchi_12@gmail.com" into element with xpath "//input[@placeholder='Email']"
    And I type "123" into element with xpath "//input[@placeholder='Group Code']"
    And I type "12345" into element with xpath "//input[@placeholder='Password']"
    And I type "12345" into element with xpath "//input[@placeholder='Confirm Password']"
    And I click on element with xpath "//span[contains(text(),'Register Me')]"
    And I wait for 3 sec
    Then text "You have been Registered." appears

  @registration2 @Smoke
    #Verify that empty field is not allowed
  Scenario: Empty field
    Given I navigate to "registration" page
    When I type "Olchik" into element with xpath "//input[@placeholder='First Name']"
    And I type "Sunny" into element with xpath "//input[@placeholder='Last Name']"
    And I type "" into element with xpath "//input[@placeholder='Email']"
    And I type "123" into element with xpath "//input[@placeholder='Group Code']"
    And I type "12345" into element with xpath "//input[@placeholder='Password']"
    And I type "12345" into element with xpath "//input[@placeholder='Confirm Password']"
    And I click on element with xpath "//span[contains(text(),'Register Me')]"
    Then text "This field is required" appears

    @registration3
      #Verify that email (with Local port with 64 characters on the left of an @ domain on the right with 63 characters followed by (.) with 63 characters in last part of domain) is valid
    Scenario: Valid email
      Given I navigate to "registration" page
      When I type "Summer" into element with xpath "//input[@placeholder='First Name']"
      And I type "Summer" into element with xpath "//input[@placeholder='Last Name']"
      And I type "Test4qqqqqqqqqwwwwwwwwwwrrrrrrrrrrttttttttttyyyyyyyyyyuuuuuuuuuu@Testqqqqqqqqqqwwwwwwwwwwrrrrrrrrrrttttttttttyyyyyyyyyyuuuugmail.comqqqqqqqqqqwwwwwwwwwwrrrrrrrrrrttttttttttyyyyyyyyyyuuuuuu" into element with xpath "//input[@placeholder='Email']"
      And I type "123" into element with xpath "//input[@placeholder='Group Code']"
      And I type "12345" into element with xpath "//input[@placeholder='Password']"
      And I type "12345" into element with xpath "//input[@placeholder='Confirm Password']"
      And I click on element with xpath "//span[contains(text(),'Register Me')]"
      And I wait for 3 sec
      Then text "You have been Registered." appears

      @registration4
        #Verify that Local port doesn`t accept 65 characters on the left of an @ domain
      Scenario: left side of domain
        Given I navigate to "registration" page
        When I type "Summer" into element with xpath "//input[@placeholder='First Name']"
        And I type "Sun" into element with xpath "//input[@placeholder='Last Name']"
        And I type "Test2guuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuhhhhhhhhh@gmail.com" into element with xpath "//input[@placeholder='Email']"
        And I type "123" into element with xpath "//input[@placeholder='Group Code']"
        And I type "12345" into element with xpath "//input[@placeholder='Password']"
        And I type "12345" into element with xpath "//input[@placeholder='Confirm Password']"
        And I click on element with xpath "//span[contains(text(),'Register Me')]"
        Then text "Should be a valid email address" appears

        @registration5
          #Verify that Local port doesn`t accept 64 characters on the right side of domain
        Scenario: the right side of domain
    Given I navigate to "registration" page
    When I type "Sushi" into element with xpath "//input[@placeholder='First Name']"
    And I type "Sunny" into element with xpath "//input[@placeholder='Last Name']"
    And I type "Test13@Test1qqqqqqqqqqwwwwwwwwwwrrrrrrrrrrttttttttttyyyyyyyyyyuuuugmail.comqqqqqqqqqqwwwwwwwwwwrrrrrrrrrrttttttttttyyyyyyyyyyuuuuuu" into element with xpath "//input[@placeholder='Email']"
    And I type "123" into element with xpath "//input[@placeholder='Group Code']"
    And I type "12345" into element with xpath "//input[@placeholder='Password']"
    And I type "12345" into element with xpath "//input[@placeholder='Confirm Password']"
    And I click on element with xpath "//span[contains(text(),'Register Me')]"
    Then text "Should be a valid email address" appears

          @registration6
            #Verify that Local port doesn`t accept 64 characters in the last part of domain
          Scenario: last part of domain
            Given I navigate to "registration" page
            When I type "Sunny" into element with xpath "//input[@placeholder='First Name']"
            And I type "Anya" into element with xpath "//input[@placeholder='Last Name']"
            And I type "Test@gmail.comqqqqqqqqqqwwwwwwwwwwrrrrrrrrrrttttttttttyyyyyyyyyyuuuuuu1qqqq" into element with xpath "//input[@placeholder='Email']"
            And I type "123" into element with xpath "//input[@placeholder='Group Code']"
            And I type "12345" into element with xpath "//input[@placeholder='Password']"
            And I type "12345" into element with xpath "//input[@placeholder='Confirm Password']"
            And I click on element with xpath "//span[contains(text(),'Register Me')]"
            Then text "Should be a valid email address" appears

            @registration7
              #Verify that an @ domain not followed by (.)  will show notification "Should be a valid email address"
            Scenario: No (.)
    Given I navigate to "registration" page
    When I type "Anya" into element with xpath "//input[@placeholder='First Name']"
    And I type "Anya" into element with xpath "//input[@placeholder='Last Name']"
    And I type "Testing@gmailcom" into element with xpath "//input[@placeholder='Email']"
    And I type "123" into element with xpath "//input[@placeholder='Group Code']"
    And I type "12345" into element with xpath "//input[@placeholder='Password']"
    And I type "12345" into element with xpath "//input[@placeholder='Confirm Password']"
    And I click on element with xpath "//span[contains(text(),'Register Me')]"
    Then text "Should be a valid email address" appears
              #Test case fails because of the bug

              @registration8
                # Verify that White spaces are not allowed
              Scenario: white spaces
                Given I navigate to "registration" page
                When I type "Anny" into element with xpath "//input[@placeholder='First Name']"
                And I type "Anya" into element with xpath "//input[@placeholder='Last Name']"
                And I type "Test ing@gmailcom" into element with xpath "//input[@placeholder='Email']"
                And I type "123" into element with xpathgit "//input[@placeholder='Group Code']"
                And I type "12345" into element with xpath "//input[@placeholder='Password']"
                And I type "12345" into element with xpath "//input[@placeholder='Confirm Password']"
                And I click on element with xpath "//span[contains(text(),'Register Me')]"
                Then text "Should be a valid email address" appears
