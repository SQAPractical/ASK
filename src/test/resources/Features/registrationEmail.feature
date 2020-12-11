Feature: Registration - Email
  Scengitario: Registration - Email - Correct format
    When I open "registration" page
    And I type first name "Nozima"
    And I type last name "Botirova"
    And I type email "nozishka15@mail.ru"
    And I type group code "111"
    And I type password "Nozik123"
    And I type to confirm password "Nozik123"
    Then I click on Register Me button
    Then text "You have been Registered." appears

  Scenario: Registration - Email - Correct format with +1
    When I open "registration" page
    And I type first name "Nozima"
    And I type last name "Botirova"
    And I type email "nozishka15+1@mail.ru"
    And I type group code "111"
    And I type password "Nozik123"
    And I type to confirm password "Nozik123"
    Then I click on Register Me button
    Then text "You have been Registered." appears

  Scenario: Registration - Email - Whitespaces
    When I open "registration" page
    And I type first name "Nozima"
    And I type last name "Botirova"
    And I type email "n ozishka18@mail.ru"
    And I type group code "111"
    And I type password "Nozik123"
    And I type to confirm password "Nozik123"
    Then I click on Register Me button
    Then text "Whitespaces are not allowed" appears

  Scenario: Registration - Email - required field
    When I open "registration" page
    And I type first name "Nozima"
    And I type last name "Botirova"
    And I type group code "111"
    And I type password "Nozik123"
    And I type to confirm password "Nozik123"
    Then I click on Register Me button
    Then text "This field is required" appears

  Scenario: Registration - Email - Length of local port (64 char), domain (63 char), last part of domain (63 char)
    When I open "registration" page
    And I type first name "Nozima"
    And I type last name "Botirova"
    And I type email "ddasdfasdjkadsfaddsfkjkjasdfkjaksdfjkajkjkjasdkfjkasjdfakjdkafka@adasdfasddjkadsfadsfkjkjasdfkjaksdjkajkjkjasdkfjkasjdfakjdkafka.adasdasdjkadfadsfkjkjasdfkjaksdfjkajkjkjasdkfjkasjdfakjdkafkaea"
    And I type group code "111"
    And I type password "Nozik123"
    And I type to confirm password "Nozik123"
    Then I click on Register Me button
    Then text "You have been Registered." appears

  Scenario: Registration - Email - Length of local port (64+1 char), domain (63+1 char), last part of domain (63+1char)
    When I open "registration" page
    And I type first name "Nozima"
    And I type last name "Botirova"
    And I type email "beasdfasdjkadsffaddsfkjkjasdfkjaksdfjkajkjkjasdkfjkasjdfakjdkafka@ada3sdfasddjkadsfadsfkjkjasdfkjaksdjkajkjkjasdkfjkasjdfakjdkafka.adiasdasdjkadfadsfkjkjasdfkjaksdfjkajkjkjasdkfjkasjdfakjdkafkaed"
    And I type group code "111"
    And I type password "Nozik123"
    And I type to confirm password "Nozik123"
    Then I click on Register Me button
    Then text "Should be a valid email address" appears

  Scenario: Registration - Email - Leading spaces are not allowed
    When I open "registration" page
    And I type first name "Nozima"
    And I type last name "Botirova"
    And I type email " nozishka18@mail.ru"
    And I type group code "111"
    And I type password "Nozik123"
    And I type to confirm password "Nozik123"
    Then I click on Register Me button
    Then text "Whitespaces are not allowed" appears

  Scenario: Registration - Email - Trailing spaces are not allowed
    When I open "registration" page
    And I type first name "Nozima"
    And I type last name "Botirova"
    And I type email "nozishka18@mail.ru "
    And I type group code "111"
    And I type password "Nozik123"
    And I type to confirm password "Nozik123"
    Then I click on Register Me button
    Then text "Whitespaces are not allowed" appears

  Scenario: Registration - Email - Length of local port (64+1 char), domain (63 char), last part of domain (63 char)
    When I open "registration" page
    And I type first name "Nozima"
    And I type last name "Botirova"
    And I type email "beasdfasdjkadsffaddsfkjkjasdfkjaksdfjkajkjkjasdkfjkasjdfakjdkafka@da3sdfasddjkadsfadsfkjkjasdfkjaksdjkajkjkjasdkfjkasjdfakjdkafka.aiasdasdjkadfadsfkjkjasdfkjaksdfjkajkjkjasdkfjkasjdfakjdkafkaed"
    And I type group code "111"
    And I type password "Nozik123"
    And I type to confirm password "Nozik123"
    Then I click on Register Me button
    Then text "Should be a valid email address" appears

  Scenario: Registration - Email - Length of local port (64+1 char), domain (63+1 char), last part of domain (63 char)
    When I open "registration" page
    And I type first name "Nozima"
    And I type last name "Botirova"
    And I type email "beasdfasdjkadsffaddsfkjkjasdfkjaksdfjkajkjkjasdkfjkasjdfakjdkafka@daa3sdfasddjkadsfadsfkjkjasdfkjaksdjkajkjkjasdkfjkasjdfakjdkafka.aiasdasdjkadfadsfkjkjasdfkjaksdfjkajkjkjasdkfjkasjdfakjdkafkaed"
    And I type group code "111"
    And I type password "Nozik123"
    And I type to confirm password "Nozik123"
    Then I click on Register Me button
    Then text "Should be a valid email address" appears

  Scenario: Registration - Email - Length of local port (64+1 char), domain (63 char), last part of domain (63+1 char)
    When I open "registration" page
    And I type first name "Nozima"
    And I type last name "Botirova"
    And I type email "beasdfasdjkadsffaddsfkjkjasdfkjaksdfjkajkjkjasdkfjkasjdfakjdkafka@da3sdfasddjkadsfadsfkjkjasdfkjaksdjkajkjkjasdkfjkasjdfakjdkafka.aaiasdasdjkadfadsfkjkjasdfkjaksdfjkajkjkjasdkfjkasjdfakjdkafkaed"
    And I type group code "111"
    And I type password "Nozik123"
    And I type to confirm password "Nozik123"
    Then I click on Register Me button
    Then text "Should be a valid email address" appears