*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${GOOGLE_URL}     https://www.google.com
${SEARCH_TERM}    Robot Framework

*** Test Cases ***
Simple Google Search
    [Documentation]    Open Google and search for a term, then verify results.
    Open Browser    https://www.google.com    chrome    options=add_argument(--headless),add_argument(--no-sandbox),add_argument(--disable-dev-shm-usage)