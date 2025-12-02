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
