#insert "window_configuration.agc"
#insert "background_image.agc"
#insert "key_map.agc"
#insert "modify_brick_functions.agc"
#insert "save.agc"
#insert "load.agc"

/*
Projeto feito por Caio César
Este projeto é um simples programa para auxiliar na criação de mapas no AGK Classic. Para mais informações, leia o README no Github.

Mouse: Seleciona um bloco. Solta um bloco.
Q: Cria um bloco.
E: Apaga o bloco selecionado.
WASD: Altera o tamanho do bloco selecionado.
R: Rotaciona o bloco.
SHIFT: Aumenta a velocidade de rotação e aumento de tamanho do bloco.
SPACE: Inverte a rotação e o aumento de tamanho do block
T: Salva o mapa atual (O mapa fica salvo no caminho imprimido na tela).
*/

// Altere as configurações abaixo para começar a criar seu mapa.

setWindow(846, 939) // Tamanho da Tela
loadExample("") // Imagem de Fundo. Deixe vazio caso não tenha uma imagem.
global brick as integer [ 100 ] // Máximo de blocos no mapa.
loadMap("map_loader") // Mude caso você queira carregar um mapa a partir de um arquivo .txt salvo na mesma pasta do main. Caso não queira, deixe vazio. O nome padrão é "map_loader".

do
	print(GetWritePath()) // Comente para remover o camimnho da janela.
	
	
	createBrick()
	deleteBrick()
	moveBrick()
	rotateBrick()
    growBrick()
    
    writeMap()
    Sync()
loop
