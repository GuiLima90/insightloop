Question.destroy_all

  conversas = <<~CHAT
    [Customer]: Olá, bom dia. Preciso falar com um atendente urgente. O robô não tá entendendo meu problema.
    [Support Agent]: Olá! Aqui é a Beatriz da Beautiful Feet. Sinto muito que esteja com dificuldades. Pode me contar o que houve? Estou aqui para resolver.
    [Customer]: Oi Beatriz. Olha, eu tô bem chateada. Fiz uma compra semana passada, o pedido BF-88209. Eram pra ser aquelas sandálias "Royal Velvet" pretas, tamanho 37. A caixa chegou agora pouco.
    [Customer]: Quando eu abri, não tem sandália nenhuma. Vocês me mandaram um tênis "Comfy Walk" branco tamanho 39!!! Nada a ver com nada. Eu tenho um casamento no sábado, como vou usar um tênis 39??
    [Support Agent]: Nossa, entendo perfeitamente sua frustração e peço mil desculpas por isso! :pensive: Realmente não é a experiência que queremos que você tenha na Beautiful Feet, ainda mais com um casamento chegando. Vou verificar o pedido BF-88209 agora mesmo. Só um instante.
    [Customer]: Por favor, vê isso rápido. Eu não tenho tempo de ir no correio devolver e esperar chegar outro. Se não chegar até sexta eu vou ter que cancelar e comprar em loja física.
    [Support Agent]: Já localizei aqui. Realmente consta a saída da Sandália Royal Velvet 37. Houve um erro grave na nossa expedição na hora de etiquetar as caixas. Sinto muito mesmo. Para eu agilizar a troca expressa, você consegue me mandar uma foto da etiqueta da caixa e do tênis que chegou?
    [Customer]: Tá, espera aí. [Customer sends image: photo of a bulky white sneaker inside a delicate box]. Tá vendo? Olha a etiqueta, diz "Destinatário: Carla" mas dentro tá esse tênis gigante.
    [Support Agent]: Obrigada pela foto, Carla. Já registrei o erro aqui. Normalmente, nosso processo pede que o cliente devolva o errado antes de enviarmos o certo, mas dada a urgência do seu evento no sábado, eu vou abrir uma exceção de "Envio Prioritário".
    [Support Agent]: Vou despachar um novo par da Royal Velvet 37 ainda hoje via Sedex 10. Assim garantimos que chega até quinta ou sexta no máximo. Pode ser?
    [Customer]: Ai, sério? Se chegar até sexta me salva. Mas e esse tênis aqui? Eu não tenho como ir no correio hoje, tô no trabalho.
    [Support Agent]: Não se preocupe com o tênis agora. O foco é garantir seu sapato para o casamento! :raised_hands: Vou te mandar um código de postagem reverso no e-mail, e você tem até 15 dias para deixar no Correios quando ficar mais tranquilo para você.
    [Customer]: Menos mal. Tá bom então, Beatriz. Vou ficar de olho no rastreio. Se não chegar na sexta de manhã eu volto a chamar aqui.
    [Support Agent]: Combinado! O novo código de rastreio vai chegar no seu e-mail em até 2 horas. Qualquer coisa, é só me chamar. Desculpe novamente pelo susto e espero que arrase no casamento com a Beautiful Feet!
CHAT

Question.create!(name: "Pedido errado", content: conversas)

