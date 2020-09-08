Feature: Settings

  Scenario Outline: Full Name - Latin char
    Given I open <pageName> page
    Then I type in <email> in email
    Then I type in <password> in password
    Then I click Sign in button
    And I click settings button
    And I click change your name button
    And I clear new name field
    And I type new name field <NewName>
    And I click change button
    Then text <text> appears

    Examples:
      | pageName | email         | password | NewName       | text |
      | "login"  | "0und@iel.pw" | "98765"  | "Bony Taylor" | "TEACHER" |

  Scenario Outline: Full Name - Alphanumeric and special char
    Given I open <pageName> page
    Then I type in <email> in email
    Then I type in <password> in password
    And I click settings button
    And I click change your name button
    And I clear new name field
    And I type new name field <NewName>
    And I click change button
    Then text <text> appears
    Examples:
      | pageName | email         | password | NewName              | text                                                       |
      | "login"  | "0und@iel.pw" | "98765"  | "123Teacher #@&user" | "Should contain only first and last name latin characters" |

  Scenario Outline: Full Name - Can't be empty
    Given I open <pageName> page
    Then I type in <email> in email
    Then I type in <password> in password
    And I click settings button
    And I click change your name button
    And I clear new name field
    And I click change button
    Then text <text> appears
    Examples:
      | pageName | email         | password | text                     |
      | "login"  | "0und@iel.pw" | "98765"  | "This field is required" |

  Scenario Outline: Full Name - Max 256 Char
    Given I open <pageName> page
    Then I type in <email> in email
    Then I type in <password> in password
    And I click settings button
    And I click change your name button
    And I clear new name field
    And I type new name field <NewName>
    And I click change button
    Then text <text> appears
    Examples:
      | pageName | email         | password | NewName                                                                                                                                                                                                                                                         | text                                                       |
      | "login"  | "0und@iel.pw" | "98765"  | "MorbiametusmorbiametusmorbiametusmorbiametusmorbiametusvvvvvvvvvvvvvvvmorbiametusvmorbiametusmorbiametusmorbiametusvvvvmBiametusvvmorbiametusvmorbiametusvvmorbiametusvmorbiametusmorbiametusmorbiametusmorbiametusmorbiametusmorbiametusmorbiametusmorbiamet" | "Should contain only first and last name latin characters" |

  Scenario Outline: Full Name - Max 256 Char
    Given I open <pageName> page
    Then I type in <email> in email
    Then I type in <password>in password
    And I click settings button
    And I click change your name button
    And I clear new name field
    And I type new name field <NewName>
    And I click change button
    Then text <text> appears
    Examples:
      | pageName | email         | password | NewName                                                                                                                                                                                                                                                           | text                                              |
      | "login"  | "0und@iel.pw" | "98765"  | "Morbiametusmorbiametusmorbiametusmorbiametusmorbiametusvvvvvvvvvvvvvvvmorbiametusvmorbiametusmorbiametusmorbiametusvvvvm Biametusvvmorbiametusvmorbiametusvvmorbiametusvmorbiametusmorbiametusmorbiametusmorbiametusmorbiametusmorbiametusmorbiametusmorbiametr" | "Too long. Should be no more than 100 characters" |

  Scenario Outline: Full Name - Min Char
    Given I open <pageName> page
    Then I type in <email> in email
    Then I type in <password>in password
    And I click settings button
    And I click change your name button
    And I clear new name field
    And I type new name field <NewName>
    And I click change button
    Then text <text> appears
    Examples:
      | pageName | email         | password | NewName | text  |
      | "login"  | "0und@iel.pw" | "98765"  | "A B"   | "A B" |

  Scenario Outline: Full Name - Min -1 Char
    Given I open <pageName> page
    Then I type in <email> in email
    Then I type in <password>in password
    And I click settings button
    And I click change your name button
    And I clear new name field
    And I type new name field <NewName>
    And I click change button
    Then text <text> appears
    Examples:
      | pageName | email         | password | NewName | text                                                       |
      | "login"  | "0und@iel.pw" | "98765"  | "A"     | "Should contain only first and last name latin characters" |

  Scenario Outline: Full Name - Min -1 Char
    Given I open <pageName> page
    Then I type in <email> in email
    Then I type in <password> in password
    And I click settings button
    And I click change your name button
    And I clear new name field
    And I type new name field <NewName>
    And I click change button
    Then text <text> appears
    Examples:
      | pageName | email         | password | NewName        | text                                                       |
      | "login"  | "0und@iel.pw" | "98765"  | " John Smith " | "Should contain only first and last name latin characters" |

  Scenario Outline: Full Name - White spaces
    Given I open <pageName> page
    Then I type in <email> in email
    Then I type in <password> in password
    And I click settings button
    And I click change your name button
    And I clear new name field
    And I type new name field <NewName>
    And I click change button
    Then text <text> appears
    Examples:
      | pageName | email         | password | NewName  | text                                                       |
      | "login"  | "0und@iel.pw" | "98765"  | "      " | "Should contain only first and last name latin characters" |

