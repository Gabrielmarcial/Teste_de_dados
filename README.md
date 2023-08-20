# Teste_de_dados


- Neste Projeto foi utilizado  o Database Type Ecommerce disponível em https://uibakery.io/sql-playground
para realizar as seguintes atividades:

__Respostas do Teste__ : Todas as perguntas estão presentes no arquivo __RNT-TESTE.pdf__;

1. __Desenhe o diagrama de ER do banco__: Toda a diagramção e o código sql foi armazenado na pasta __database__ desse repositoóio, para desenhar o __ER do banco__ e gerar o SQL foi utilizado [dbdesigner](https://app.dbdesigner.net/) com o auxílio do [dbeaver](https://dbeaver.io/download/) para vizualizar e testar o banco de dados;

2. Crie um notebook no Databricks Community : Todo o __código do projeto__ está presente no __Notebook_teste_dados.ipynb__ que foi elaborado dentro do databricks community;

3. No Notebook crie lógica para salvar cada tabela como parque : A logica está presente no __Notebook_teste_dados.ipynb__ na secção __*Salvando os dados como parquet*__;


4. No notebook crie um merge entre a tabela JDBC e os arquivos parquet, o merge
deve conter a lógica de insert, update e delete : 

    Nessa etapa foram criadas 3 funções para realizar essas operações : 
    - __Inser_jbdc_in_parquet__
    - __Update_jbdc_in_parquet__
    - __Delete_jbdc_in_parquet__
    
    Elas estão presentes na secção __*Merge entre a tabela JDBC e os arquivos parquet*__;

5. No notebook crie código Spark que respondam as seguintes perguntas:

    Na secção  __*Análise dos Itens solicitados*__ está todo o processo que foi feito para chegar a resposta das perguntas abaixo.

- Qual país possui a maior quantidade de itens cancelados?

    __Resposta__ :  O país com o maior número de itens cancelados é a __New Zealand__.

- Qual o faturamento da linha de produto mais vendido, considere como os itens
Shipped, cujo o pedido foi realizado no ano de 2005?

    __Resposta__ :  A linha de produto com o maior faturamento é o Classic Cars  com um total de 603666.99 dolares no ano 2005.

- Nome, sobrenome e e-mail dos vendedores do Japão, o local-part do e-mail
deve estar mascarado.

    __Resposta__ : 
    | first_name | last_name | email                          | country |
    |------------|-----------|--------------------------------|---------|
    | Mami       | Nishi     | ****@classicmodelcars.com      | Japan   |
    | Yoshimi    | Kato      | ****@classicmodelcars.com      | Japan   |



Fontes : 

- [dbdesigner](https://app.dbdesigner.net/)
- [dbeaver](https://dbeaver.io/download/)
- [databricks](https://community.cloud.databricks.com)