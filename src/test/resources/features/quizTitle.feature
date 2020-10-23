Feature: Quiz Title
  Scenario: Quiz - Title - Alphanumeric & Sp. characters
    Given I open "login" page
    When I type email "teacher2@gmail.com" on login page
    And I type password "12345Abc" on login page
    And I click Sign in button
    And I click on Quizzes
    And I click on create new quiz button
    And I type title "qtydWRT13$%" in the input field
    And I click on Add Question button
    And I select Question Type Textual
    And I type "test" in the question title field
    And I click SAVE
    And I click on quiz "qtydWRT13$%" from the quiz list
    And I click on Preview button near "qtydWRT13$%"
    Then Text "qtydWRT13$%" appears
#   Then quiz should display



  Scenario:  Quiz - Title -The field is required
    Given I open "login" page
    When I type email "teacher2@gmail.com" on login page
    And I type password "12345Abc" on login page
    And I click Sign in button
    And I click on Quizzes
    And I click on create new quiz button
    And I click on title of the quiz field
    And I click outside the title field
    Then Text "This field is required" appears

  Scenario: Quiz - Title - Min 1 Characters
    Given I open "login" page
    When I type email "teacher2@gmail.com" on login page
    And I type password "12345Abc" on login page
    And I click Sign in button
    And I click on Quizzes
    And I click on create new quiz button
    And I type title "@" in the input field
    And I click on Add Question button
    And I select Question Type Textual
    And I type "test" in the question title field
    And I click SAVE
    And I click on quiz "@" from the quiz list
    And I click on Preview button near "@"
    Then Quiz name "@" appears on preview mode
