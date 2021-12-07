*** Settings *** 
Resource        base.robot

Test Setup      Nova sessão 
Test Teardown   Encerra sessão
 

*** Variables ***
${check_thor}        id:thor
${check_iron}        css:input[value='iron-man']
${check_panther}     xpath://*[@id='checkboxes']/input[7]


*** Test Cases *** 
Marcar oção com ID
  Go To                           ${url}/checkboxes    
  Select Checkbox                 ${check_thor}
  Checkbox Should Be Selected     ${check_thor} 

Marcar oção com CSS Selector 
  [tags]    ironman
  Go To                           ${url}/checkboxes    
  Select Checkbox                 ${check_iron} 
  Checkbox Should Be Selected     ${check_iron}  

Marcar oção com Xpath
  [tags]    ironman
  Go To                           ${url}/checkboxes    
  Select Checkbox                 ${check_panther} 
  Checkbox Should Be Selected     ${check_panther} 
  Sleep                           5 