conversas_2 = <<~CHAT2
  [Customer]: Olá, boa tarde. Recebi meu pedido #BF59321 hoje cedo, o tênis Urban Flex Branco – tamanho 39, mas ele veio com um risco enorme na lateral :confused: Isso não é normal, né?
  [Support Agent]: Boa tarde! Poxa, sinto muito por isso :pensive: Claro que não é normal. Você pode me enviar uma foto do dano para que eu consiga te ajudar melhor?
  [Customer]: Mandei agora. Repara na lateral direita… parece até que arrastaram na caixa.
  [Support Agent]: Obrigado pela foto! Realmente, o risco é bem visível. Vou verificar aqui no sistema se houve alguma ocorrência registrada durante o transporte.
  [Customer]: É, fiquei bem chateada… comprei pra usar no fim de semana. :weary:
  [Support Agent]: Entendo totalmente sua frustração, e peço desculpas por isso :pray: Verifiquei aqui e a transportadora marcou uma observação de “caixa amassada” na etapa de transferência do dia 30/11. Tudo indica que o item foi danificado no transporte.
  [Customer]: Nossa… então não foi nem verificado antes de enviar?
  [Support Agent]: Infelizmente, o dano provavelmente aconteceu depois da expedição, durante o trajeto. Mas isso não é culpa sua — vamos resolver. Posso abrir agora uma troca imediata, sem custo, e o novo par será enviado assim que o danificado for coletado.
  [Customer]: E essa coleta demora muito?
  [Support Agent]: Normalmente é bem rápida. Posso agendar para amanhã, entre 8h e 18h. Funciona pra você?
  [Customer]: Sim, funciona. Só quero receber um par em boas condições mesmo.
  [Support Agent]: Perfeito! Solicitação aberta: #R-99341. A coleta será amanhã, e assim que o transportador confirmar, enviamos um novo Urban Flex Branco – 39 pra você.
  [Customer]: Obrigado pela agilidade. Tomara que o próximo venha certinho.
  [Support Agent]: Pode deixar, vou acompanhar pessoalmente para garantir que saia tudo certo :blush: Qualquer coisa, é só chamar!
CHAT2

Question.create!(name: "Sapato danificado", content: conversas_2)

conversas_3 = <<~CHAT3
  [Customer]: Oi, boa tarde. Tô tentando fechar uma compra aqui no site de vocês mas tá difícil. O cupom de primeira compra não tá entrando de jeito nenhum.
  [Support Agent]: Olá! Boa tarde. Aqui é a Sofia, da equipe de Customer Success da Beautiful Feet :high_heel:. Sinto muito por esse inconveniente, nós adoramos dar descontos e queremos que você os use! Me conta, qual é o código que você está tentando aplicar e qual mensagem de erro aparece?
  [Customer]: O código é o BEMVINDA10. Eu recebi no meu email agorinha. Eu coloquei no carrinho a bota "Urban Leather" preta tamanho 36 e um scarpin nude básico. Quando clico em aplicar, aparece uma letra vermelha dizendo "Cupom não aplicável a estes itens".
  [Customer]: Já tentei tirar o scarpin, deixar só a bota, tentei escrever em minúsculo, e nada. Tô quase desistindo, só ia fechar por causa do desconto que paga o frete.
  [Support Agent]: Entendi, obrigada pelos detalhes! Não desista ainda, vamos resolver isso. Vou verificar as regras desse cupom no sistema agora mesmo. Você poderia me confirmar se essa bota "Urban Leather" que você escolheu é a que tem a fivela dourada, da coleção nova de Inverno?
  [Customer]: Sim, essa mesma da fivela. Mas gente, no email que vocês mandaram tava escrito bem grande "10% OFF em TODO o site". Eu não vi nada de exceção.
  [Support Agent]: Obrigada por confirmar. Analisei aqui no sistema. O cupom BEMVINDA10 está ativo, porém, ele possui uma restrição automática de sistema para itens da categoria "Lançamentos/New In", que é justamente o caso da Bota Urban Leather.
  [Support Agent]: Geralmente, essas regras ficam nas letras miúdas do rodapé do e-mail, mas entendo perfeitamente que a chamada principal de "todo o site" pode ter gerado essa confusão. Peço desculpas por essa falha na comunicação.
  [Customer]: Ah não, sério? Que pegadinha chata. Eu li o email rápido e não vi rodapé nenhum. Me senti meio enganada agora. A bota custa 400 reais, 10% faz diferença. Se não tiver como aplicar, eu vou ter que abandonar o carrinho, achei chato isso.
  [Support Agent]: Compreendo totalmente sua frustração e você tem toda razão, a experiência não deveria ser confusa assim. Não queremos perder você como cliente Beautiful Feet, ainda mais na sua primeira experiência conosco! :sparkling_heart:
  [Support Agent]: Como foi uma falha nossa na clareza do e-mail, conversei com minha supervisora e consegui gerar um código manual pra você que funciona inclusive nos lançamentos. Pode tentar usar o código: VIP-SOFIA-BF? Ele deve liberar os 10% na bota agora.
  [Customer]: Hum, tá bom. Deixa eu testar aqui, peraí...
  [Customer]: [3 minutos depois] Aaaah agora foi! Deu o desconto de R$ 56,00 no total. Ufa. Obrigada, Sofia. Se não fosse isso eu ia fechar a aba aqui e ir comprar na concorrente rs.
  [Support Agent]: Que alívio! :tada: Fico muito feliz que deu certo. A Bota Urban Leather é um dos nossos modelos mais confortáveis, tenho certeza que você vai amar. Já vi que o pedido foi confirmado aqui no sistema.
  [Customer]: Beleza. Já paguei no PIX. Obrigada pela ajuda rápida.
  [Support Agent]: Imagina, eu que agradeço a paciência! Já estamos separando seu par 36 com todo carinho. Qualquer dúvida sobre o rastreio, é só chamar aqui. Tenha uma semana incrível com seus sapatos novos! :sparkles:
