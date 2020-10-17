Feature: Registration - Last Name

  Scenario Outline: Registration - Last Name - character input
    Given I open <url> page
    When I type <text> into <field> field
    And I click outside text field
    Then <error> error appears
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

  Scenario: Registration - user register with max characters plus 1
    Given I open "registration" page
    When I type "Ivanov" into "Last Name" field
    And I click outside text field
    Then "no" error appears

