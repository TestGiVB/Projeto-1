***Settings***

Documentation     Validação da Busca e inserção de produto no carrinho

Resource          ../resources/Actions.robot

Library           SeleniumLibrary


Suite Setup        Open Session
Suite Teardown     Close Session



Test Teardown       After Test





***Test Cases***  

Busca de Produdo com Sucesso e Inserção no carrinho
     #Dado que acesse a home do site  => Foi implemeando em BasePage.robot
     Quando buscar por produto específico
     Então deverá retornar todas as opções referente ao produto mencionado
     E devera acessar a pagina de algum selecionado
     E o produto deverá ser adicionado no carrinho

           


Busca por produto com escrita incorreta       
    Dado que acesse a home do site  
    Quando digitar no campo de busca nome incorreto do produto
    Então deverá ser exibido sugestões de produtos baseado na palavavra mencionada


   



