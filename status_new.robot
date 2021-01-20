#  robot --consolecolors on -L TRACE:INFO -d test_output status_new.robot
*** Settings ***
Documentation   Перевірка роботи фільтра статусів на порталі Прозорро
Suite Setup     browser - відкрити браузер
Suite Teardown  browser - закрити браузер
Resource        src/src.robot
Resource        src/elements/filter-popup.robot


*** Variables ***
@{список статусів}
...  Період уточнень
...  Подання пропозицій
...  Прекваліфікація
...  Прекваліфікація (період оскарження)
...  Аукціон
...  Кваліфікація переможця
...  Кваліфікація переможця (період оскарження)
#...  Пропозиції розглянуті
...  Завершена
...  Торги відмінено
...  Торги не відбулися


*** Test Cases ***
Перевірка роботи фільтра статусів
    [Tags]  filters
    FOR  ${статус}  IN  @{список статусів}
    go to  ${start_page}
    filter "Статус" - вибрати значення              ${статус}
    tag - відображено на сторінці та містить текст  ${статус}
    search - перейти до тендера за номером  1
    _статус тендера повинен бути  ${статус}
    END


*** Keywords ***
filter "Статус" - вибрати значення
    [Arguments]  ${status}
    ${button}  set variable  //label[@for="status"]
    wait until element is visible  ${button}  2
    click element  ${button}
    filter-popap select item  ${status}

tag - відображено на сторінці та містить текст
    [Arguments]  ${text}
    ${tag_selector}  set variable  //*[@class="search-filters__preview-item-text"][contains(text(),"${text}")]
    wait until page contains element  ${tag_selector}  2

search - перейти до тендера за номером
    [Arguments]  ${number}
    ${selector}  set variable  (//*[@class="search-result__item"]//a)[${number}]
    wait until element is visible  ${selector}  10
    ${href_value}  get element attribute  ${selector}  href
    go to  ${href_value}

_статус тендера повинен бути
    [Arguments]  ${status}
    ${selector}  set variable  //*[@class="tender--head--inf margin-bottom"]//span[last()]
    wait until element is visible  ${selector}  2
    ${status_is}  get text  ${selector}
    should be equal as strings  ${status_is}  ${status}

