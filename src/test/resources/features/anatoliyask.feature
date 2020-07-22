@registaration
  Feature: Registration
    @test1 @student @
    Scenario: Registration - First name - Alphanumeric & Special characters
      Given Navigate to "registration" page
      Then Fill out form
      When Click "Register me" button
      Then "You have been Registered." message appears


#   test data
#    emeil: http://ask-stage.portnov.com/#/registration
#    First name: Abc123!@#
#    Last name: Tests
#    Group code: 123
#    Email: test@tesr.tfs
#    Password: 12345
#    Confirm pass: 12345

    @test2 @student
    Scenario: Registration - First name - Field is required
      Given Navigate to "registration" page
      Then Fill out form
      When Click "Register me" button
      Then "This field is required" message appears

#  test data
#    emeil: http://ask-stage.portnov.com/#/registration
#    First name: ""
#    Last name: Tests
#    Group code: 123
#    Email: test@tesr.tfs
#    Password: 12345
#    Confirm pass: 12345
