# Projeto Apache NiFi Docker

Este repositório contém um projeto Docker para criar uma imagem do [Apache NiFi](https://nifi.apache.org/) na versão 2.0.0-M1. Utilizamos um Dockerfile para construir a imagem e um docker-compose para facilitar a execução do contêiner.

## Pré-requisitos

Certifique-se de ter o Docker instalado em sua máquina antes de começar.

- Docker: [Instalação do Docker](https://docs.docker.com/get-docker/)

## Como usar

1. Clone este repositório em sua máquina local:

```bash
git clone https://github.com/JoaoPedroLott/apache_nifi_docker.git
```

2. Crie um arquivo `nifi.env` com as propriedades necessárias para seu projeto:

```bash
SINGLE_USER_CREDENTIALS_USERNAME=usuario
SINGLE_USER_CREDENTIALS_PASSWORD=senha
```

3. Crie a imagem do Apache NiFi usando o Dockerfile:

```bash
docker build -t nifi_2_0_0_m1 .
```

4. Inicie o contêiner usando o docker-compose:

```bash
docker compose up
```

O Apache NiFi estará acessível em http://localhost:8443/nifi

## Configuração Adicional

- O diretório conf/ contém arquivos de configuração do NiFi que podem ser ajustados conforme necessário.
- Certifique-se de revisar e personalizar o Dockerfile para atender aos requisitos específicos do seu projeto.

## Contribuindo

Sinta-se à vontade para contribuir com melhorias, correções de bugs ou novos recursos. Abra uma issue ou envie um pull request!