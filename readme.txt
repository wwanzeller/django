# Setup Docker Para Projetos django:
Por [Wenderson Wanzeller](https://www.linkedin.com/in/wenderson-wanzeller/)

### Passo a passo:
Clone o repositório de setup:
```sh
git clone https://github.com/wwanzeller/django.git meu-sistema
```

Entre no repositorio:
```sh
cd meu-sistema/
```
Remova o versionamento do repositório:
```sh
rm -rf .git/
```

Crie um ambiente virtual no python:
```sh
python3 -m venv .venv
```

Ative o ambiente virtual:
```sh
source .venv/bin/activate
```

Instale as dependências
```sh
pip install -r ./app/requirements.txt
```

Crie um projeto Dangon
```sh
django-admin startproject setup .
```

Atualize as variáveis de ambiente no ficheiro (.dev.env) conforme necessidade.

```dosini
## Django and Docker settings

DEBUG=1
SECRET_KEY=foo
DJANGO_ALLOWED_HOSTS=localhost 127.0.0.1 [::1]

# Database settings (PostgreSQL)
SQL_ENGINE=django.db.backends.postgresql
SQL_DATABASE=wanzeller_dev
SQL_USER=wenderson
SQL_PASSWORD=123456
SQL_HOST=db
SQL_PORT=5432
DATABASE=postgres

# PGADMIN settings
PGADMIN_EMAIL=wenderson@wanzeller.com.br
PGADMIN_PASSWORD=123456

# Redis settings
REDIS_HOST=redis
REDIS_PORT=6379
```

Suba os containers do projeto:
```sh
docker-compose up -d --build
```

Se desejar acessar o container manualmente para executar comandos:
```sh
docker-compose exec web bash
```

Acesse o projeto:
[http://localhost](http://localhost)