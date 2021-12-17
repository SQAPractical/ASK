Feature:Log In

  Scenario Outline: Log In - Valid email and password combination
    When I navigate to log in page
    And I type email <Email> to email field
    And I type password <Pass> to log in
    And I click on Sign In button
    And student <StudentN> appears
    Examples:
      | Email                | Pass       | StudentN      |
      | "student1@gmail.com" | "12345Abc" | "Ivan Ivanov" |
      | "student2@gmail.com" | "12345Abc" | "Elena Talley" |
      | "student3@gmail.com" | "12345Abc" | "Olga Nikolaeva" |
      | "student4@gmail.com" | "12345Abc" | "Sophia Jones" |






