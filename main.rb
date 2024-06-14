animais = ['cachorro', 'gato', 'elefante', 'leão', 'tigre', 'zebra', 'girafa', 'coelho', 'tartaruga', 'golfinho']
frutas = ['maçã', 'banana', 'laranja', 'abacaxi', 'morango', 'uva', 'melancia', 'pêssego', 'kiwi', 'manga']
cores = ['vermelho', 'azul', 'verde', 'amarelo', 'preto', 'branco', 'roxo', 'rosa', 'cinza', 'marrom']
cidades = ['recife', 'salvador', 'bahia', 'vitoria', 'brasília', 'fortaleza', 'manaus', 'curitiba', 'olinda', 'belém']
profissoes = ['médico', 'advogado', 'professor', 'engenheiro', 'enfermeiro', 'dentista', 'arquiteto', 'jornalista', 'psicólogo', 'pintor']


vidas = ["\u2764 \u2764 \u2764 \u2764 \u2764 \u2764 \u2764",
"\u2764 \u2764 \u2764 \u2764 \u2764 \u2764",
"\u2764 \u2764 \u2764 \u2764 \u2764",
"\u2764 \u2764 \u2764 \u2764",
"\u2764 \u2764 \u27640",
"\u2764 \u2764",
"\u2764",
""]

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
  
palavras = [animais , frutas , cores , cidades , profissoes]
dicas = ['animal' , 'fruta' , 'cor' , 'cidade' , 'profissão']

indice_array = rand(palavras.size) # Escolhe o indice de um array aleatorio

lista_escolhida = palavras[indice_array] # Guarda o array de onde foi escolhido a palavra
dica_escolhida = dicas[indice_array] # Armazena o nome do array que foi escolhido a palavra, para ser usado como dica

palavra_aleatoria = lista_escolhida.sample # Escolhe a palavra
palavra_escolhida = palavra_aleatoria # Guarda a palavra escolhida
quant_letras = palavra_escolhida.size # Guarda a quantidade de letras da palvra

erros = 0
palavra_oculta = Array.new(quant_letras, "_") # Cria um array de caracteres com a quantidade de elementos da palavra escolhida

puts "----------------------------------------------"
puts "              * Jogo da Forca *                "
puts "----------------------------------------------"
puts "\nBem-vindo ao Jogo da Forca!"
puts "Adivinhe a palavra, uma letra de cada vez."
puts "Se errar muitas vezes, o boneco será enforcado!"
puts "Boa sorte!\n"
puts "----------------------------------------------"

#Imprime o estagio da forca de acordo com a quantidade de erros
while erros < estagios_forca.size
    puts "Dica:  #{dica_escolhida}"
    puts estagios_forca[erros]
    
    print "      #{palavra_oculta.join}\n"    
    
    puts " \n    #{vidas[erros]} \n"

    print "\n Digite uma letra: "
    letra_digitada = gets.chomp[0]
    
    
    #Verifica se a letra existe na palavra escholida
    if palavra_escolhida.include?(letra_digitada)
        
        # Responsável por verificar se a letra digitada pelo usuário está presente na palavra escolhida, e a posiciona no lugar exato
        palavra_escolhida.chars.each_with_index do |char, index|
            if char == letra_digitada
                palavra_oculta[index] = letra_digitada
            end
        end
            
    else
        erros += 1  
    end
    
    if palavra_oculta.join == palavra_escolhida
        puts "Você acertou a palavra XD"
        puts "A palavra era exatamente #{palavra_escolhida}"
        break
    elsif erros >= estagios_forca.size
        puts "Você Perdeu!!!"
        puts "A palavra era #{palavra_escolhida}"
        break
    end
end
 

