*** Settings ***

Resource    ..//resources/base.resource
Resource    ..//resources/Script.resource

Test Setup       Inicializador   
Test Teardown    Take Screenshot


*** Test Cases ***

Validar o titulo do site
    
    Given que abro o navegador
    When acesso o site
    Then no tituto da pagina é apresentado     Parodify by Papito
    

Tocar musica ao clicar no botão play
    Given que acesso o site
    When clico no botão play
    Then a musica é iniciada 

Pausar musica ao clicar no botão pause
    Given que acesso o site
    And a musica esteja tocando
    When clico no botão pause
    Then a musica para de tocar

Validar que o elemento de identificação do site funciona
    [Template]        Validacao

    Parodify by 
    Parodify by Papitoo
    Parodify by Papit
    Parodify 

Testar todos botoes de play
    [Tags]        Todas_musicas
    [Template]    Play 

    Bughium
    Nice Bugs Finish Devs
    Bug Suede Shoes
    All The Small Sprints
    The Devs Aren't Alright
    Symphony of Production

Validar apresentação da lista de musicas
    Given que acesso o site
    When a lista de musicas laterais é apresentada
    Then valido os nomes apresentados        Back in Test    
    ...    Bug Me Tender    Bug Suede Shoes    No Test    Nice Bugs Finish Devs
    ...    The Devs Aren't Alright    Symphony of Production    All The Small Sprints


           