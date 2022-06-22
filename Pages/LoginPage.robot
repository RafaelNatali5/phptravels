***Settings***
Resource        ../Infra/base.robot
Resource        ./AccountPage.robot
***Variables***
${txtUsername}      xpath://input[@placeholder="Email"]
${txtPassword}      xpath://input[@placeholder="Passworld"]
${btnLogin}         xpath://button/[./span[text()=%22Login%22]]

***Keywords
#Funções

Escrever login
    [Arguments]     ${username}
    Input Text      ${txtUsername}      ${username}
    
Escrever senha
    [Arguments]     ${password}
    Input Text      ${txtPassword}      ${password}

Clicar botao login
    Click button    ${btnLogin}

#Funcionalidades
Realize login 
    [Arguments]     ${username}     ${password}

    Escrever login      ${username}
    Escrever senha      ${password}
    Clicar botao login
    
#Passos
Acessar o site principal
    Log to console      Acessou a tela principal
    ${date}=        Get Date
    ${other}=        Other Function
    Log to console      ${date}
    Log to console      ${other}
Logar com login e senha corretos
    Realize login       standard_user       secret_sauce

Deve ser redirecionado para a tela de produtos
    Verificar label Products

