Feature: Settings

  Scenario: Full Name - Latin char
    Given I open "login" page
    When I type email "0und@iel.pw"
    And I type password "98765"
    And I click Sign in button
    And I click settings button
    And I click change your name button
    And I type new name field "Bony Taylor"
    And I click change button
    Then Text "Bony Taylor" appears
    Then Text "STUDENT" appears

  Scenario: Full Name - Alphanumeric and special char
    Given I open "login" page
    When I type email "0und@iel.pw"
    And I type password "98765"
    And I click Sign in button
    And I click settings button
    And I click change your name button
    And I type new name field "123Teacher #@&user"
    And I click change button
    Then Text "Should contain only first and last name latin characters" appears

  Scenario: Full Name - Can't be empty
    Given I open "login" page
    When I type email "0und@iel.pw"
    And I type password "98765"
    And I click Sign in button
    And I click settings button
    And I click change your name button
    And I clear new name field
    And I click change button
    Then Text "This field is required" appears

  Scenario: Full Name - Max 256 Char
    Given I open "login" page
    When I type email "0und@iel.pw"
    And I type password "98765"
    And I click Sign in button
    And I click settings button
    And I click change your name button
    And I type new name field "MorbiametusmorbiametusmorbiametusmorbiametusmorbiametusvvvvvvvvvvvvvvvmorbiametusvmorbiametusmorbiametusmorbiametusvvvvmBiametusvvmorbiametusvmorbiametusvvmorbiametusvmorbiametusmorbiametusmorbiametusmorbiametusmorbiametusmorbiametusmorbiametusmorbiamet"
    And I click change button
    Then Text "MorbiametusmorbiametusmorbiametusmorbiametusmorbiametusvvvvvvvvvvvvvvvmorbiametusvmorbiametusmorbiametusmorbiametusvvvvmBiametusvvmorbiametusvmorbiametusvvmorbiametusvmorbiametusmorbiametusmorbiametusmorbiametusmorbiametusmorbiametusmorbiametusmorbiamet" appears

  Scenario: Full Name - Max 256 Char
    Given I open "login" page
    When I type email "0und@iel.pw"
    And I type password "98765"
    And I click Sign in button
    And I click settings button
    And I click change your name button
    And I type new name field "Morbiametusmorbiametusmorbiametusmorbiametusmorbiametusvvvvvvvvvvvvvvvmorbiametusvmorbiametusmorbiametusmorbiametusvvvvm Biametusvvmorbiametusvmorbiametusvvmorbiametusvmorbiametusmorbiametusmorbiametusmorbiametusmorbiametusmorbiametusmorbiametusmorbiametr"
    And I click change button
    Then Text "Too long. Should be no more than 256 characters" appears

  Scenario: Full Name - Min Char
    Given I open "login" page
    When I type email "0und@iel.pw"
    And I type password "98765"
    And I click Sign in button
    And I click settings button
    And I click change your name button
    And I type new name field "A D"
    And I click change button
    Then Text "A D" appears

  Scenario: Full Name - Min -1 Char
    Given I open "login" page
    When I type email "0und@iel.pw"
    And I type password "98765"
    And I click Sign in button
    And I click settings button
    And I click change your name button
    And I type new name field "A"
    And I click change button
    Then Text "Should contain only first and last name Latin characters" appears

  Scenario: Full Name - Min -1 Char
    Given I open "login" page
    When I type email "0und@iel.pw"
    And I type password "98765"
    And I click Sign in button
    And I click settings button
    And I click change your name button
    And I type new name field " John Smith "
    And I click change button
    Then Text "Should contain only first and last name Latin characters" appears

  Scenario: Full Name - White spaces
    Given I open "login" page
    When I type email "0und@iel.pw"
    And I type password "98765"
    And I click Sign in button
    And I click settings button
    And I click change your name button
    And I type new name field "      "
    And I click change button
    Then Text "Should contain only first and last name Latin characters" appears

