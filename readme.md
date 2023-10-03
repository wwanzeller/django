# Setup Docker Para Projetos django com Nginx, Gunicorn, Redis e Postgresql usando Docker:
Por [Wenderson Wanzeller](https://www.linkedin.com/in/wenderson-wanzeller/)

## Utilização Básica
1. Primeiro execute **`make build`** dentro do diretório principal para construir as imagens.
2. Segundo execute **`make up`** to para executar o projeto.
3. Utilze o diretório [**`.envs`**] para atualizar suas variáveis de ambiente e configuração django.

## Sobre o projeto
Um projdeto Django, versão 4.2.5, chamado `setup` está disponível no diretório `src`. 

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

## Licensa
[MIT](https://github.com/wwanzeller/docker/blob/master/LICENSE).

## Contribuir
Sinta-se à vontade para fazer um fork e criar um pull request (PR).