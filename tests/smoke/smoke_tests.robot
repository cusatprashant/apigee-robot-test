*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${GOOGLE_URL}     https://www.google.com
${SEARCH_TERM}    Robot Framework

*** Test Cases ***
Open Google With Headless Chrome
    ${options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys
    Call Method    ${options}    add_argument    --headless
    Call Method    ${options}    add_argument    --no-sandbox
    Call Method    ${options}    add_argument    --disable-dev-shm-usage
    Create WebDriver    Chrome    chrome_options=${options}
    Go To    https://www.google.com
    Page Should Contain    Google
