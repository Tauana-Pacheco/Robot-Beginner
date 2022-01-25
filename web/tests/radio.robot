*** Settings *** 
Resource        base.robot

Test Setup      Nova sessão 
Test Teardown   Encerra sessão

*** Test Cases ***
Selection by ID
  Go to                             ${url}/radios
  Select Radio Button              movies   cap
  Radio Button Should Be Set To    movies   cap

Selection by Value
  Go to                             ${url}/radios
  Select Radio Button              movies   guardians
  Radio Button Should Be Set To    movies   guardians
