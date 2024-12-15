FROM node:14    
# Definindo que vamos usar a imagem do node e a versão do node                        
WORKDIR /app-node
# Definindo o diretorio de trabalho
ARG PORT_BUILD=6000
# Só é usando no tempo de build da imagem
ENV PORT=$PORT_BUILD
# Usado dentro do container
EXPOSE $PORT_BUILD
# Nossa aplicação vai rodar na porta 3000, do lado do container
COPY . .
# Estamos copiando tudo para o diretorio de trabalho, pegando do host que é na pasta exemplo_node onde esta o dockerfile
RUN npm install 
# Quando a imagem for iniciada ele vai rodar o comando npm install do node
ENTRYPOINT npm start
# Quando a imagem for iniciada ele vai rodar o comando npm start do node