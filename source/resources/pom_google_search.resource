*** Settings ***
Resource    ../settings/settings.resource


*** Variables ***
${url}                  https://google.com/?hl=en
${el_search_bar}        css=*[name=q]
${el_result_count}      css=div#result-stats


*** Keywords ***
Navigate to Google Search
    Go To    ${url}

Search with keyword "${ag_keyword}"
    Wait Until Element Is Visible    ${el_search_bar}    ${timeout_short}
    Input Text    ${el_search_bar}    ${ag_keyword}
    Press Keys    ${None}    ENTER

Verify search result page displays
    Element Should Be Visible    ${el_result_count}
