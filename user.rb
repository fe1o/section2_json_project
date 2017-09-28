require 'json' #comando para utilizar o json, um acronimo para Java Script Object Notation

class User
	
	attr_accessor :email, :name, :permissions
	
	def initialize(*args)#o asterisco ou splat, serve para o args utilizar os argumentos dados em attr, e cria um array 
		@email = args[0]                     #com a ordem de cada um, email como é o primeiro seria zero e por ai vai.	
		@name = args[1]
		@permissions = User.user_perm #métedo que sera criado para puxar as permissoes do arquivo json para o código	
	end
	
	def self.user_perm
		file = File.read 'user_perm.json' #variável criada para estocar o que está contido nas permissoes
		JSON.load(file, nil, symbolize_names: true)#comando para criar um obejeo json que dará load no arquivo	
																								#nil é onde estariam opções mas não será necessaria nenhuma
																								#symbolyze é para uma boa formatação
	end
	
	def save#agora com as permissoes e os nomes, precisamos estocar os usuarios no arquivo .json, criamos o método
		savedusers = {email: @email, name: @name, permissions: @permissions}.to_json #criamos um objeto json para ser 		
		open('users.json', 'a') do |file|#agora para salvarmos no arquivo            #estocado em um arquivo .json, e 
			file.puts savedusers#utilizaremos o open para abrir o arquivo         	#convertemos para .json com o método
		end#e um método de loop com file(o aqrquivo).puts(método para ficar cada user em sua linha) savedusers(a 
			 #variavelaonde se localizam os atributos do user)
	end

end