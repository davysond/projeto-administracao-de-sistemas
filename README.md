# 🎯 Administração de Sistemas - UFCG (24.2)

Bem-vindo ao repositório do projeto de **Administração de Sistemas** do período **24.2** da **Universidade Federal de Campina Grande (UFCG)**! 🚀

Este repositório contém todos os códigos e configurações necessários para a implementação do projeto, incluindo o uso do **Grafana**, **Docker**, e **PostgreSQL** como fonte de dados.

---

## 📌 Tecnologias Utilizadas

| Tecnologia  | Descrição |
|------------|-------------------------------------------|
| 🐳 **Docker** | Virtualização e gerenciamento de containers |
| 📊 **Grafana** | Plataforma de visualização e monitoramento de dados |
| 🛢️ **PostgreSQL** | Banco de dados relacional usado como fonte de dados |
| 🔧 **Docker Compose** | Orquestração de múltiplos containers |

---

## 📂 Estrutura do Repositório

```
📦 projeto-administracao-de-sistemas
 ┣ 📂 docker/           # Configurações e Dockerfiles
 ┃ ┗ 📜 docker-compose.yml # Configuração para subir os serviços
 ┣ ┗ 📂 init-scripts # Configurações do Banco de Dados
 ┣   ┗ 📜 init.sql      # Script de criação da tabela e inserção de dados
 ┣ 📜 README.md         # Documentação do projeto
 ┣ 📜 monitor_processos.sh  # Script para Monitoramento de Dados do WSL (Ubuntu)
```

---

## 🚀 Como Executar o Projeto

### 🔧 **1. Instalar Dependências**
Certifique-se de ter instalado:
- [Docker](https://www.docker.com/)
- [Docker Compose](https://docs.docker.com/compose/install/)

### ▶️ **2. Subir os Serviços**
Para iniciar todos os containers, execute:

```bash
cd docker
docker-compose up -d
```

Isso iniciará o **Grafana** e o **PostgreSQL**.

### 📊 **3. Acessar o Grafana**
Após iniciar os serviços, acesse o Grafana no navegador:

🔗 **http://localhost:3000**

**Credenciais padrão:**
- **Usuário:** `admin`
- **Senha:** `admin`

---

## ⚙️ Configuração do Banco de Dados
O PostgreSQL será iniciado com os seguintes parâmetros padrão.

- **Host:** `postgres:5432`
- **Porta:** `5432`
- **Usuário:** `grafana_user`
- **Senha:** `grafana`
- **Banco de Dados:** `grafana_db`

Caso precise alterar alguma configuração, modifique o arquivo `docker/docker-compose.yml`.

---

## 📌 Contribuições
Se deseja contribuir com o projeto, siga os passos:

1. **Fork** este repositório 🍴
2. Crie uma **branch** (`git checkout -b minha-feature`)
3. Faça o **commit** das suas alterações (`git commit -m 'Minha nova feature'`)
4. Faça o **push** para a branch (`git push origin minha-feature`)
5. Abra um **Pull Request** 🚀

---

## 📄 Licença
Este projeto é distribuído sob a licença **MIT**. Consulte o arquivo [LICENSE](LICENSE) para mais detalhes.

---

📢 **Dúvidas ou Sugestões?** Entre em contato!

