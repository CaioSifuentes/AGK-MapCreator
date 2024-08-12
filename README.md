# AGK-MapCreator
AGK-Map Creator é uma ferramenta simples para auxiliar na criação de mapas no App Game Kit Classic.
Ele disponibiliza a possibilidade de distribuição de blocos de tamanho, posição e rotação definidos por você, possibilitando a criação de mapas básicos para pequenos jogos.

## Configuração Inicial
Existem 4 linhas que podem ser modificadas inicialmente:

### setWindow(x, y)
Aqui você define o tamanho da tela para a criação do mapa. Lembre-se de colocar exatamente o mesmo tamanho da tela do seu jogo!

### loadExample("")
Caso queira, você pode adicionar uma imagem na pasta `/media` e carrega-la através desta função.

### global brick as integer [ N ]
Os blocos de construção são armazenados em um vetor de tamanho pré-definido. Por padrão, o programa é capaz de armazenar até 100 blocos, mas você pode aumentar este valor.

### loadMap("map_loader")
Por fim, você é capaz de carregar um mapa anteriormente salvo. Por padrão, o programa já carrega um mapa salvo em `/media`.
Você pode salvar um mapa através da tecla `T`; contudo, ele sempre será salvo na pasta padrão de WriteFile do AGK, portanto, acesse o caminho impresso na tela.
Ele normalmente é: `C:\Users\USER\AppData\Local\AGKApps\MapCreator`

## Comandos
- Mouse: Seleciona um bloco. Solta um bloco.
- Q: Cria um bloco.
- E: Apaga o bloco selecionado.
- WASD: Altera o tamanho do bloco selecionado.
- R: Rotaciona o bloco.
- SHIFT: Aumenta a velocidade de rotação e aumento de tamanho do bloco.
- SPACE: Inverte a rotação e o aumento de tamanho do block
- T: Salva o mapa atual (O mapa fica salvo no caminho imprimido na tela).

## Carregando Um Mapa
Uma vez com um mapa pronto, você pode carrega-lo em seu projeto.
Para isso, adicione o arquivo `load.agc` em seu projeto e o mapa salvo na pasta `/media` do seu projeto.

Por fim, adicione o seguinte código no começo do projeto:
```
#insert "load.agc"
global brick as integer [ 100 ]
loadMap("map_loader")
```
