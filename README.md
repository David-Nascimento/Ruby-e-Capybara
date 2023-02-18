# Projeto Ruby com RSpec

Este projeto é um exemplo de como utilizar o RSpec para realizar testes automatizados em aplicações web.

## Requisitos

- Ruby 2.6 ou superior
- Bundler
- ChromeDriver

## Instalação

1. Clone este repositório: `git clone git@github.com:David-Nascimento/automation-testes-capybara-ruby.git`
2. Acesse o diretório do projeto: `cd projeto-ruby-rspec`
3. Instale as dependências: `bundle install`

## Execução dos Testes

- Para executar todos os testes: `rspec`
- Para executar apenas um arquivo de teste: `rspec spec/nome_do_arquivo_spec.rb`
- Para executar um teste específico em um arquivo: `rspec -t "nome_do_teste"`

## Estrutura do Projeto

```bash
.
├── .rspec
├── Gemfile
├── Gemfile.lock
├── README.md
├── spec
│   ├── features
│   │   ├── checkbox_spec.rb
│   │   ├── dropdown_spec.rb
│   │   ├── dynamic_controls_spec.rb
│   │   ├── forms_spec.rb
│   │   ├── hovers_spec.rb
│   │   ├── jdk_spec.rb
│   │   ├── radio_spec.rb
│   │   └── upload_arquivo_spec.rb
│   └── spec_helper.rb
└── log
    └── screenshots.png
```
### Contribuições
Contribuições são bem-vindas! Sinta-se à vontade para abrir uma issue ou enviar um pull request.