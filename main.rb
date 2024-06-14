palavras = ['cachorro', 'gato', 'elefante', 'leão', 'tigre', 'zebra', 'girafa', 'coelho', 'tartaruga', 'golfinho',
'maçã', 'banana', 'laranja', 'abacaxi', 'morango', 'uva', 'melancia', 'pêssego', 'kiwi', 'manga',
'vermelho', 'azul', 'verde', 'amarelo', 'preto', 'branco', 'roxo', 'rosa', 'cinza', 'marrom',
'recife', 'salvador', 'bahia', 'vitoria', 'brasília', 'fortaleza', 'manaus', 'curitiba', 'olinda', 'belém',
'médico', 'advogado', 'professor', 'engenheiro', 'enfermeiro', 'dentista', 'arquiteto', 'jornalista', 'psicólogo', 'pintor']

estagios_forca = [
    "
     _________
    |         |
    |
    |
    |
    |",
    
    "
     _________
    |         |
    |         0
    |
    |
    |",
    
    "
     _________
    |         |
    |         0
    |         |
    |
    |",
    
    "
     _________
    |         |
    |         0
    |        /|
    |
    |",
    
    "
     _________
    |         |
    |         0
    |        /|\\
    |
    |",
    
    "
     _________
    |         |
    |         0
    |        /|\\
    |        /
    |",
    
    "
     _________
    |         |
    |         0
    |        /|\\
    |        / \\
    |"
  ]
  
  

indice_aleatorio = rand(palavras.size) # Escolhe a palavra
palavra_escolhida = palavras[indice_aleatorio] # Guarda a palavra escolhida
quant_letras = palavra_escolhida.size # Guarda a quantidade de letras da palvra

erros = 0
palavra_oculta = Array.new(quant_letras, "_") # Cria um array de caracteres com a quantidade de elementos da palavra escolhida

#Imprime o estagio da forca de acordo com a quantidade de erros
while erros < estagios_forca.size
    puts estagios_forca[erros]

    
    palavra_oculta = "_" * quant_letras
    #print "     " + palavra_oculta + "\n"
    
    print "\n Digite uma letra: "
    letra_digitada = gets.chomp
    
    
    #Verifica se a letra existe na palavra sorteada
    if palavra_escolhida.include?(letra_digitada)
        palavra_escolhida.chars.each_with_index do |char, index|
                if char == letra_digitada
                    palavra_oculta[index] = letra_digitada
                end
        end
        
        print "     " + palavra_oculta.join + "\n"            
    
    else
        erros += 1  
    end
end
 

