*** Settings ***
Library  Selenium2Library

*** Variables ***
${browser}  firefox
${url}  https://google.com/
${expected_result}  top 10 spotify song

*** Keywords ***
open
  Open Browser     ${url}     ${browser}
input
  Input Text    name=q    ${expected_result}
  Submit Form  
wait
  Wait Until Page Contains    ${expected_result}

***Test Cases***
Search case
  open
  input
  wait