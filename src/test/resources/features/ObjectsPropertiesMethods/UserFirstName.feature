@Objects
  Feature: User - First name
    @Sanity
    Scenario: User - First name: Alphanumeric and special characters
      Given I navigate to "registration" page
      When I type First Name "abc123#"
      And I type Last Name "qwert"
      And I type Group Code "qwer"
      And I type email "email@gmail.com" on "registration" page
      And I type password "12345" on "registration" page
      And I type Confirm password "12345"
      And I click Register me button
      Then message "You have been Registered."

    Scenario: User - First name: Field is required
      Given I navigate to "registration" page
      When I type First Name ""
      And I type Last Name "qwert"
      And I type Group Code "qwert"
      And I type email "email@gmail.com" on "registration" page
      And I type password "12345" on "registration" page
      And I type Confirm password "12345"
      And I click Register me button
      Then message "This field is required"


