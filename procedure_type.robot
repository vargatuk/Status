*** Settings ***
Documentation   Тестування фільтра пошуку "Процедура"
Library  SeleniumLibrary
Resource  keywords.robot

*** Variables ***

*** Test Cases ***

Test_Procedure_type_search_filter
    [Documentation]  This is some basic info about the test
    [Tags]  Smoke
    Test Case Setup
    Click on Procedure type search filter
    wait page contain procedure dropdown menu
    Choose belowThreshold Procedure type
    Дочекатися результатів пошуку
    Choose first search result
    Дочекатися відкриття тендеру
    Verify belowThreshold Procedure type
    Test Case Teardown

Test aboveThresholdUA search filter
    [Documentation]  This is some basic info about the test
    [Tags]  search_aboveThresholdUA
    Test Case Setup
    Click on Procedure type search filter
    wait page contain procedure dropdown menu
    Choose aboveThresholdUA Procedure type
    Дочекатися результатів пошуку
    Choose first search result
    Дочекатися відкриття тендеру
    Verify aboveThresholdUA Procedure type
    Test Case Teardown

Test aboveThresholdEU search filter
    [Documentation]  This is some basic info about the test
    [Tags]  search_aboveThresholdEU
    Test Case Setup
    Click on Procedure type search filter
    wait page contain procedure dropdown menu
    Choose aboveThresholdEU Procedure type
    Дочекатися результатів пошуку
    Choose first search result
    Дочекатися відкриття тендеру
    Verify aboveThresholdEU Procedure type
    Test Case Teardown

Test negotiation search filter
    [Documentation]  This is some basic info about the test
    [Tags]  search_negotiation
    Test Case Setup
    Click on Procedure type search filter
    wait page contain procedure dropdown menu
    Choose negotiation Procedure type
    Дочекатися результатів пошуку
    Choose first search result
    Дочекатися відкриття тендеру
    Verify negotiation Procedure type
    Test Case Teardown

Test negotiation.quick search filter
    [Documentation]  This is some basic info about the test
    [Tags]  search_negotiation.quick
    Test Case Setup
    Click on Procedure type search filter
    wait page contain procedure dropdown menu
    Choose negotiation.quick Procedure type
    Дочекатися результатів пошуку
    Choose first search result
    Дочекатися відкриття тендеру
    Verify negotiation.quick Procedure type
    Test Case Teardown

Test competitiveDialogueUA search filter
    [Documentation]  This is some basic info about the test
    [Tags]  search_competitiveDialogueUA
    Test Case Setup
    Click on Procedure type search filter
    wait page contain procedure dropdown menu
    Choose competitiveDialogueUA Procedure type
    Дочекатися результатів пошуку
    Choose first search result
    Дочекатися відкриття тендеру
    Verify competitiveDialogueUA Procedure type
    Test Case Teardown

Test competitiveDialogueEU search filter
    [Documentation]  This is some basic info about the test
    [Tags]  search_competitiveDialogueEU
    Test Case Setup
    Click on Procedure type search filter
    wait page contain procedure dropdown menu
    Choose competitiveDialogueEU Procedure type
    Дочекатися результатів пошуку
    Choose first search result
    Дочекатися відкриття тендеру
    Verify competitiveDialogueEU Procedure type
    Test Case Teardown

Test competitiveDialogueUA.stage2 search filter
    [Documentation]  This is some basic info about the test
    [Tags]  search_competitiveDialogueUA.stage2
    Test Case Setup
    Click on Procedure type search filter
    wait page contain procedure dropdown menu
    Choose competitiveDialogueUA.stage2 Procedure type
    Дочекатися результатів пошуку
    Choose first search result
    Дочекатися відкриття тендеру
    Verify competitiveDialogueUA.stage2 Procedure type
    Test Case Teardown

Test competitiveDialogueEU.stage2 search filter
    [Documentation]  This is some basic info about the test
    [Tags]  search_competitiveDialogueEU.stage2
    Test Case Setup
    Click on Procedure type search filter
    wait page contain procedure dropdown menu
    Choose competitiveDialogueEU.stage2 Procedure type
    Дочекатися результатів пошуку
    Choose first search result
    Дочекатися відкриття тендеру
    Verify competitiveDialogueEU.stage2 Procedure type
    Test Case Teardown


*** Keywords ***