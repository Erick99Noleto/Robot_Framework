*** Settings ***
Library    SeleniumLibrary
Resource    ../resources/variaveis.robot

*** Test Cases ***
Criar Conta no Taskflow
    abrir a página do Taskflow
    inserir um nome de usuario válido
    inserir um email válido
    inserir uma senha válida
    cliclar no botão de Criar Conta

** Keywords ***
abrir a página do Taskflow
    Set Selenium Speed    3s
    Open Browser    ${URL_REGISTER}    Firefox
    Maximize Browser Window
inserir um nome de usuario válido
    Input Text    id:nome    ${NOME_USUARIO}

inserir um email válido
    Input Text    id:email    ${EMAIL_USUARIO}

inserir uma senha válida
    Input Text    id:senha    ${SENHA_USUARIO}

cliclar no botão de Criar Conta
    Click Button    xpath=//button[@type='submit']

