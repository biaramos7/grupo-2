programa
{
	
        inteiro vagas[30]
        inteiro opcao
	   funcao inicio()
	{

		para(inteiro i=0; i < 30; i++){
			vagas[i]=0

		}
		caracter menu
		inteiro x=0
	faca{
          escreva("--------------------\n")
		escreva("1- ENTRADA DE VEICULO\n")
		escreva("2- SAÍDA DE VEICULO\n")
		escreva("3- LISTAR VAGAS\n")
		escreva("4- SAIR DO PROGRAMA\n")
		escreva("--------------------\n")
		escreva("Digite uma opção:\n")
		leia(menu)
		limpa()
	
		escolha(menu){			
			
			caso '1': entrada()			
			pare
			caso '2': saida()
			pare			   
			caso '3': listarVagas()
			escreva("\nVaga livre = 0 , Vaga ocupada = 1\n")
			pare			
			caso '4': x=1
			pare				
			caso contrario: escreva("Numero inválido\n")			
		}
	}enquanto(x==0)
				         
	}
	funcao  listarVagas(){
		para(inteiro i=0; i < 30; i++){
			escreva("\n")
			escreva(vagas[i])						
		}
	}
		funcao verificacaoEntrada (inteiro &opcao){				
				se ( opcao >= 0 e opcao <= 30){					
				escreva("Se dirija a vaga ", opcao,"\n")
				se(vagas[opcao-1]==0){
					vagas[opcao-1]=1					
				}
			}
			senao
				escreva("Vaga inválida\n")							 											
		}

		funcao saida(){
			escreva("Digite a vaga de retirada:\n")
			 leia(opcao)
			 verficacaoSaida()			 			 
			 se(vagas[opcao-1]==1){
			 escreva("Seu carro pode ser retirado\n")
			 }
			 senao{ 
			 escreva("Seu carro não esta parado no nosso estacionamento\n")
			 }
			 
			 
		}
		funcao entrada(){
			escreva("Escolha uma vaga: (1-30)\n")
			leia(opcao)
			verificacaoEntrada(opcao)		
		}
		funcao verficacaoSaida(){
			se(opcao<1 ou opcao>30)
			escreva("Vaga inválida,digite outra:")
			leia(opcao)
		}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1507; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */