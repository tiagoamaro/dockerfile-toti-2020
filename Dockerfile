# Utilizamos como base a imagem do Alpine Linux, versão 3.12.0
FROM alpine:3.12.0

# O diretório de entrada será o /app
WORKDIR /app

# Instalamos o git e o python3
RUN apk add git python3

# Copiamos todo conteúdo da pasta "./documents" to projeto local para a imagem
# No caminho "/app/documents"
COPY ./documents /app/documents

# Vamos export a porta 3000 da imagem para o host
EXPOSE 3000

# Por padrão, ao executar a imagem, rodaremos um shell
CMD sh