Feature: User - Password
  Scenario: User - Password - Alphanumeric and special characters
    Given I navigate to "registration" page
    When I type First Name "Kirsty"
    When I type Last Name "Obrien"
    When  I type email address "Kirsty.Obrien@test.net"
    When I type Group Code "test01"
    When I type password "un159apr;dsgvk!@" on "registration" page
    When I type Confirm password "un159apr;dsgvk!@"
    When I click Register me button

    Scenario: User - Password - Min (5) characters
      Given I navigate to "registration" page
      When I type First Name "Kirsty"
      When I type Last Name "Obrien"
      When  I type email address "Kirsty.Obrien@test.net"
      When I type Group Code "test01"
      When I type password "uf1&a" on "registration" page
      When I type Confirm password "uf1&a"
      When I click Register me button

      Scenario: User - Password - Max (32) characters
        Given I navigate to "registration" page
        When I type First Name "Kirsty"
        When I type Last Name "Obrien"
        When  I type email address "Kirsty.Obrien@test.net"
        When I type Group Code "test01"
        When I type password "uf1&aAVfaldfadga&^%gjkldsajg%@#%" on "registration" page
        When I type Confirm password "uf1&aAVfaldfadga&^%gjkldsajg%@#%"
        When I click Register me button

        Scenario: User - Password - Field is required
          Given I navigate to "registration" page
          When I type First Name "Kirsty"
          When I type Last Name "Obrien"
          When  I type email address "Kirsty.Obrien@test.net"
          When I type Group Code "test01"
          When I click Register me button
          Then element with xpath "//*[@placeholder='Password']/../../..//*[contains(text(),'This field is required')]" should be displayed


          Scenario: User - Password - Min-1 (4) characters
            Given I navigate to "registration" page
            When I type First Name "Kirsty"
            When I type Last Name "Obrien"
            When  I type email address "Kirsty.Obrien@test.net"
            When I type Group Code "test01"
            When I type password "fJ!a" on "registration" page
            When I type Confirm password "fJ!a"
            When I click Register me button
            Then element with xpath "//*[@placeholder='Password']/../../..//*[contains(text(),'Should be at least 5 characters')]" should be displayed

            Scenario: User - Password - Max+1 (33) characters
              Given I navigate to "registration" page
              When I type First Name "Kirsty"
              When I type Last Name "Obrien"
              When  I type email address "Kirsty.Obrien@test.net"
              When I type Group Code "test01"
              When I type password "uf1&aAVffaldfadga&^%gjkldsajg%@#%" on "registration" page
              When I type Confirm password "uf1&aAVffaldfadga&^%gjkldsajg%@#%"
              When I click Register me button
              Then element with xpath "//*[@placeholder='Password']/../../..//*[contains(text(),'Should be no more than 32 characters')]" should be displayed

              Scenario: Password - White spaces are not allowed
                Given I navigate to "registration" page
                When I type First Name "Kirsty"
                When I type Last Name "Obrien"
                When  I type email address "Kirsty.Obrien@test.net"
                When I type Group Code "test01"
                When I type password "aA&^ %gjd" on "registration" page
                When I type Confirm password "aA&^ %gjd"
                When I click Register me button
                Then element with xpath "//*[@placeholder='Password']/../../..//*[contains(text(),'Whitespaces are not allowed')]" should be displayed







