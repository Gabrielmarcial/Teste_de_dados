# Teste_de_dados


- Neste Projeto foi utilizado  o Database Type Ecommerce disponível em https://uibakery.io/sql-playground
para realizar as seguintes atividades:

__Respostas do Teste__ : Todas as perguntas estão presentes no arquivo __RNT-TESTE.pdf__;

1. __Desenhe o diagrama de ER do banco__: Toda a diagramção e o código sql foi armazenado na pasta __database__ desse repositório, para desenhar o __ER do banco__ e gerar o SQL foi utilizado [dbdesigner](https://app.dbdesigner.net/) com o auxílio do [dbeaver](https://dbeaver.io/download/) para vizualizar e testar o banco de dados.

2. __Crie um notebook no Databricks Community__ : Todo o __código do projeto__ está presente no __Notebook_teste_dados.ipynb__ que foi elaborado dentro do databricks community.

3. __No Notebook crie lógica para salvar cada tabela como parque__ : A logica está presente no __Notebook_teste_dados.ipynb__ na secção __*Salvando os dados como parquet*__.


4. __No notebook crie um merge entre a tabela JDBC e os arquivos parquet, o merge
deve conter a lógica de insert, update e delete__ : 

    Nessa etapa foram criadas 3 funções para realizar essas operações : 
    - __Inser_jbdc_in_parquet__
    - __Update_jbdc_in_parquet__
    - __Delete_jbdc_in_parquet__
    
    Elas estão presentes na secção __*Merge entre a tabela JDBC e os arquivos parquet*__.

5. __No notebook crie código Spark que respondam as seguintes perguntas__:

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

6. __Salve os resultados em formato delta__:
    Todos os resultados do item anteiror foram salvos na pasta **data/delta** no formato **delta**. 

7. __Armazene todos os artefatos gerados em um github público:__ 
    Todos os artefetos do projeto estão salvos na pasta __data__  com os arquivos __parquet__ na pasta parquet e os arquivos __delta__ na pasta delta.

__OBS__ : No __Notebook_teste_dados.ipynb__ todos os arquivos foram salvos considerando a variável `path = 'dbfs:/FileStore'` que utilizou o sistema de arquivos DBFS do databricks.

---
Fontes : 

- [dbdesigner](https://app.dbdesigner.net/)
- [dbeaver](https://dbeaver.io/download/)
- [databricks](https://community.cloud.databricks.com)
