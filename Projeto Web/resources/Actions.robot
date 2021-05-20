*** Settings ***
Documentation   Actions é o arquivo que terá keywords que implementam os steps de testes

Library    SeleniumLibrary

Resource    BasePage.robot   



***Variables***
${BTN_COOKIE}      xpath=//*[@class="text-button-cookie"]
${CAMPO_BUSCA}      xpath=//*[@class="field-input-search ui-autocomplete-input"]
${BTN_PESQUISAR}    xpath=//*[@class="container-bloom-header field-icon-search"]
${TITULO_BUSCA}     xpath= //*[@class="header-search"]/h1/strong[text()="SOFA"]
${SUGESTOES}        xpath=//*[@class="ui-autocomplete ui-menu ui-widget ui-widget-content ui-corner-all"]
${IMAGE}           https://a-static.mlcdn.com.br/210x210/sofa-retratil-reclinavel-3-lugares-suede-veludo-moscow-besthouse/magazineluiza/121936206/cf8ac85a16575d847f2d632780de751a.jpg
${ADICIONAR SACOLA}   xpath=//*[@class="button__buy button__buy-product-detail js-add-cart-button js-main-add-cart-button js-add-box-prime"]
${BTN_CONTINUAR}      xpath=//*[@class="price-warranty__btn--continue btn-buy-warranty"][text()="continuar"]  
${PG_GARANTIA_ESTENDIDA}  xpath=//*[@class="warranty__title"][text()="Saiba como proteger o seu produto por muito mais tempo!"]  
${SACOLA}                 xpath=//*[@class="BasketPage-title"][text()="Sacola"]
${EXCLUIR_ITEM_CARRINHO}  xpath=//*[@class="BasketItem-delete-label"][text()="Excluir"]



*** Keywords ***
###DADO

Dado que acesse a home do site
  Go To    ${base_url}

###QUANDO
Quando buscar por produto específico
  Input Text         ${CAMPO_BUSCA}      SOFA
  Click Element      ${BTN_PESQUISAR}

Quando digitar no campo de busca nome incorreto do produto   
   Input Text     ${CAMPO_BUSCA}      Calca    


###ENTÃO

Então deverá retornar todas as opções referente ao produto mencionado

   Wait Until Element Is Visible    ${TITULO_BUSCA}

Então deverá ser exibido sugestões de produtos baseado na palavavra mencionada 
   Element Should Not Be Visible     ${SUGESTOES}

### E

E devera acessar a pagina de algum selecionado
  Click Image            ${IMAGE}

E o produto deverá ser adicionado no carrinho  
  Click Element         ${BTN_COOKIE}
  Click Element       ${ADICIONAR SACOLA}
  Wait Until Element Is Visible     ${PG_GARANTIA_ESTENDIDA}
  Click Element       ${BTN_CONTINUAR}
  Wait Until Element Is Visible    ${SACOLA}
  Click Element         ${EXCLUIR_ITEM_CARRINHO}
  ###Por ser um site em Produção optei  por ao inserir produto no carrinho,também excluí-lo.










   

    

 


