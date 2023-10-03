# Setup Docker Para Projeto Django com Nginx, Gunicorn, Redis e Postgresql:
Por [Wenderson Wanzeller](https://www.linkedin.com/in/wenderson-wanzeller/)

## Sobre o projeto
1. Um projdeto Django, versão 4.2.5, chamado `setup` está disponível no diretório `src`. 
2. Utilze o diretório `.envs` para atualizar suas variáveis de ambiente e configuração django.
3. Recomenda-se utilizar um abimente virtual em sua máquina local*.

## Instalação Básica
Clone o repositório de setup (substitua `meu-sistema` pelo `nome-seu-projeto`):
```sh
git clone https://github.com/wwanzeller/django.git meu-sistema
```
Entre no repositorio:
```sh
cd nome-seu-projeto/
```
Remova o versionamento do repositório:
```sh
rm -rf .git/
```
*Crie um ambiente virtual local (**apenas uma vez na instalação do projeto**):
  - **Linux:** 
    ```sh
    python3 -m venv .venv
    ```
  - **Windows:**
    ```
    python -m venv .venv
    ```
*Para ativar o ambiente virtual, simplesmente execute (**sempre que for iniciar o projeto**):
  - **Linux:** 
    ```
    source .venv/bin/activate
    ```
  - **Windows:**
    ```
    .venv\Scripts\activate
Execute o comando (**na primeira vez e sempre que atualizar o docker-compose**):
```sh
make build
```
Execute o comando (**na primeira vez e sempre que for iniciar o projeto**):
```sh
make up
```
**Acesse o projeto em:**

[http://localhost:8000](http://localhost:8000)

## Parar o Projeto
Execute o comando no diretório raiz do projeto:
```sh
docker-compose down
```
Desative o ambiente virtual, simplesmente execute:
  - **Linux:**
    ```sh
    deactivate
    ```
  - **Windows:**
    ```sh
    .venv\Scripts\deactivate
    ```

## Comandos utilizando make
Você pode rodar os comandos abaixo para utilizar este projeto:
1. `make up` para construir o projeto e iniciar os contêineres.
2. `make build` para construir o projeto.
3. `make start` para iniciar os contêineres se o projeto já estiver em execução.
4. `make stop` para parar os contêineres.
5. `make shell-web` para acessar o contêiner web via terminal.
6. `make shell-db` para acessar o contêiner de banco de dados via terminal.
7. `make shell-nginx` para acessar o contêiner nginx via terminal.
8. `make logs-web` para acessar os logs do contêiner web.
9. `make logs-db` para acessar os logs do contêiner de banco de dados.
10. `make logs-nginx` para acessar os logs do contêiner nginx.
11. `make collectstatic` para mover arquivos estáticos para o diretório estático.
12. `make log-web` para acessar os logs do contêiner web.
13. `make log-db` para acessar os logs do contêiner de banco de dados.
14. `make log-nginx` para acessar os logs do contêiner nginx.
15. `make restart` para reiniciar os contêineres.

## Contribuir
Sinta-se à vontade para fazer um fork e criar um pull request (PR).

## Licensa
[MIT](https://github.com/wwanzeller/docker/blob/master/LICENSE).