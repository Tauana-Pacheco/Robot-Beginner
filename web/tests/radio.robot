*** Settings *** 
Resource        base.robot

Test Setup      Nova sessão 
Test Teardown   Encerra sessão

*** Test Cases ***
Seleção por ID
  Go to                             ${url}/radios
  Select Radio Button              movies   cap
  Radio Button Should Be Set To    movies   cap

Seleção por Value
  Go to                             ${url}/radios
  Select Radio Button              movies   guardians
  Radio Button Should Be Set To    movies   guardians
