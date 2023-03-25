*** Settings ***
Library     SeleniumLibrary


*** Variables ***
# Explicit waits
${timeout_short}    10s
${timeout_long}     20s

# Selenium hub
${remote_url}       http://localhost:4444


*** Keywords ***
Setup test environment with "${ag_browser}"
    Set Screenshot Directory    EMBED
    Open Browser    url=about:blank    browser=${ag_browser}    remote_url=${remote_url}
