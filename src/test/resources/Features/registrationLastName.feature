@fullregression
Feature: Registration - Last Name

  Scenario Outline: Registration - Last Name - character input
    Given I open <url> page
    When I type <text> into <field> input field
    And I click outside text field
    Then <error> error message appears
    Examples:
      | url            | text     | field       | error |
      | "registration" | "Ivanov" | "Last Name" | "no"  |
      | "registration" | "Ivanov#@$$$" | "Last Name" | "Should contain"  |
      | "registration" | "a" | "Last Name" | "no"  |
      | "registration" | "qwertyuiopasdfghjklzxcvbnmqwertyuiopasdfghjklzxcvbnmqwertyuiopasdfghjklzxcvbnmqwertyuiopasdfghjklzxcvbnmqwertyuiopasdfghjklzxcvbnmqwertyuiopasdfghjklzxcvbnmqwertyuiopasdfghjklzxcvbnmqwertyuiopasdfghjklzxcvbnmqwertyuiopasdfghjklzxcvbnmqwertyuiopasdfghjklz" | "Last Name" | "no"  |
      | "registration" | "qwertyuiopasdfghjklzxcvbnmqwertyuiopasdfghjklzxcvbnmqwertyuiopasdfghjklzxcvbnmqwertyuiopasdfghjklzxcvbnmqwertyuiopasdfghjklzxcvbnmqwertyuiopasdfghjklzxcvbnmqwertyuiopasdfghjklzxcvbnmqwertyuiopasdfghjklzxcvbnmqwertyuiopasdfghjklzxcvbnmqwertyuiopasdfghjklza" | "Last Name" | "Too long"  |
      | "registration" | "" | "Last Name" | "required"  |
      | "registration" | "    " | "Last Name" | "Should contain"  |
      | "registration" | "abcd    " | "Last Name" | "Should contain"  |
      | "registration" | "    abcd" | "Last Name" | "Should contain"  |
      | "registration" | "ab    cd" | "Last Name" | "Should contain"  |

  Scenario: Registration - user registered with max characters plus 1
    Given I open "registration" page
    When I type "a" into "First Name" input field
    When I type "qwertyuiopasdfghjklzxcvbnmqwertyuiopasdfghjklzxcvbnmqwertyuiopasdfghjklzxcvbnmqwertyuiopasdfghjklzxcvbnmqwertyuiopasdfghjklzxcvbnmqwertyuiopasdfghjklzxcvbnmqwertyuiopasdfghjklzxcvbnmqwertyuiopasdfghjklzxcvbnmqwertyuiopasdfghjklzxcvbnmqwertyuiopasdfghjklza" into "Last Name" input field
    When I type "emaul@email.com" into "Email" input field
    When I type "RRR" into "Group Code" input field
    When I type "12345" into "Password" input field
    When I type "12345" into "Confirm Password" input field
    And I click Register Me button;
    Then "Too Long" error message appears

