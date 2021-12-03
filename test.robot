*** Settings ***
Library     app.py 

***Test Cases ***
Deve retornar mensagem de boas vindas
  ${result}=         Welcome    Tauana
    Should Be Equal  ${result}  E aí Tauana, bem vinde ao curso básico de Robot Framework!