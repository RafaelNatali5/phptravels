***Settings***
Resource        ../Infra/base.robot

***Variables***
${account_type}     xpath://span[@class="selection"]/span

***Keywords***
Selecionar Tipo
    [Arguments]     ${type}
    ${account_types}=       Get WebElement      xpath://li[text()="${type}"]
    Click Element       ${account_types}

Acessar o site de Registro
    Ir Para     signup
    
Preencher as informações da tela
    Click Element       ${account_type}
    Selecionar Tipo     Agent
    Sleep       5s

Clicar em Registrar