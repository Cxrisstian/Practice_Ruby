class S
  puts 'Comenzó la clase S'
  puts self
  module M
    puts 'Módulo anidado S::M'
    puts self
  end
  puts 'De regreso en el nivel más superficial de S'
  puts self
end