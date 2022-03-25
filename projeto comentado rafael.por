programa
{

    funcao inicio()
    {
        inteiro cinema[12][10],linha,coluna,x=1

// INICIO -> Roda somente na primeira vez que o programa é executado! - todas as poltronas vao receber valor de 0.
        para(inteiro i=0; i < 12; i++){
            para(inteiro j=0; j < 10; j++){
                cinema[i][j]=0
            }
        }
// ENQUANTO -> Roda em lop ate que a resposta final seja !=1 )
        enquanto(x==1){
       escreva("os lugares vazios são:")
// PARA -> algoritmo para mostrar ao usuario quantas "poltronas" estao disponiveis.
    para(inteiro i=0; i < 12; i++){
        escreva("\n")
        para(inteiro j=0; j < 10; j++){
            escreva(cinema[i][j]," ")

               }
           }
           // LER QUAL POLTRONA VC QUER RESERVAR
               escreva("\nescolha um assento:")
               leia(linha,coluna)

// SE -> DECLARA O VALOR 1 A POLTRONA ESCOLHIDA MAS SO RODA COM A CONDIÇÃO (se poltrona == 0 )
           se(cinema[linha-1][coluna-1] == 0){
               cinema[linha-1][coluna-1] = 1
               limpa()
                   escreva("\nvocê comprou o assento:")

// PARA -> MOSTRA SUA POLTRONA RESERVADA E AS OUTRAS DISPONIVEIS
                   para(inteiro i=0; i < 12; i++){
                       escreva("\n")
                       para(inteiro j=0; j < 10; j++){
                           escreva(cinema[i][j]," ")



                      }

                  }


              }// SE o (se) for falso ele vem direto pra cá
              senao{
                  escreva("esse assento ja foi comprado")
             }
             //ultima condição para ver se o usuario sai ou continua no programa
             escreva("\n\nvoce deseja comprar mais algum ingresso? 1 para sim,0 para não") 
             leia(x)
             limpa()
             }
        }
     }

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1831; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */