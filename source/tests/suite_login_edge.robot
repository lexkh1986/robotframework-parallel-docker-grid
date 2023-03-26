*** Settings ***
Resource            ../settings/settings.resource
Resource            ../resources/pom_google_search.resource

Suite Setup         Setup test environment with "edge"
Suite Teardown      Close All Browsers
Test Timeout        ${timeout_long}


*** Test Cases ***
TC00001 Login with valid user
    Navigate to Google Search
    Search with keyword "This is a test keyword"
    Verify search result page displays
    Capture Page Screenshot    EMBED
