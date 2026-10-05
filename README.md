# Amar e Abraçar

A aplicação foi feita com Rails 8.1+ com SQLite no Backend e HTML, CSS e JS puros no Frontend.

## Configuração

Instale as dependências com:
```bash
bundle install
```

> [!WARNING]
> Certifique de configurar o Figaro com as variáveis de ambiente corretas, como o usuário administrador.
```bash
bundle exec figaro install
# Edite o arquivo gerado em 'config/application.yml'
```

Prepare a base de dados com:
```bash
rails db:setup
```

Inicie o servidor de desenvolvimento com:
```bash
bin/dev
# ou 'rails server'
```