#   Then quiz should display

  Scenario: Quiz - Title - Max 1000 characters
    Given I open "login" page
    When I type email "teacher2@gmail.com" on login page
    And I type password "12345Abc" on login page
    And I click Sign in button
    And I click on Quizzes
    And I click on create new quiz button
    And I type title "####1ssxsxsedxxdoxuheoiuhoiuhoiuhoiuhiuhuhkjhbkiugiuygiugiuytgityugiuytgiygityugiuygiuygitygityfitfitfitftftkhosgiugwiugeiuyfgrcygoygiuybihbhbhbhbhbhbhbhbhbhbhbhbhbhbhbhbhbhbhbhbhbhbhbubuihbuhbhbhbhbhbhbhbhbhbhbhbhbhbhbhbhbhbhbhbhbhbhbhbhbhbhbhighhuhubhbhbhbhbhbhbhbhbhhbhbhbhbhbhbhbhbhbhbhbhbhbhbhbhbhbhbiubieuyriuyfriuyfdiuyiudydiuyvbfbvfhvbhfbviubiefuvbiwbvfiuvriuyvryvrybvifuvbfihubfiucbfucbfihebviefuvbiefyvbifugbreiuyvebyiebvifhucbiuhcbhudiuhbciduhbcidcbieubfieubfvciuebdhceiuhbciucbityvutrcc7rctryetvdyevceucv8t8tcebvdcdbhdsbh444$mdbubbiuyygvgvgvghvgvhbvhfbvhfbvhfbvfbfghgbgbgbfggbgnghnhgnghkjhfivughfoiuhgoiuhogirughogriuhogbgbgjbgjbhgbghbirhbvighubgihbivhbgrihbrfihvbrihbfvirhbvigruvbirubfvifvbihubvigubhvigubigubhgiubviughbvhfgbvhfgbvhbhvbfhbvhfbvhfbvhfbvhfbhfbvhfbvhfbvfhbvhfbvfhbvhfbvhfbvhbfhvbfhvbfhvbhfbvfhbvhfbvhfbvfhbvhfbvfhvbhfbvhfbvfhbvhfbvfhvbhfbvhfbvhfbvhfbvhfbvhfbvhfbvhfbvhfbvhfbvhfbvhfbhfbhbhbhbhbhbhbhbhbhbhgbhhbhbhhbhbhbhbhbhbhhhhhhibiuvguytgvuyttugvuytgutyuytvuyuidhbdcedebd" in the input field
    And I click on Add Question button
    And I select Question Type Textual
    And I type "test" in the question title field
    And I click SAVE
    And I click on quiz "####1ssxsxsedxxdoxuheoiuhoiuhoiuhoiuhiuhuhkjhbkiugiuygiugiuytgityugiuytgiygityugiuygiuygitygityfitfitfitftftkhosgiugwiugeiuyfgrcygoygiuybihbhbhbhbhbhbhbhbhbhbhbhbhbhbhbhbhbhbhbhbhbhbhbubuihbuhbhbhbhbhbhbhbhbhbhbhbhbhbhbhbhbhbhbhbhbhbhbhbhbhbhbhighhuhubhbhbhbhbhbhbhbhbhhbhbhbhbhbhbhbhbhbhbhbhbhbhbhbhbhbhbiubieuyriuyfriuyfdiuyiudydiuyvbfbvfhvbhfbviubiefuvbiwbvfiuvriuyvryvrybvifuvbfihubfiucbfucbfihebviefuvbiefyvbifugbreiuyvebyiebvifhucbiuhcbhudiuhbciduhbcidcbieubfieubfvciuebdhceiuhbciucbityvutrcc7rctryetvdyevceucv8t8tcebvdcdbhdsbh444$mdbubbiuyygvgvgvghvgvhbvhfbvhfbvhfbvfbfghgbgbgbfggbgnghnhgnghkjhfivughfoiuhgoiuhogirughogriuhogbgbgjbgjbhgbghbirhbvighubgihbivhbgrihbrfihvbrihbfvirhbvigruvbirubfvifvbihubvigubhvigubigubhgiubviughbvhfgbvhfgbvhbhvbfhbvhfbvhfbvhfbvhfbhfbvhfbvhfbvfhbvhfbvfhbvhfbvhfbvhbfhvbfhvbfhvbhfbvfhbvhfbvhfbvfhbvhfbvfhvbhfbvhfbvfhbvhfbvfhvbhfbvhfbvhfbvhfbvhfbvhfbvhfbvhfbvhfbvhfbvhfbvhfbhfbhbhbhbhbhbhbhbhbhbhgbhhbhbhhbhbhbhbhbhbhhhhhhibiuvguytgvuyttugvuytgutyuytvuyuidhbdcedebd" from the quiz list
    And I click on Preview button near "####1ssxsxsedxxdoxuheoiuhoiuhoiuhoiuhiuhuhkjhbkiugiuygiugiuytgityugiuytgiygityugiuygiuygitygityfitfitfitftftkhosgiugwiugeiuyfgrcygoygiuybihbhbhbhbhbhbhbhbhbhbhbhbhbhbhbhbhbhbhbhbhbhbhbubuihbuhbhbhbhbhbhbhbhbhbhbhbhbhbhbhbhbhbhbhbhbhbhbhbhbhbhbhighhuhubhbhbhbhbhbhbhbhbhhbhbhbhbhbhbhbhbhbhbhbhbhbhbhbhbhbhbiubieuyriuyfriuyfdiuyiudydiuyvbfbvfhvbhfbviubiefuvbiwbvfiuvriuyvryvrybvifuvbfihubfiucbfucbfihebviefuvbiefyvbifugbreiuyvebyiebvifhucbiuhcbhudiuhbciduhbcidcbieubfieubfvciuebdhceiuhbciucbityvutrcc7rctryetvdyevceucv8t8tcebvdcdbhdsbh444$mdbubbiuyygvgvgvghvgvhbvhfbvhfbvhfbvfbfghgbgbgbfggbgnghnhgnghkjhfivughfoiuhgoiuhogirughogriuhogbgbgjbgjbhgbghbirhbvighubgihbivhbgrihbrfihvbrihbfvirhbvigruvbirubfvifvbihubvigubhvigubigubhgiubviughbvhfgbvhfgbvhbhvbfhbvhfbvhfbvhfbvhfbhfbvhfbvhfbvfhbvhfbvfhbvhfbvhfbvhbfhvbfhvbfhvbhfbvfhbvhfbvhfbvfhbvhfbvfhvbhfbvhfbvfhbvhfbvfhvbhfbvhfbvhfbvhfbvhfbvhfbvhfbvhfbvhfbvhfbvhfbvhfbhfbhbhbhbhbhbhbhbhbhbhgbhhbhbhhbhbhbhbhbhbhhhhhhibiuvguytgvuyttugvuytgutyuytvuyuidhbdcedebd"
    Then Text "####1ssxsxsedxxdoxuheoiuhoiuhoiuhoiuhiuhuhkjhbkiugiuygiugiuytgityugiuytgiygityugiuygiuygitygityfitfitfitftftkhosgiugwiugeiuyfgrcygoygiuybihbhbhbhbhbhbhbhbhbhbhbhbhbhbhbhbhbhbhbhbhbhbhbubuihbuhbhbhbhbhbhbhbhbhbhbhbhbhbhbhbhbhbhbhbhbhbhbhbhbhbhbhighhuhubhbhbhbhbhbhbhbhbhhbhbhbhbhbhbhbhbhbhbhbhbhbhbhbhbhbhbiubieuyriuyfriuyfdiuyiudydiuyvbfbvfhvbhfbviubiefuvbiwbvfiuvriuyvryvrybvifuvbfihubfiucbfucbfihebviefuvbiefyvbifugbreiuyvebyiebvifhucbiuhcbhudiuhbciduhbcidcbieubfieubfvciuebdhceiuhbciucbityvutrcc7rctryetvdyevceucv8t8tcebvdcdbhdsbh444$mdbubbiuyygvgvgvghvgvhbvhfbvhfbvhfbvfbfghgbgbgbfggbgnghnhgnghkjhfivughfoiuhgoiuhogirughogriuhogbgbgjbgjbhgbghbirhbvighubgihbivhbgrihbrfihvbrihbfvirhbvigruvbirubfvifvbihubvigubhvigubigubhgiubviughbvhfgbvhfgbvhbhvbfhbvhfbvhfbvhfbvhfbhfbvhfbvhfbvfhbvhfbvfhbvhfbvhfbvhbfhvbfhvbfhvbhfbvfhbvhfbvhfbvfhbvhfbvfhvbhfbvhfbvfhbvhfbvfhvbhfbvhfbvhfbvhfbvhfbvhfbvhfbvhfbvhfbvhfbvhfbvhfbhfbhbhbhbhbhbhbhbhbhbhgbhhbhbhhbhbhbhbhbhbhhhhhhibiuvguytgvuyttugvuytgutyuytvuyuidhbdcedebd" appears
