# IaC - Infra estrutura como código

projeto de conclusão

## Usando docker para testar no linux

- baixa a imagem do docker
docker pull ubuntu:24.04

- cria a instancia do container
docker run -d -t --name dio-linux ubuntu:24.04

- entra no modo de execução do container
docker exec -it dio-linux /bin/bash
