Feature: Registration - Email

  Scenario: ACJ-161.Registration - Email - valid email format
    Given I open "registration" page
    When I type first name "abc"
    And I type last name "test"
    And I type email "abc@abc.com" on registration page
    And I type group code "111111"
    And I type password "12345" on registration page
    And I type confirm password "12345"
    And I click Register Me button
    Then Text "You have been Registered." appears

  Scenario: ACJ-162.Registration - Email - Required field
    Given I open "registration" page
    When I type first name "abc"
    And I type last name "test"
    And I type email "" on registration page
    And I type group code "111111"
    And I type password "12345" on registration page
    And I type confirm password "12345"
    And I click Register Me button
    Then Text "This field is required" appears


  Scenario:    ACJ-163.Registration - Email - max char(64) in Local part of email
    Given I open "registration" page
    When I type first name "abc"
    And I type last name "test"
    And I type email "arsgdfasdgfvasdfcwasdferasdgfawdsfasdfcdsxcasdvcasdvcdsxzcasmmmm@gjkj.com" on registration page
    And I type group code "111111"
    And I type password "12345" on registration page
    And I type confirm password "12345"
    And I click Register Me button
    Then Text "You have been Registered." appears

  Scenario:    ACJ-164.Registration - Email - max char (65) in Local part of email
    Given I open "registration" page
    When I type first name "abc"
    And I type last name "test"
    And I type email "arsgdfasdgfvasdfcwasdferasdgfawdsfasdfcdsxcasdvcasdvcedsxzcasmmmm@gjkj.com" on registration page
    And I type group code "111111"
    And I type password "12345" on registration page
    And I type confirm password "12345"
    And I click Register Me button
    Then Text "Should be a valid email address" appears

  Scenario:    ACJ-165.Registration - Email - max char (63) in Domain part
    Given I open "registration" page
    When I type first name "abc"
    And I type last name "test"
    And I type email "dfg@arsgdfasdgfvasdfcwasdferasdgfawdsfasdfcdsxcasdvcasdvcedsxzcasmm.com" on registration page
    And I type group code "111111"
    And I type password "12345" on registration page
    And I type confirm password "12345"
    And I click Register Me button
    Then Text "You have been Registered." appears

  Scenario:    ACJ-166.Registration - Email - max char (64) Domain part
    Given I open "registration" page
    When I type first name "abc"
    And I type last name "test"
    And I type email "dfg@arsgdfasdgfvasdfcwasdferasdgfawdsfasdfcdsxcasdvcasdbvcedsxzcasmm.com" on registration page
    And I type group code "111111"
    And I type password "12345" on registration page
    And I type confirm password "12345"
    And I click Register Me button
    Then Text "Should be a valid email address" appears

  Scenario:    ACJ-168.Registration - Email - max char (63) in Domain part after (.)
    Given I open "registration" page
    When I type first name "abc"
    And I type last name "test"
    And I type email "dfg@com.arsgdfasdgfvasdfcwasdferasdgfawdsfasdfcdsxcasdvcasdvedsxzcasmm" on registration page
    And I type group code "111111"
    And I type password "12345" on registration page
    And I type confirm password "12345"
    And I click Register Me button
    Then Text "You have been Registered." appears

  Scenario:    ACJ-169.Registration - Email - max char (64) in Domain part after (.)
    Given I open "registration" page
    When I type first name "abc"
    And I type last name "test"
    And I type email "dfg@com.arsgdfasdgfvasdfcwasdferasdgfawdsfasdfcdsxcasdvcasdvedsxzfcasmm" on registration page
    And I type group code "111111"
    And I type password "12345" on registration page
    And I type confirm password "12345"
    And I click Register Me button
    Then Text "Should be a valid email address" appears

  Scenario:    ACJ-170.Registration - Email - White spaces
    Given I open "registration" page
    When I type first name "abc"
    And I type last name "test"
    And I type email "df g@com.axzcasmm" on registration page
    And I type group code "111111"
    And I type password "12345" on registration page
    And I type confirm password "12345"
    And I click Register Me button
    Then Text "Should be a valid email address" appears

  Scenario:    ACJ-171.Registration - Email - Missing @ character
    Given I open "registration" page
    When I type first name "abc"
    And I type last name "test"
    And I type email "dfgcom.axzcasmm" on registration page
    And I type group code "111111"
    And I type password "12345" on registration page
    And I type confirm password "12345"
    And I click Register Me button
    Then Text "Should be a valid email address" appears

  Scenario:    ACJ-172.Registration - Email - Missing "." character
    Given I open "registration" page
    When I type first name "abc"
    And I type last name "test"
    And I type email "dfg@comaxzcasmm" on registration page
    And I type group code "111111"
    And I type password "12345" on registration page
    And I type confirm password "12345"
    And I click Register Me button
    Then Text "Should be a valid email address" appears

