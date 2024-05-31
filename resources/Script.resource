*** Settings ***

Resource    Funcoes.resource

*** Keywords ***

#Validar o titulo do site
Given que abro o navegador  
    Take Screenshot

When acesso o site
    Take Screenshot

Then no tituto da pagina é apresentado
    [Arguments]    ${validar}

    ${res}    Get Title

    Should Be Equal    ${validar}    ${res}
    

#Tocar musica ao clicar no botão play
Given que acesso o site
    Wait For Elements State    xpath=//*[@id="root"]/div[1]/aside/a[1]/img    
    Take Screenshot

When clico no botão play   
    Play music 
    Take Screenshot

Then a musica é iniciada
    Wait For Elements State    xpath=//div[contains(@class, "song")]//h6[text()="Nice Bugs Finish Devs"]/..//button[contains(@class,"pause")]
    Sleep    2

#Pausar musica ao clicar no botão pause
And a musica esteja tocando
    Play music
    Wait For Elements State    xpath=//div[contains(@class, "song")]//h6[text()="Nice Bugs Finish Devs"]/..//button[contains(@class,"pause")]
    Sleep    5
    Take Screenshot

When clico no botão pause
    Pause music
    Take Screenshot
    
Then a musica para de tocar
    Wait For Elements State    xpath=//div[contains(@class, "song")]//h6[text()="Nice Bugs Finish Devs"]/..//button[contains(@class,"play")]

Validacao
    [Arguments]    ${validar}
    

    ${res}    Get Title

    Should Not Be Equal    ${validar}    ${res}

Play
    [Arguments]    ${validar}

    Click    xpath=//div[contains(@class, "song")]//h6[text()="${validar}"]/..//button[contains(@class,"play")]
    Sleep    3
    Take Screenshot
    
    Wait For Elements State   xpath=//div[contains(@class, "song")]//h6[text()="${validar}"]/..//button[contains(@class,"pause")]

#Validar apresentação da lista de musicas
When a lista de musicas laterais é apresentada
    Wait For Elements State    css=.mx-6 ul    visible
Then valido os nomes apresentados
    [Arguments]    @{txt}
    
           
    FOR    ${item}    IN    @{txt}    
        

        ${msg}    Get Text     xpath=//a[text()="${item}"] 
        Should Be Equal     ${msg}          ${item}

        
    END    