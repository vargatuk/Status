*** Settings ***
Documentation  Testing of Status search filter
Library  SeleniumLibrary
Resource  keywords.robot

*** Variables ***

*** Test Cases ***

Test active tendering status Search Filter
    [Documentation]  This is some basic info about the test
    [Tags]  search_active_tendeirng
    Test Case Setup
    Click on Status search filter
    wait page contain status dropdown menu
    Choose active tendering status
    Дочекатися результатів пошуку
    Choose first search result
    Verify Tender Status Active Tendering
    Test Case Teardown

Test active.qualification status Search Filter
    [Documentation]  This is some basic info about the test
    [Tags]  search_active.qualification
    Test Case Setup
    Click on Status search filter
    wait page contain status dropdown menu
    Choose active.qualification status
    Дочекатися результатів пошуку
    Choose first search result
    Verify Tender Status Active.Qualification
    Test Case Teardown

Test active.awarded status Search Filter
    [Documentation]  This is some basic info about the test
    [Tags]  search_active.awarded
    Test Case Setup
    Click on Status search filter
    wait page contain status dropdown menu
    Choose active.awarded status
    Дочекатися результатів пошуку
    Choose first search result
    Verify Tender Status Active.Awarded
    Test Case Teardown

Test active.pre-qualification status Search Filter
    [Documentation]  This is some basic info about the test
    [Tags]  search_active.pre-qualification
    Test Case Setup
    Click on Status search filter
    wait page contain status dropdown menu
    Choose active.pre-qualification status
    Дочекатися результатів пошуку
    Choose first search result
    Verify Tender Status Active.pre-qualification
    Test Case Teardown

Test unsuccessful status Search Filter
    [Documentation]  This is some basic info about the test
    [Tags]  search_unsuccessful
    Test Case Setup
    Click on Status search filter
    wait page contain status dropdown menu
    Choose unsuccessful status
    Дочекатися результатів пошуку
    Choose first search result
    Verify Tender Status unsuccessful
    Test Case Teardown

Test cancelled status Search Filter
    [Documentation]  This is some basic info about the test
    [Tags]  search_cancelled
    Test Case Setup
    Click on Status search filter
    wait page contain status dropdown menu
    Choose cancelled status
    Дочекатися результатів пошуку
    Choose first search result
    Verify Tender Status cancelled
    Test Case Teardown

Test complete status Search Filter
    [Documentation]  This is some basic info about the test
    [Tags]  search_complete
    Test Case Setup
    Click on Status search filter
    wait page contain status dropdown menu
    Choose complete status
    Дочекатися результатів пошуку
    Choose first search result
    Verify Tender Status complete
    Test Case Teardown

Test active.auction status Search Filter
    [Documentation]  This is some basic info about the test
    [Tags]  search_active.auction
    Test Case Setup
    Click on Status search filter
    wait page contain status dropdown menu
    Choose active.auction status
    Дочекатися результатів пошуку
    Choose first search result
    Verify Tender Status active.auction
    Test Case Teardown

Test active.qualification.stand-still status Search Filter
    [Documentation]  This is some basic info about the test
    [Tags]  search_active.qualification.stand-still
    Test Case Setup
    Click on Status search filter
    wait page contain status dropdown menu
    Choose active.qualification.stand-still status
    Дочекатися результатів пошуку
    Choose first search result
    Verify Tender Status active.qualification.stand-still
    Test Case Teardown

*** Keywords ***