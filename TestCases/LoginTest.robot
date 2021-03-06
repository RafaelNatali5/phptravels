***Settings***
Resource        ../Pages/LoginPage.robot
Resource        ../Pages/SignupPage.robot

Test Setup          Open Session
Test Teardown       Close Session

***Test Cases***
Realizar login com sucesso
    [Tags]      login   loginSucesso
    Acessar o site principal
    Logar com login e senha corretos
    Deve ser redirecionado para a tela de produtos

Registro de usuario
    [Tags]      login   registro
    Acessar o site de Registro
    Preencher as informações da tela
    Clicar em Registrar
    Deve ser redirecionado para a tela de login
