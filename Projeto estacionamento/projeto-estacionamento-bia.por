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
			
			formatacao(1)
			escreva("\n1 - Entrada de Veículo\n2 - Saída de Veículo\n3 - Listar Vagas\n4 - Sair do programa\n")
			formatacao(1)
			escreva("\nDigite a opção desejada: ")
			leia(opcao)
			
			limpa()
			
			escolha(opcao){
				caso 1:
					entrada() //funcao de entrada de veiculo
					pare
				caso 2: 
					saida() //funcao saida de veiculo
					pare
				caso 3: 
					listagemVagas() // funcao para listar vagas
					pare
				caso 4:
					looping = 1 //encerrar programa 
					pare
				caso contrario:
					escreva("Opção inválida, favor digitar novamente!\n")
					pare
			}
		}
	}

	//funcao para formataçao do menu, incluindo os "-"
	funcao formatacao(real multiplicador){
		para(inteiro i=0; i < (multiplicador*30); i++){
			escreva("-")
		}
	}

	//funcao para registrar a entrada do veiculo
	funcao entrada(){
		listagemVagas()
		escreva("Digite o número da vaga: ")
		leia(vagaDesejada)
		validar(vagaDesejada)

		//verificar disponibilidade da vaga
		enquanto(vagas[vagaDesejada-1]==0){
			escreva("\nA vaga desejada já está ocupada, favor selecione outra: ")
			leia(vagaDesejada)
		}
		limpa()
		vagas[vagaDesejada-1] = 0
		escreva("A vaga foi ocupada com sucesso!\n")
	}

	//funcao para registrar a saida de um veiculo 
	funcao saida(){
		listagemVagas()
		escreva("Digite o número da vaga: ")
		leia(vagaDesejada)
		validar(vagaDesejada)

		//verificar disponibilidade da vaga
		enquanto(vagas[vagaDesejada-1]!=0){
			escreva("Não há veiculo na vaga informada, favor digitar outra: ")
			leia(vagaDesejada)
		}
		
		limpa()
		vagas[vagaDesejada-1] = vagaDesejada
		escreva("A vaga está disponível novamente!\n")
	}

	//listagem das vagas
	funcao listagemVagas(){
		formatacao(2)
		escreva("  LISTA DE VAGAS  ")
		formatacao(2)
		escreva("\nOBS: As vagas ocupadas estão marcadas com um 0: \n\n")
		para(inteiro i=0 ; i< 30; i++){
			escreva(vagas[i], " | ")
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
 * @POSICAO-CURSOR = 857; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */