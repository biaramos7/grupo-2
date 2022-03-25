programa
{
	
	funcao inicio()
	{
		inteiro assentos[10][12], linha, coluna

		//inicialização da matriz dos assentos 
		para(inteiro i=0; i < 10; i++){
			para(inteiro j=0; j < 12; j++){
				assentos[i][j] = 0
			}
		}
		//repetir enquanto não for digitado um assento negativo
		faca{
			//impressão da matriz dos assentos
			escreva(" ASSENTOS DISPONÍVEIS \n")
			para(inteiro i=0; i < 10; i++){
				para(inteiro j=0; j < 12; j++){
					escreva(assentos[i][j], " ")
				}
			escreva("\n")
			}
			
			escreva("\nDigite a linha (0 - 9) e a coluna (0 - 11) do assento desejado: \n")
			leia(linha)
			leia(coluna)

			se (linha < 0 ou coluna < 0){
				pare // interrompe o laço de repetição
			}
			
			se(assentos[linha][coluna] == 0){
				assentos[linha][coluna] = 1
				escreva("Assento reservado com sucesso!\n\n")
			}senao{
				escreva("O assento já foi reservado, favor escolher outro!\n\n")
			}
			
		}enquanto (linha >= 0 e coluna >= 0) //se um dos dois for negativo, ele sai do laço de repetição
		
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 555; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {linha, 6, 28, 5}-{coluna, 6, 35, 6};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */