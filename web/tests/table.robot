*** Settings *** 
Resource        base.robot

Test Setup      New session 
Test Teardown   End session

*** Test Cases ***
Verify the number of lines
  Go to                             ${url}/tables
  Table Row Should Contain       id:actors   2   @vindiesel

Discover the line by the text and validate the other values
  Go to                         ${url}/tables
  ${target}=                    Get WebElement        xpath:.//tr[contains(.,'@chadwickboseman')]
  Log                           ${target.text}
  Log to Console                ${target.text}
  Should Contain                ${target.text}        $ 700.000
  Should Contain                ${target.text}        Pantera Negra