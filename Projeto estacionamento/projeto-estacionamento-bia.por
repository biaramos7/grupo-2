programa{

	inteiro vagas[30] //vagas disponiveis
	inteiro vagaDesejada
	
	funcao inicio(){
	
		inteiro opcao, looping = 0
		
		//inicialização do vetor vagas
		para(inteiro i=0; i < 30 ; i++){
			vagas[i] = i + 1
		}

		//menu
		enquanto(looping == 0){
			
			formatacao()
			escreva("\n1 - Entrada de Veículo\n2 - Saída de Veículo\n3 - Listar Vagas\n4 - Sair do programa\n")
			formatacao()
			escreva("\nDigite a opção desejada: ")
			leia(opcao)

			limpa()

			escolha(opcao){
				caso 1:
					entrada() //funcao de entrada de veiculo
					pare
				caso 2: 
					//saida() //funcao saida de veiculo
					pare
				caso 3: 
					listagemVagas() // funcao para listar vagas
					pare
				caso 4:
					looping = 1
					pare
				caso contrario:
					escreva("Opção inválida, favor digitar novamente!\n")
					pare
			}
		}
		
	}
	//funcao para formataçao do menu, incluindo os "-"
	funcao formatacao(){
		para(inteiro i=0; i < 30; i++){
			escreva("-")
		}
	}
	
	//funcao para registrar a entrada do veiculo
	funcao entrada(){
		listagemVagas()
		escreva("Digite a vaga desejada: ")
		leia(vagaDesejada)
		validar(vagaDesejada)

		//verificar disponibilidade da vaga
		enquanto(vagas[vagaDesejada-1]==0){
			escreva("A vaga desejada já está ocupada, favor selecione outra: ")
			leia(vagaDesejada)
		}
			
		se(vagas[vagaDesejada-1] != 0){
			vagas[vagaDesejada-1] = 0
			escreva("A vaga foi ocupada com sucesso!\n")
		}senao{
			escreva("A vaga desejada já está ocupada!")
		}		
	}

	//funcao para registrar a saida de um veiculo 
	funcao saida(){
		
	}
	
	//listagem das vagas
	funcao listagemVagas(){
		escreva("As vagas ocupadas estão marcadas com um 0: \n")
		para(inteiro i=0 ; i< 30; i++){
			escreva(vagas[i], " ")
		}
		escreva("\n\n")
	}

	//verificar se a vaga desejada está entre 1 e 30
	funcao validar(inteiro &a){
		enquanto (a > 30 ou a <= 0){
			escreva("Vaga inválida, favor digitar novamente: ")
			leia(a)
		}
	}
	
} 






















/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 466; 
 * @DOBRAMENTO-CODIGO = [46, 53, 79, 88];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */