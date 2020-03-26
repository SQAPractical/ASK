Feature: Registration - First name
   Scenario Outline: First name registration form
      Given I open url
      Then I type First Name "<fname>" in registration form
      And I type Last Name "<lName>" in registration form
      And I type Email "<email>" in registration form
      And I type Group Code "<group>" in registration form
      And I type Password "<password>" in registration form
      And I type Confirm password "<confirm>" in registration form
      Then I click on button "<bName>" in registration form
      Then I should see message "<mes>"
      Examples:
         | fname| lName| email| group  | password| confirm| bName| mes|
         |abc123!@$|ID|lada112@gmail.com|011| 55555 |55555|Register me|You have been Registered.|
    #     ||ID|lada112@gmail.com|011| 55555 |55555|Register me|This field is required|
    #     |L|ID|lada112@gmail.com|011| 55555 |55555|Register me|You have been Registered.|
    #     |qwqFirrtuhjfghbvsrtdfgvrtuhjfghbvsrtdfgvrtuhjfghbvsrtdfgvrtuhjfghbvsrtdfgvrtuhjfghbvsrtdfgvrtuhjfghbvsrtdfgvrtuhjfghbvsrtdfgvrtuhjfghbvsrtdfgvrtuhjfghbvsrtdfgvrtuhjfghbvsrtdfgvrtuhjfghbvsrtdfgvrtuhjfghbvsrtdfgvrtuhjfghbvsrtdfgvrtuhjfghbvsrtdfgvrtuhtffkjhgjh|ID|lada112@gmail.com|011| 55555 |55555|Register me|Should be no more than 254 characters|
    #     |Firrtuhjfghbvsrtdfgvrtuhjfghbvsrtdfgvrtuhjfghbvsrtdfgvrtuhjfghbvsrtdfgvrtuhjfghbvsrtdfgvrtuhjfghbvsrtdfgvrtuhjfghbvsrtdfgvrtuhjfghbvsrtdfgvrtuhjfghbvsrtdfgvrtuhjfghbvsrtdfgvrtuhjfghbvsrtdfgvrtuhjfghbvsrtdfgvrtuhjfghbvsrtdfgvrtuhjfghbvsrtdfgvrtuhtffkjhgjh|I|lada112@gmail.com|011| 55555 |55555|Register me|You have been Registered.|
    #     |Lada|ID|l|011| 55555 |55555|Register me|Should be a valid email address|
    #     |Lada|ID|a@r.s|011| 55555 |55555|Register me|You have been Registered.|
    #     |Lada|ID|OlgatestRightOlgatestRightOlgatestRightOlgatestRightOlgatestRige@lgatestRightOlgatestRightOlgatestRightOlgatestRightOlgatestRige.OlgatestRightOlgatestRightOlgatestRightOlgatestRi|011| 55555 |55555|Register me|You have been Registered.|
    #     |Lada|ID|lada 112@gmail.com|011| 55555 |55555|Register me|Should be a valid email address|
    #     |Lada|ID|OlgatestRightOlgatestRightOlgatestRightOlgatestRightOlgatestRige@lgatestRightOlgatestRightOlgatestRightOlgatestRightOlgatestRizge.OlgatestRightOlgatestRightOlgatestRightOlgatestRi|011| 55555 |55555|Register me|Should be a valid email address|
    #     |Lada|ID|a@r.|011| 55555 |55555|Register me|Should be a valid email address|
    #    |Lada|ID|a@r.h|011| 55555 |55555|Register me|You have been Registered.|
    #    |Lada|ID|423(abc)d@gmail.com|011| 55555 |55555|Register me|Should be a valid email address|
    #    |Lada|ID|123'asa'@gmail.com|011| 55555 |55555|Register me|You have been Registered.|
    #    |Lada|ID|123<asa>@gmail.com|011| 55555 |55555|Register me|You have been Registered.|
    #    |Lada|ID|123@asa@gmail.com|011| 55555 |55555|Register me|Should be a valid email address|