#   Then quiz should display

  Scenario: Quiz - Title - Max 1001 characters
    Given I open "login" page
    When I type email "teacher2@gmail.com" on login page
    And I type password "12345Abc" on login page
    And I click Sign in button
    And I click on Quizzes
    And I click on create new quiz button
    And I type title "####1ssxsxsedxxxdoxuheoiuhoiuhoiuhoiuhiuhuhkjhbkiugiuygiugiuytgityugiuytgiygityugiuygiuygitygityfitfitfitftftkhosgiugwiugeiuyfgrcygoygiuybihbhbhbhbhbhbhbhbhbhbhbhbhbhbhbhbhbhbhbhbhbhbhbubuihbuhbhbhbhbhbhbhbhbhbhbhbhbhbhbhbhbhbhbhbhbhbhbhbhbhbhbhighhuhubhbhbhbhbhbhbhbhbhhbhbhbhbhbhbhbhbhbhbhbhbhbhbhbhbhbhbiubieuyriuyfriuyfdiuyiudydiuyvbfbvfhvbhfbviubiefuvbiwbvfiuvriuyvryvrybvifuvbfihubfiucbfucbfihebviefuvbiefyvbifugbreiuyvebyiebvifhucbiuhcbhudiuhbciduhbcidcbieubfieubfvciuebdhceiuhbciucbityvutrcc7rctryetvdyevceucv8t8tcebvdcdbhdsbh444$mdbubbiuyygvgvgvghvgvhbvhfbvhfbvhfbvfbfghgbgbgbfggbgnghnhgnghkjhfivughfoiuhgoiuhogirughogriuhogbgbgjbgjbhgbghbirhbvighubgihbivhbgrihbrfihvbrihbfvirhbvigruvbirubfvifvbihubvigubhvigubigubhgiubviughbvhfgbvhfgbvhbhvbfhbvhfbvhfbvhfbvhfbhfbvhfbvhfbvfhbvhfbvfhbvhfbvhfbvhbfhvbfhvbfhvbhfbvfhbvhfbvhfbvfhbvhfbvfhvbhfbvhfbvfhbvhfbvfhvbhfbvhfbvhfbvhfbvhfbvhfbvhfbvhfbvhfbvhfbvhfbvhfbhfbhbhbhbhbhbhbhbhbhbhgbhhbhbhhbhbhbhbhbhbhhhhhhibiuvguytgvuyttugvuytgutyuytvuyuidhbdcedebd" in the input field
    And I click on Add Question button
    Then Text "Too long, should be no more than 1000 characters" appears


  Scenario: Quiz - Title -Leading space characters
    Given I open "login" page
    When I type email "teacher2@gmail.com" on login page
    And I type password "12345Abc" on login page
    And I click Sign in button
    And I click on Quizzes
    And I click on create new quiz button
    And I type title " qtydWRT13$%" in the input field
    And I click on Add Question button
    And I select Question Type Textual
    And I type "test" in the question title field
    And I click SAVE
    And I click on quiz "qtydWRT13$%" from the quiz list
#    And I click on Preview button near "qtydWRT13$%"
    Then Quiz title equals to "qtydWRT13$%"
#    Then Text "qtydWRT13$%" appears
#   Then quiz should display

  Scenario:  Quiz - Title - trailing space characters
    Given I open "login" page
    When I type email "teacher2@gmail.com" on login page
    And I type password "12345Abc" on login page
    And I click Sign in button
    And I click on Quizzes
    And I click on create new quiz button
    And I type title "qtydWRT13$% " in the input field
    And I click on Add Question button
    And I select Question Type Textual
    And I type "test" in the question title field
    And I click SAVE
    And I click on quiz "qtydWRT13$%" from the quiz list
#    And I click on Preview button near "qtydWRT13$%"
    Then Quiz title equals to "qtydWRT13$%"
#   Then quiz should display










