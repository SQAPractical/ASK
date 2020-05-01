Feature: Registation-Firstname

  Scenario Outline: Firstname Verification
    Given I open Registration Page
    When I type firstname <fname>
    And I type lastname <lname>
    And I type Regemail <email>
    And I type groupcode <Gcode>
    And I type Regpwd <pwd>
    And I type Confirmpwd <Cpwd>
    And I click Register me button
    Then text <text> appears
    Examples:
      | fname      | lname | email     | Gcode | pwd     | Cpwd    | text                        |
      | "Lisa-23#" | "Mun" | "ddd@ddd" | "1"   | "09876" | "09876" | "You have been Registered." |
      | "" | "Mun" | "ddd@ddd" | "1"   | "09876" | "09876" | "This field is required"   |
      | "llllllllllllllllllllllllllkkkkkkkkkkkkoooooooooooiiiiiiiiiiuuuuuuuuuuuuuuuuuuuuiiiiiiiiiiiiiiiiiiiiiiooooooooooooopppppppppppppp[[[[[[[[[jjjjjjjjjjhhhhhhhhhhhhhhggggggggggggfffffffffdddsdseeeerrrrrrrrrrrrrrrrtttttttttttttttttttttttyyuuuuuuuuuuuuuuu666mmm" | "Mun" | "ddd@ddd" | "1"   | "09876" | "09876" | "You have been Registered." |
      | "llllllllllllllllllllllllllkkkkkkkkkkkkoooooooooooiiiiiiiiiiuuuuuuuuuuuuuuuuuuuuiiiiiiiiiiiiiiiiiiiiiiooooooooooooopppppppppppppp[[[[[[[[[jjjjjjjjjjhhhhhhhhhhhhhhggggggggggggfffffffffdddsdseeeerrrrrrrrrrrrrrrrtttttttttttttttttttttttyyuuuuuuuuuuuuuuu666mmmBvvvvvvvvvvbbbbbbbhhhhhiiiiimmmmmooooppppjjjjuioolkmhggyu" | "Mun" | "ddd@ddd" | "1"   | "09876" | "09876" | "First name is too long." |
      | "L"        | "Mun" | "ddd@ddd" | "1"   | "09876" | "09876" | "You have been Registered." |
      | "L "       | "Mun" | "ddd@ddd" | "1"   | "09876" | "09876" | "Whitespaces are not allowed" |


