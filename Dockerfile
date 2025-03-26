# Usa a imagem oficial do Python como base
FROM python:3.9-slim

# Define o diretório de trabalho na imagem Docker
WORKDIR /app

# Copia os arquivos do projeto para o contêiner
COPY . /app

# Instala as dependências do Python (necessárias para rodar o Dify)
RUN pip install --no-cache-dir -r requirements.txt

# Expõe a porta que a aplicação irá rodar (ajuste se necessário)
EXPOSE 8000

# Define o comando que vai rodar a aplicação. Alterar conforme a estrutura do Dify.
CMD ["python", "main.py"]
