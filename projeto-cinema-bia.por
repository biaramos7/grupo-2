programa{
	funcao inicio(){
		inteiro assentos[10][12], linha, coluna, a=0

		//inicialização da matriz dos assentos 
		para(inteiro i=0; i < 10; i++){
			para(inteiro j=0; j < 12; j++){
				assentos[i][j] = 0
			}
		}
		
		faca{
			//impressão da matriz dos assentos
			escreva("       ASSENTOS       \n")
			para(inteiro i=0; i < 10; i++){
				para(inteiro j=0; j < 12; j++){
					escreva(assentos[i][j], " ")
				}
			escreva("\n")
			}
			
			escreva("\nDigite a linha (1 - 10) e a coluna (1 - 12) do assento desejado: \n")
			leia(linha)
			leia(coluna)

			enquanto (linha > 10 ou coluna > 12 ou linha == 0 ou coluna == 0){
				escreva("Assento inválido, digite novamente: (linha x coluna)\n")
				leia(linha)
				leia(coluna)
			}

			//condição de saida do looping
			se (linha < 0 ou coluna < 0){
				pare // interrompe o laço de repetição
			}
			
			se(assentos[linha-1][coluna-1] == 0){
				assentos[linha-1][coluna-1] = 1
				escreva("Assento reservado com sucesso!\n\n")
			}senao{
				escreva("O assento já foi reservado, favor escolher outro!\n\n")
			}
				
		}enquanto (a==0) //looping 
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1069; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {linha, 3, 28, 5}-{coluna, 3, 35, 6};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */