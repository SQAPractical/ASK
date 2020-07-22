@asktest
  Feature: Registration
    @test1 @student
    Scenario: Registration - First name - Alphanumeric & Special characters
      Given Navigate to "registration" page
      Then Fill out form
      When Click "Register me" button
      Then "You have been Registered." message appears

    @test2 @student
    Scenario: Registration - First name - Field is required
      Given Navigate to "registration" page
      Then Fill out form
      When Click "Register me" button
      Then "This field is required" message appears
