# Imersão DevOps - Alura Google Cloud

Este projeto é uma API desenvolvida com FastAPI para gerenciar alunos, cursos e matrículas em uma instituição de ensino.

## Pré-requisitos

- [Python 3.10 ou superior instalado](https://www.python.org/downloads/)
- [Git](https://git-scm.com/downloads)
- [Docker](https://www.docker.com/get-started/)

## Passos para subir o projeto

1. **Faça o download do repositório:**
   [Clique aqui para realizar o download](https://github.com/guilhermeonrails/imersao-devops/archive/refs/heads/main.zip)

2. **Crie um ambiente virtual:**
   ```sh
   python3 -m venv ./venv 
   ```
   <!-- python -m venv ./venv para ambientes Windows-->

3. **Ative o ambiente virtual:**
   - No Linux/Mac:
     ```sh
     source venv/bin/activate
     ```
   - No Windows:
     ```sh
     venv\Scripts\activate
     ```
     <!-- Click botão direito no menu iniciar, selecione terminal(ADM) e digite "Set-ExecutionPolicy RemoteSigned" caso ocorra erro-->

4. **Instale as dependências:**
   ```sh
   pip install -r requirements.txt
   ```

5. **Execute a aplicação:**
   ```sh
   uvicorn app:app --reload
   ```

6. **Acesse a documentação interativa:**

   Abra o navegador e acesse:  
   [http://127.0.0.1:8000/docs](http://127.0.0.1:8000/docs)

   Aqui você pode testar todos os endpoints da API de forma interativa.

---

<!-- Criar um arquivo Dockerfile. Acessar o docker-hub, procurar um alinguagem com imagem licenciada(selo de confiança) adicionar o "FROM" ou criar tudo pelo Gemini, Adicionar o "--reload" -->
<!-- Criar um arquivo .dockerignore e adicionar o arquivo VENV, __pycache__, -->
<!-- Fazer o build da aplicação "docker build -t <nome> . "-->
<!-- "docker images" para listar imagens-->
<!-- "docker run -p 8000:8000 <nome>" para rodar a aplicação" -->
<!-- Criar o docker-compose.yml (via Gemini) que gera o script para rodar a aplicação (cmd: docker-compose up) -->
<!-- trocar a numeração inicial no navegador por "localhost" -->

## Estrutura do Projeto

- `app.py`: Arquivo principal da aplicação FastAPI.
- `models.py`: Modelos do banco de dados (SQLAlchemy).
- `schemas.py`: Schemas de validação (Pydantic).
- `database.py`: Configuração do banco de dados SQLite.
- `routers/`: Diretório com os arquivos de rotas (alunos, cursos, matrículas).
- `requirements.txt`: Lista de dependências do projeto.

---

- O banco de dados SQLite será criado automaticamente como `escola.db` na primeira execução.
- Para reiniciar o banco, basta apagar o arquivo `escola.db` (isso apagará todos os dados).

---
