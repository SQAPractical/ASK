Feature: Textual Question -Text

  Scenario: Textual Question - Text-Allowable characters: Alphanumeric and Sp. characters
    When I navigate to login page as a teacher
    And I type email "teacher4@gmail.com" on page
    And I type password "12345Abc" on page
    And I click on Sign In button
    And I click "Quizzes" menu item
    And I click on "Create New Quiz" butto
    And I typ title of quiz "Olga Taya 0"
    And I click add question button
    And I select "Textual" question typ for question 1
    And I typ text "Press@ or check$?" for question 1
    And I click "Save" button
    Then Quiz "Olga Taya 0" is present in list of quizzes
    And I click "Olga Taya 0" on list of quizzes
    And I click "Delete" button on Quizz "Olga Taya 0" table
    And I confirm "Delete" in "Confirmation" pop-up window

  Scenario:Textual Question - Text - The field is required
    When I navigate to login page as a teacher
    And I type email "teacher4@gmail.com" on page
    And I type password "12345Abc" on page
    And I click on Sign In button
    And I click "Quizzes" menu item
    And I click on "Create New Quiz" butto
    And I typ title of quiz "Olga Taya"
    And I click add question button
    And I select "Textual" question typ for question 1
    And I typ text "" for question 1
    And I click "Save" button
    Then message "This field is required" appears

  Scenario: Textual Question -Text-Min 1 Characters
    When I navigate to login page as a teacher
    And I type email "teacher4@gmail.com" on page
    And I type password "12345Abc" on page
    And I click on Sign In button
    And I click "Quizzes" menu item
    And I click on "Create New Quiz" butto
    And I typ title of quiz "Olga Taya1"
    And I click add question button
    And I select "Textual" question typ for question 1
    And I type text "P" for question 1
    And I click "Save" button
    Then Quiz "Olga Taya1" is present in list of quizzes
    And I click "Olga Taya1" on list of quizzes
    And I click "Delete" button on Quizz "Olga Taya1" table
    And I confirm "Delete" in "Confirmation" pop-up window

  Scenario: Textual question-Text- Max 1000 characters
    When I navigate to login page as a teacher
    And I type email "teacher4@gmail.com" on page
    And I type password "12345Abc" on page
    And I click on Sign In button
    And I click "Quizzes" menu item
    And I click on "Create New Quiz" butto
    And I typ title of quiz "Olga Taya2"
    And I click add question button
    And I select "Textual" question typ for question 1
    And I type text "huoyuoudyfsgsjdhifgukfiaoafhigiuaiugaigougauiiaghoahovahoauvhohgfuyglbclj fguip fguiahl uhuifaupiph uhaubilu hcahlk blcajablkjnc jbcan jbcjlblkj jbcljabvklb; lbalbv;.n jbaklnlak bvljknlkjbnljkbljkunkjn;b.vyugfy hfbkjlnluhihpuihvpi bvuljbniuln dbviufbp;ls hbvuihvpiuh bvkbpi ubvapubvplanl ouivhbphuhvfjkvfdjvbflj hdfbjlkfbvljdkvbpuirhgeruvnljbfjlvbuirebvdfljvb bvuihduihpuihkjnvs bvauib bvuihiuphihi jdbvuuiniudshvuivn hbvauhuihiuhiahviphijivnjbbjvbhuhifhifhwyfp89qh89hvkuehfp8ry2387wejp928ur290ur920urf8we8yf98 uuhfuhf834hhfduhfuiehfuisanchiuefhdskuhcefhukunhpiqufhpq8328ry829neyfhncncncnvvjxc9u3r92uncnfh893ycnjcjbvhcbvhjb9843ryy9384cnvbhjbdhjbvhjdbvhjbcvhjbp84yr483ncjdbvhb387yr348fhdnhzvbfdyvbh984hrbfduvjnvjbhvb oueyrge78wyrfd89pewufhnsjdncbdvb874bhjvcxbvhmb,jhzbvvuyrgdf78uhwibfchsbvhbb8384yrbbhdbcxhvbhjbhkjbxcvhkjzbhkjvzbkhjvbkjhhe8wyibvchdbv hhjb bkhkhjvbiulh89ru493883443hiuvfdnjvnv j bcauibajhbvpqghfp89ehvuiqbvjlbvjp9eq8rrfy89hfhufdhvp98ihvbhvncncvhvhkbc chvjzbljhfeirubcjhsbvjb" for question 1
    And I click "Save" button
    Then Quiz "Olga Taya2" is present in list of quizzes
    And I click "Olga Taya2" on list of quizzes
    And I click "Delete" button on Quizz "Olga Taya2" table
    And I confirm "Delete" in "Confirmation" pop-up window

  Scenario: Textual question-Text- Max 1001 characters
    When I navigate to login page as a teacher
    And I type email "teacher4@gmail.com" on page
    And I type password "12345Abc" on page
    And I click on Sign In button
    And I click "Quizzes" menu item
    And I click on "Create New Quiz" butto
    And I typ title of quiz "Olga Taya3"
    And I click add question button
    And I select "Textual" question typ for question 1
    And I type text "huoyuoudyfsgsjdhifgukfiaoafhigiuaiugaigougauiiaghoahovahoauvhohgfuyglbclj fguip fguiahl uhuifaupiph uhaubilu hcahlk blcajablkjnc jbcan jbcjlblkj jbcljabvklb; lbalbv;.n jbaklnlak bvljknlkjbnljkbljkunkjn;b.vyugfy hfbkjlnluhihpuihvpi bvuljbniuln dbviufbp;ls hbvuihvpiuh bvkbpi ubvapubvplanl ouivhbphuhvfjkvfdjvbflj hdfbjlkfbvljdkvbpuirhgeruvnljbfjlvbuirebvdfljvb bvuihduihpuihkjnvs bvauib bvuihiuphihi jdbvuuiniudshvuivn hbvauhuihiuhiahviphijivnjbbjvbhuhifhifhwyfp89qh89hvkuehfp8ry2387wejp928ur290ur920urf8we8yf98 uuhfuhf834hhfduhfuiehfuisanchiuefhdskuhcefhukunhpiqufhpq8328ry829neyfhncncncnvvjxc9u3r92uncnfh893ycnjcjbvhcbvhjb9843ryy9384cnvbhjbdhjbvhjdbvhjbcvhjbp84yr483ncjdbvhb387yr348fhdnhzvbfdyvbh984hrbfduvjnvjbhvb oueyrge78wyrfd89pewufhnsjdncbdvb874bhjvcxbvhmb,jhzbvvuyrgdf78uhwibfchsbvhbb8384yrbbhdbcxhvbhjbhkjbxcvhkjzbhkjvzbkhjvbkjhhe8wyibvchdbv hhjb bkhkhjvbiulh89ru493883443hiuvfdnjvnv j bcauibajhbvpqghfp89ehvuiqbvjlbvjp9eq8rrfy89hfhufdhvp98ihvbhvncncvhvhkbc chvjzbljhfeirubcjhsbvjb" for question 1
    And I click "Save" button
    Then message "Too long. Should be not more than 1000 char" appears


