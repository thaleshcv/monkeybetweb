# README

## NodeJS

Instalar NodeJS (16.16 ou superior) [https://nodejs.org/en/download/releases/]

Instalar Yarn: `npm i --location=global yarn`

## Ruby

Instalar RVM [https://rvm.io/rvm/install]:

Linux:

`curl -sSL https://get.rvm.io | bash`

Deslogar e logar novamente.

Instalar Ruby:

`rvm install ruby-3.1.3`

`rvm --default use 3.1.3`

`gem install bundler`

Apenas produção:

`bundle config set --local deployment 'true'`

Na pasta do projeto:

`bundle`

`bundle exec rails assets:precompile`

criar arquivo `.env` com o caminho para o arquivo DB

exemplo: `MONKEYBET_DATABASE=/home/user/monkeybet/monkeybet.db`

copiar `config/master.key` para produção


