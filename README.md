# Sistemas Móveis - Atividade Avaliativa II

Este repositório contém dois aplicativos desenvolvidos em Flutter, referentes à avaliação da disciplina de Sistemas Móveis. A atividade permite desenvolvimento individual ou em dupla.

## 📱 App 1: Cartão Personalizado

Um aplicativo Flutter projetado para criar e exibir um cartão de aniversário ou comemorativo com mensagens customizadas pelo usuário.

### Funcionalidades e Layout
* **Entrada de Dados:** O usuário digita as informações em três campos de texto (`TextField`) distintos: nome do(a) destinatário(a), a mensagem principal e o nome do(a) remetente.
* **Geração do Cartão:** Ao clicar no botão contendo o texto "Criar Cartão", as informações inseridas são apresentadas no layout do cartão logo abaixo.
* **Estilização de Texto:** É obrigatório o uso de tamanhos, estilos e cores diferentes para cada uma das partes do texto do cartão.
  * O **destinatário** é exibido no topo, com alinhamento à esquerda.
  * A **mensagem** fica centralizada tanto horizontalmente quanto verticalmente, utilizando uma fonte de tamanho grande e uma cor que harmonize com o tema.
  * O **remetente** é posicionado na parte inferior do cartão, com alinhamento à direita.
* **Design Visual:** A `AppBar` possui uma cor de fundo que combina com a paleta do cartão. A área do cartão em si deve possuir uma borda e uma imagem de fundo decorativa (ou cor sólida).
* **Validação:** O aplicativo impede a criação do cartão e exibe um aviso na tela caso o usuário deixe algum dos campos de entrada vazios.

---

## 🧮 App 2: Regra de Três

Um aplicativo utilitário em Flutter construído para realizar o cálculo de proporções matemáticas, a famosa "Regra de Três".

### Funcionalidades e Regras de Negócio
* **Entrada Restrita:** O layout conta com campos de entrada que permitem exclusivamente a digitação de números, sinais e separadores decimais.
* **Cálculo:** O resultado "X" é gerado ao interagir com o botão "Calcular X". 
* **Formatação de Saída:** Quando o resultado do cálculo for um número decimal, o aplicativo formata a exibição para mostrar apenas duas casas após a vírgula.
* **Validação:** O cálculo é bloqueado e o usuário recebe um aviso se tentar executar a operação com algum dos campos em branco.

---

## 🛠️ Tecnologias Utilizadas
* **Framework:** Flutter
* **Linguagem:** Dart

Alecsandro Costa Santos - 1986042
Miguel da Silva Leite Felipe - 1999217
