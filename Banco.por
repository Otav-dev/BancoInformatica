programa {
  inclua biblioteca Matematica --> mat
  funcao inicio() {
     real menu, saldo=200, saque, deposito, controle, investimento, rendimento
    cadeia extrato, senha="godah", pswd
    inteiro meses
    
    enquanto(menu!=0){
    escreva("Digite sua senha: ")
    leia(pswd)
    se(pswd == senha){
    escreva("\n\n|------MENU------|\n")
    escreva("| 1. --> SALDO    |\n")
    escreva("| 2. --> SAQUE   |\n")
    escreva("| 3. --> DEPOSITO|\n")
    escreva("| 4. --> EXTRATO |\n")
    escreva("| 5. --> INVESTIMENTO")
    escreva("| 0. --> SAIR    |\n\n")
    escreva("| ESCOLHA -> ")
    leia(menu)
    }
    
    senao{
      escreva("Senha inválida/n")
    }
    
    escolha(menu){
    caso 1:
    escreva("Seu saldo é de: "+saldo)
    pare

    caso 2:
    escreva("Digite sua senha: ")
    leia(pswd)
    se(pswd == senha){
    
    escreva("Digite o valor para sacar: ")
    leia(saque)
    
    enquanto(saque < 0){
    
    escreva("Valor inválido digite novamente: ")
    leia(saque)
    }
    se(saque > saldo){
      escreva("Saque não autorizado")
    }
    senao{
      saldo = saldo - saque
      extrato = extrato +
      escreva("Saque realizado com sucesso\n")
      escreva("Aperte ENTER para continuar")
      leia(controle)
      limpa()}
    }
    
    senao{
      escreva("Senha inválida/n")
    }
    
    caso 3:
    escreva("Digite sua senha: ")
    leia(pswd)
    se(pswd == senha){
    
    escreva("Digite o valor para depositar: ")
    leia(deposito)
    
    enquanto(deposito < 0){
    
    escreva("Valor inválido digite novamente: ")
    leia(deposito)}

    saldo = saldo + deposito
    extrato = extrato +
    escreva("Deposito realizado com sucesso")
    leia(controle)
    limpa()
    pare
    }
    
    senao{
      escreva("Senha inválida/n")
    }

    caso 4:
     escreva("Digite sua senha: ")
    leia(pswd)
    se(pswd == senha){

    escreva(extrato)
    escreva("Aperte ENTER para continuar")
    leia(controle)
    limpa()
    pare
  }
  senao{
      escreva("Senha inválida/n")
    }
    pare

    caso 5:
    escreva("Digite o valor que deseja investir: ")
    leia(investimento)
    se(investimento > saldo){
      escreva("Saldo insuficiente!\n")
    }
    senao{
      escreva("Digite a quantidade de meses que deseja investir: ")
      leia(meses)
      saldo = saldo - investimento
      para(inteiro contador = 0; contador<meses ; contador++){
        rendimento = investimento * 1.02
        investimento = rendimento
      }
      saldo = saldo + investimento
      escreva("PARABÉNS! O rendimento final foi de: R$"+investimento"/n")
    }



    pare
    }

}

  }
}
