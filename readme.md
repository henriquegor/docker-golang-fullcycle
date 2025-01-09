# Desafio do curso Full Cycle
Contexto : Criar uma imagem golang que imprima "Full Cycle Rocks"!
Desafio: Ter menos de 2mb
[Link Docker Hub](https://hub.docker.com/repository/docker/henriquegor/fullcycle/general)

# Como foi resolvido?
Principais maneiras utilizadas para diminuir o tamanho da imagem foram:
1- Utilizar a imagem scratch que é a imagem vazia do Docker Hub
2- Realizar o build do arquivo para gerar o arquivo binário assim não havendo necessidade de termo o Golang instalado na imagem
3- No momento de realizar o build no golang utilizar as flags -ldflags="-s -w" para diminuir o tamanho do arquivo