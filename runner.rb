require 'pp'#print and uts para estilizar o output#runner no caso seria a Main do projeto
require_relative 'user'#como é a main tudo de user está aqui para ser usado

user = User.new 'tk@exemple.com', 'Tarkus'

pp user  #para printar o user

user.save #save para salvar o usuario