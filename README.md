# jo_ken_pokemon

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

usuario acessa splashpage
	- supondo que o usuário abriu o aplicativo
	- ele deve visualizar uma tela de splash
		* titulo com imagem pokemon mais acima
		* botão acessar mais abaixo
		* opcional: os dois são animados o de cima vindo de cima, o de baixo vindo de baixo

usuário clica no botão acessar
	- ao clicar no botão acessar o aplicativo verifica se o usuário ta logado
	- senão estiver, o usuário é redirecionado pra tela de login
	- se tiver logado, o usuário vai para a tela principal

usuário não possui login
	- logo abaixo, na tela de login, tem um botão encaminhando para a tela de cadastro
	- ao finalizar o cadastro, o usuário é logado no sistema e é exibido a tela principal

tela principal
	- a tela principal exibe duas opções, novo jogo e estatísticas
	- cada uma redireciona para uma nova tela
	- caso o usuário não possua partida alguma, o botão estatísticas será apresentado desativado

tela novo jogo
	- na tela são exibidos uma carta virada na parte superior, tres cartas na parte inferior, e um botão 	para "confirmar" a jogada
	- o usuário clica no pokemon q vai jogar e depois clica no botão de confirmação
	- o jogo deve apresentar o resultado da partida
	- na appbar deve ter um botão de voltar para a tela principal

tela estatisticas
	- a tela deve exibir quantas partidas o usuário jogou
	- valor numerico de quantas vezes ganhou e perdeu com cada pokemon
	- criar uma média com relação oa numero de partidas
