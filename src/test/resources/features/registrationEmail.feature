Feature: Registration - Email
  Scenario: Registration - Email - Other than @ special chars (238)
    When I navigate to registration page
    And I type email "&test@test.com"
    And I click on last name field
    Then Text "Should be a valid email address" appears

  Scenario: Registration - Email - Alphanumeric chars allowed (425)
    When I navigate to registration page
    And I type first name "Ivan"
    And I type last name "Test"
    And I type email "2mounir.tijan@starveyourego.com"
    And I type group code "QQQ"
    And I type password "12345"
    And I confirm password "12345"
    And I click Register me button
    Then Text "You have been Registered." appears

  Scenario: Registration - Email - Field is required (256)
    When I navigate to registration page
    And I type first name "Ivan"
    And I type last name "Test"
    And I type group code "QQQ"
    And I type password "12345"
    And I confirm password "12345"
    And I click Register me button
    Then Text "This field is required" appears

  Scenario: Registration - Email - Whitespaces are not allowed (266)
    When I navigate to registration page
    And I type first name "Ivan"
    And I type last name "Test"
    And I type email "2te st@gmail.com"
    And I type group code "QQQ"
    And I type password "12345"
    And I confirm password "12345"
    And I click Register me button
    Then Text "Should be a valid email address" appears

  Scenario: Registration - Email - 64 alphanumeric chars on the left are accepted (543)
    When I navigate to registration page
    And I type first name "Ivan"
    And I type last name "Test"
    And I type email "236hdjdksburtdebfndgscabwtrbvfghfklfhgftyhnhggjkjhbkhdhdncbfyeud@test.com"
    And I type group code "QQQ"
    And I type password "12345"
    And I confirm password "12345"
    And I click Register me button
    Then Text "You have been Registered." appears

  Scenario: Registration - Email - 64 latin letters on the left are accepted (542)
    When I navigate to registration page
    And I type first name "Ivan"
    And I type last name "Test"
    And I type email "fgfhdjdksburtdebfndgscabwtrbvfghfklfhgftyhnhggjkjhbkhdhdncbfyeud@test.com"
    And I type group code "QQQ"
    And I type password "12345"
    And I confirm password "12345"
    And I click Register me button
    Then Text "You have been Registered." appears

  Scenario: Registration - Email - 64 digits on the left are accepted (262)
    When I navigate to registration page
    And I type first name "Ivan"
    And I type last name "Test"
    And I type email "1234567890123456789012345678901234567890123456789012345678901234@test.com"
    And I type group code "QQQ"
    And I type password "12345"
    And I confirm password "12345"
    And I click Register me button
    Then Text "You have been Registered." appears

  Scenario: Registration - Email - Domain with 63 alphanumeric chars before "." is accepted (264)
    When I navigate to registration page
    And I type first name "Ivan"
    And I type last name "Test"
    And I type email "t@g34hjfksdmndhkldldkjgjdgjljgldldfgjjdklldfgjkjfgfkdljkkdkkhfjdh.com"
    And I type group code "QQQ"
    And I type password "12345"
    And I confirm password "12345"
    And I click Register me button
    Then Text "You have been Registered." appears

  Scenario: Registration - Email - Domain with 63 latin letters before "." is accepted (544)
    When I navigate to registration page
    And I type first name "Ivan"
    And I type last name "Test"
    And I type email "t@gjhhjfksdmndhkldldkjgjdgjljgldldfgjjdklldfgjkjfgfkdljkkdkkhfjdh.com"
    And I type group code "QQQ"
    And I type password "12345"
    And I confirm password "12345"
    And I click Register me button
    Then Text "You have been Registered." appears

  Scenario: Registration - Email - Domain with 63 digits before "." is accepted (545)
    When I navigate to registration page
    And I type first name "Ivan"
    And I type last name "Test"
    And I type email "t@123565478952102354520123562014789654612541023598744512689897102.com"
    And I type group code "QQQ"
    And I type password "12345"
    And I confirm password "12345"
    And I click Register me button
    Then Text "You have been Registered." appears

  Scenario: Registration - Email - 63 alphanumeric chars in the last part of domain are allowed (546)
    When I navigate to registration page
    And I type first name "Ivan"
    And I type last name "Test"
    And I type email "test@test.234ghfjdkdltitfnbmn568jgkgkfkr432njkhjklkjhgddhdurhgjfhdhgghfjd"
    And I type group code "QQQ"
    And I type password "12345"
    And I confirm password "12345"
    And I click Register me button
    Then Text "You have been Registered." appears

  Scenario: Registration - Email - 63 latin letters in the last part of domain are allowed (547)
    When I navigate to registration page
    And I type first name "Ivan"
    And I type last name "Test"
    And I type email "test@test.poighfjdkdltitfnbmnuytjgkgkfkrkjhnjkhjklkjhgddhdurhgjfhdhgghfjd"
    And I type group code "QQQ"
    And I type password "12345"
    And I confirm password "12345"
    And I click Register me button
    Then Text "You have been Registered." appears

  Scenario: Registration - Email - 63 digits in the last part of domain are allowed (331)
    When I navigate to registration page
    And I type first name "Ivan"
    And I type last name "Test"
    And I type email "test@test.123456789012345678901234567890123456789012345678901234567890123"
    And I type group code "QQQ"
    And I type password "12345"
    And I confirm password "12345"
    And I click Register me button
    Then Text "You have been Registered." appears

  Scenario: Registration - Email - Local Part with 65 alphanumeric chars on the left is not allowed (548)
    When I navigate to registration page
    And I type first name "Ivan"
    And I type last name "Test"
    And I type email "236hdjdksburtdebfndgsrcabwtrbvfghfklfhgftyhnhggjkjhbkhdhdncbfyeud@test.com"
    And I type group code "QQQ"
    And I type password "12345"
    And I confirm password "12345"
    And I click Register me button
    Then Text "Should be a valid email address" appears

  Scenario: Registration - Email - Local Part with 65 latin letters on the left is not allowed (569)
    When I navigate to registration page
    And I type first name "Ivan"
    And I type last name "Test"
    And I type email "gjhhjfksdmndhkldldkjgjdgjljgldldfgjjdklldfgjkjfgfkdljkkdkkhfjhydh@test.com"
    And I type group code "QQQ"
    And I type password "12345"
    And I confirm password "12345"
    And I click Register me button
    Then Text "Should be a valid email address" appears

  Scenario: Registration - Email - Local Part with 65 digits on the left is not allowed (570)
    When I navigate to registration page
    And I type first name "Ivan"
    And I type last name "Test"
    And I type email "15245897654230125420158987853636215458974235215890025652012589741@test.com"
    And I type group code "QQQ"
    And I type password "12345"
    And I confirm password "12345"
    And I click Register me button
    Then Text "Should be a valid email address" appears

  Scenario: Registration - Email - Domain with 64 alphanumeric chars before "." is not accepted (571)
    When I navigate to registration page
    And I type first name "Ivan"
    And I type last name "Test"
    And I type email "t@gjhhhjf258mndhkldldkjgjdgjljgldldfgjjdklldfgjkjfgfkdljkkdkkhfjdh.com"
    And I type group code "QQQ"
    And I type password "12345"
    And I confirm password "12345"
    And I click Register me button
    Then Text "Should be a valid email address" appears

  Scenario: Registration - Email - Domain with 64 latin letters before "." is not accepted (550)
    When I navigate to registration page
    And I type first name "Ivan"
    And I type last name "Test"
    And I type email "t@gjhhhjfksdmndhkldldkjgjdgjljgldldfgjjdklldfgjkjfgfkdljkkdkkhfjdh.com"
    And I type group code "QQQ"
    And I type password "12345"
    And I confirm password "12345"
    And I click Register me button
    Then Text "Should be a valid email address" appears

  Scenario: Registration - Email - Domain with 64 digits before "." is not accepted (572)
    When I navigate to registration page
    And I type first name "Ivan"
    And I type last name "Test"
    And I type email "t@1524587895632514789521023202565210478023654102589521023589325014.com"
    And I type group code "QQQ"
    And I type password "12345"
    And I confirm password "12345"
    And I click Register me button
    Then Text "Should be a valid email address" appears

  Scenario: Registration - Email - 64 alphanumeric chars in the last part of domain are not allowed (573)
    When I navigate to registration page
    And I type first name "Ivan"
    And I type last name "Test"
    And I type email "t@rew.gfdjaakgfghdfjghdjvnfvjildhguryubv hjbfjviviur4569872548gdhdjbvh"
    And I type group code "QQQ"
    And I type password "12345"
    And I confirm password "12345"
    And I click Register me button
    Then Text "Should be a valid email address" appears

  Scenario: Registration - Email - 64 latin letters in the last part of domain are not allowed (574)
    When I navigate to registration page
    And I type first name "Ivan"
    And I type last name "Test"
    And I type email "t@rew.gfdjaakgfghdfjghdjvnfvjildhguryubv hjbfjviviujoiuytrmbnvgdhdjbvh"
    And I type group code "QQQ"
    And I type password "12345"
    And I confirm password "12345"
    And I click Register me button
    Then Text "Should be a valid email address" appears

  Scenario: Registration - Email - 64 digits in the last part of domain are not allowed (575)
    When I navigate to registration page
    And I type first name "Ivan"
    And I type last name "Test"
    And I type email "t@rew.4562321548796532548746632100251203289001253201254789652102570258"
    And I type group code "QQQ"
    And I type password "12345"
    And I confirm password "12345"
    And I click Register me button
    Then Text "Should be a valid email address" appears