CHAT3

Question.create!(name: "Cupom não aplicado", content: conversas_3)

conversas_4 = <<~CHAT4
  [Customer]: Oi, boa tarde. Preciso falar com alguém sobre uma troca por defeito, mas é urgente.
  [Support Agent]: Olá, boa tarde! Aqui é o Lucas, do time de Experiência da Beautiful Feet. Sinto muito que tenha tido um problema com seu pedido. Estou aqui para ajudar. Pode me informar o número do pedido e o que aconteceu?
  [Customer]: O pedido é o #BF-44901. Eu comprei o Scarpin "Classic Nude" verniz, tamanho 37. Chegou hoje de manhã. A caixa tava intacta, bonita e tal. Mas quando eu tirei o sapato do saquinho de tecido... decepção total.
  [Customer]: O pé direito tá com um risco enorme na lateral do verniz, parece que alguém passou uma chave ali. E o pior: o salto tá bambo. Se eu piso, ele entorta. Eu paguei quase 400 reais nesse sapato, gente! Cadê o controle de qualidade?
  [Support Agent]: Nossa, lamento profundamente por essa experiência! :worried: Isso foge totalmente do nosso padrão, especialmente na linha Classic, que é feita à mão. Entendo sua frustração, é horrível esperar algo lindo e receber assim. Para eu acionar a garantia imediata, você consegue me enviar uma foto do risco e, se possível, um vídeo curto mexendo nesse salto bambo?
  [Customer]: Espera aí, vou tirar agora. [Customer sends image: Close-up of a deep scratch on the beige patent leather]. [Customer sends video: Hand wobbling the high heel, showing it is loose from the sole]. Tá vendo? É perigoso eu torcer o pé usando isso.
  [Support Agent]: Recebi as mídias. Realmente, inaceitável. O vídeo mostra claramente que a estruturação do salto falhou. Peço mil desculpas por termos deixado isso passar. :pensive: Já abri o protocolo de defeito #DEF-992. Como você prefere prosseguir? Posso estornar o valor agora ou enviar um par novo conferido por mim pessoalmente?
  [Customer]: Olha Lucas, eu queria o sapato porque tenho uma reunião importante na quinta-feira e ele combinava com a roupa. Mas agora tô com medo de pedir outro e vir solto também. O verniz riscado até dava pra relevar, mas o salto quebrado não dá.
  [Support Agent]: Compreendo perfeitamente o receio. O que posso fazer é o seguinte: vou separar um par novo no estoque agora e pedir para a supervisão de qualidade fazer o "Teste de Estabilidade" antes de embalar. Posso te mandar foto dele antes de despachar. E para compensar o transtorno e garantir que chegue para sua reunião, eu envio por Sedex 12 (entrega expressa) por nossa conta. O que acha?
  [Customer]: Hum... se você me mandar foto antes provando que tá perfeito, eu aceito. Eu realmente gostei do modelo. Mas e esse estragado aqui? Não vou ter tempo de ir no correio postar amanhã, meu dia é corrido.
  [Support Agent]: Sem problemas! Não quero te dar trabalho extra. Como o defeito é visível e grave, não precisa devolver agora. Vou gerar uma coleta domiciliar para a semana que vem, ou você doa para alguma instituição de reparo de calçados se preferir. O foco agora é te entregar o novo a tempo. Vou buscar o par no estoque. Me dá 10 minutos?
  [Customer]: Nossa, sério? Isso ajuda muito, não ter que ir no correio. Tá bom, Lucas. Aguardo a foto do par novo então. Se estiver 100%, pode mandar.
  [Support Agent]: Perfeito! Já volto com as fotos do seu "Classic Nude" impecável. Obrigada por nos dar uma segunda chance de acertar! :high_heel::sparkles:
