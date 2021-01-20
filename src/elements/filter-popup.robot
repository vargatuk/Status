*** Variables ***
${item}     //li[@class="filter-popup__preview-item"]

*** Keywords ***
filter-popap select item
    [Arguments]  ${item_name}
    ${item_selector}  set variable     ${item}\[contains(text(),"${item_name}")]
    wait until element is visible      ${item_selector}  2
    click element  ${item_selector}
    wait until element is not visible  ${item_selector}  2
