Feature: password

  @password1
  Scenario Outline: Alphanumeric & Special characters
    Given I open <pagenName> page
    Then I type in <email> in email
    Then I type in <password> in password
    Then I click Sign in button
    And I click settings button
    Then I Click <arg0> and I type in <op> in password and <np> in new password and <npc> in confirm password
    Examples:
      | pagenName | email                       | password  | arg0              | op        | np          | npc         |
      | "login"   | "6thalaivaveriya@9phum.com" | "Test123" | "Change password" | "Test123" | "Test123!@" | "Test123!@" |

  @password2
  Scenario Outline: Change Password-Less than 5 characters
    Given I open <pagenName> page
    Then I type in <email> in email
    Then I type in <password> in password
    Then I click Sign in button
    And I click settings button
    Then I Click <arg0> and I type in <op> in password and <np> in new password and <npc> in confirm password
    Then Text <text> appears
    Examples:
      | pagenName | email                       | password  | arg0              | op        | np   | npc  | text                                         |
      | "login"   | "6thalaivaveriya@9phum.com" | "Test123" | "Change password" | "Test123" | "Te" | "Te" | "Too short. Should be at least 5 characters" |

  @password3
  Scenario Outline: password more then 35 characters
    Given I open <pagenName> page
    Then I type in <email> in email
    Then I type in <password> in password
    Then I click Sign in button
    And I click settings button
    Then I Click <arg0> and I type in <op> in password and <np> in new password and <npc> in confirm password
    Examples:
      | pagenName | email                       | password  | arg0              | op        | np                                  | npc                                 |
      | "login"   | "6thalaivaveriya@9phum.com" | "Test123" | "Change password" | "Test123" | "ABCDEFGHIJKLMNOPQRSTUVWXYZ123456!" | "ABCDEFGHIJKLMNOPQRSTUVWXYZ123456!" |

  @password4
  Scenario Outline: white spaces not allowed
    Given I open <pagenName> page
    Then I type in <email> in email
    Then I type in <password> in password
    Then I click Sign in button
    And I click settings button
    Then I Click <arg0> and I type in <op> in password and <np> in new password and <npc> in confirm password
    Then Text <text> appears
    Examples:
      | pagenName | email                       | password  | arg0              | op        | np    | npc   | text                          |
      | "login"   | "6thalaivaveriya@9phum.com" | "Test123" | "Change password" | "Test123" | "T e" | "T e" | "Whitespaces are not allowed" |

  @password5
  Scenario Outline: Passwords must match
    Given I open <pagenName> page
    Then I type in <email> in email
    Then I type in <password> in password
    Then I click Sign in button
    And I click settings button
    Then I Click <arg0> and I type in <op> in password and <np> in new password and <npc> in confirm password
    Then Text <text> appears
    Examples:
      | pagenName | email                       | password  | arg0              | op        | np         | npc       | text                             |
      | "login"   | "6thalaivaveriya@9phum.com" | "Test123" | "Change password" | "Test123" | "Tasdsade" | "Tafdaae" | "Entered passwords should match" |

  @password6
  Scenario Outline: New password field cannot be blank
    Given I open <pagenName> page
    Then I type in <email> in email
    Then I type in <password> in password
    Then I click Sign in button
    And I click settings button
    Then I Click <arg0> and I type in <op> in password and <np> in new password and <npc> in confirm password
    Then Text <text> appears
    Examples:
      | pagenName | email                       | password  | arg0              | op        | np | npc | text                     |
      | "login"   | "6thalaivaveriya@9phum.com" | "Test123" | "Change password" | "Test123" | "" | ""  | "This field is required" |