CHAT4

Question.create!(name: "Defeito no produto", content: conversas_4)

conversas_5 = <<~CHAT5
  [Customer]: Bom dia. Estou tentando rastrear meu pedido há 3 dias e o site da transportadora não atualiza. O prazo de entrega era para ontem, dia 01/12, e até agora nada.
  [Support Agent]: Olá, bom dia! Aqui é a Júlia, do atendimento da Beautiful Feet. Peço mil desculpas pelo atraso e pela falta de atualização no rastreio. Sei o quanto é frustrante esperar uma encomenda que não chega na data combinada. :confused: Você pode me informar o número do seu pedido para eu verificar o que houve com a transportadora agora mesmo?
  [Customer]: O pedido é o #BF-50588. Comprei o Tênis "Cloud Running" Branco, tamanho 35. Eu comprei com antecedência justamente porque vou viajar na sexta-feira agora e queria levar ele. Se não chegar, vou ter um problema sério.
  [Support Agent]: Entendi perfeitamente a urgência, obrigada pelos dados. Estou acessando o sistema da transportadora "FlashLog" aqui. Só um minuto... Realmente, consta que o pacote saiu do nosso centro de distribuição no dia 25/11, mas travou no status "Em transferência entre unidades" em Barueri desde o dia 28/11. Isso não é comum.
  [Customer]: Pois é, travou! E ninguém me avisa nada. Eu paguei o frete mais caro pra chegar rápido. Eu viajo sexta de manhã cedo. Vocês conseguem garantir que chega até quinta à noite?
  [Support Agent]: Eu lamento muito por essa falha de comunicação da transportadora. Já estou abrindo um chamado de "Prioridade Máxima" com o gerente de conta deles para destravarem essa entrega hoje mesmo. Sendo bem transparente com você: como travou na triagem, eles pedem até 48h para finalizar. Ou seja, a previsão mais realista é que chegue na quinta-feira (dia 04/12) ao longo do dia. Vai ficar bem em cima do prazo da sua viagem.
  [Customer]: Nossa, Júlia, que risco. Quinta-feira eu vou estar o dia todo fora resolvendo coisas da viagem, só vai ter gente em casa depois das 18h. Se eles tentarem entregar de manhã e não tiver ninguém, eles vão embora e eu fico sem o tênis?
  [Support Agent]: Ótimo ponto. Para evitar isso, vou colocar uma observação na nota de transporte pedindo "Entrega em horário comercial estendido" ou solicitar que deixem na portaria (se você morar em prédio). Você mora em casa ou apartamento? Além disso, como forma de compensar esse estresse e o atraso, já solicitei o estorno integral do valor do frete no seu cartão. É o mínimo que podemos fazer pelo transtorno.
  [Customer]: Ah, o estorno ajuda, obrigada. Eu moro em prédio sim, tem porteiro 24h. Então se eles entregarem quinta de manhã, o porteiro recebe. O meu medo é eles não entregarem quinta.
  [Support Agent]: Perfeito! Se tem portaria 24h, fica muito mais seguro. Com o chamado de prioridade que abri agora, a transportadora sabe que temos um prazo fatal. Vou fazer o seguinte: vou monitorar pessoalmente esse rastreio amanhã e te mando uma mensagem no WhatsApp confirmando se saiu para entrega. Se até quinta de manhã não tiver atualizado, nós enviamos um motoboy de emergência se você estiver na capital (SP), ou pensamos num plano B. Pode ser?
  [Customer]: Tá bom, isso me deixa mais tranquila. Se tiver a opção do motoboy caso dê tudo errado, eu respiro melhor. Eu amo os sapatos de vocês, é a terceira vez que compro, mas essa transportadora tá difícil.
  [Support Agent]: Fico muito feliz que seja nossa cliente fiel! :heart: Vamos rever o contrato com essa transportadora sim. Pode deixar que não vou te deixar na mão para sua viagem. Amanhã te chamo com novidades. O estorno do frete deve aparecer na sua fatura em até 2 dias úteis.
  [Customer]: Combinado, Júlia. Fico no aguardo então. Obrigada.
  [Support Agent]: Eu que agradeço a compreensão. Vai dar certo! Tenha um ótimo dia e até breve. :athletic_shoe::airplane:
CHAT5

Question.create!(name: "Atraso na entrega", content: conversas_5)
