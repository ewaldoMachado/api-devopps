# Etapa 1: Escolha da imagem base
# Usamos uma imagem slim do Python 3.11, que é otimizada em tamanho e contém o essencial.
# É uma base mais estável e comumente usada que a versão alpine, evitando potenciais problemas de compilação.
FROM python:3.13.5-alpine3.22

# Etapa 2: Definir o diretório de trabalho
# Isso garante que todos os comandos subsequentes sejam executados neste diretório dentro do contêiner.
WORKDIR /app

# Etapa 3: Copiar e instalar as dependências
# Copiamos primeiro o requirements.txt para aproveitar o cache de camadas do Docker.
# Se o requirements.txt não mudar, o Docker reutilizará a camada de instalação das dependências,
# acelerando o build em futuras alterações no código-fonte.
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Etapa 4: Copiar o código da aplicação
COPY . .

# Etapa 5: Expor a porta
# Informa ao Docker que o contêiner escutará na porta 8000 em tempo de execução.
EXPOSE 8000

# Etapa 6: Comando para executar a aplicação
# Inicia o servidor Uvicorn. O host 0.0.0.0 torna a aplicação acessível de fora do contêiner.
CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8000", "--reload"]