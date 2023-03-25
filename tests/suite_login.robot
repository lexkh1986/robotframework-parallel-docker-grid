*** Settings ***
Resource            ../settings/settings.resource

Suite Setup         Setup test environment
Suite Teardown      Close All Browsers
Test Timeout        20s


*** Variables ***
@{env}                  browserName: chrome    platformName: LINUX
${remote_url}           http://localhost:4444

${el_search_bar}        css=*[name=q]
${el_result_count}      css=div#result-stats


*** Test Cases ***
TC00001 Login with valid user
    Open Browser
    ...    url=https://google.com/?hl=en
    ...    browser=chrome
    ...    remote_url=${remote_url}
    ...    desired_capabilities=${env}

    Wait Until Element Is Visible    ${el_search_bar}    10s
    Input Text    ${el_search_bar}    This is a test keyword
    Press Keys    ${None}    ENTER
    Element Should Be Visible    ${el_result_count}
    Capture Page Screenshot    EMBED

