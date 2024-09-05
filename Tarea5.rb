# Se requiere la gema 'faker' para generar datos falsos
require 'faker'

# Esta clase se llama GeneradorDeCantantes y genera una lista de cantantes con información relevante sobre su carrera.
class GeneradorDeCantantes
  # Se inicializa una variable de instancia para almacenar la lista de cantantes.
  def initialize
    @cantantes = []
  end

  # Este método genera una lista de 100 cantantes, cada uno con un nombre, domicilio, correo electrónico, género musical, banda, y álbum.
  def generar_lista_de_cantantes
    100.times do
      # Se crea un hash para almacenar los datos de cada cantante.
      cantante = {
        nombre: Faker::Name.name,                   # Se genera un nombre falso.
        domicilio: Faker::Address.full_address,     # Se genera un domicilio falso.
        correo: Faker::Internet.email,              # Se genera un correo electrónico falso.
        telefono: Faker::PhoneNumber.phone_number,  # Se genera un número de teléfono falso.
        genero_musical: Faker::Music.genre,         # Se genera un género musical.
        banda: Faker::Music.band,                   # Se genera el nombre de una banda.
        album: Faker::Music.album                   # Se genera el nombre de un álbum.
      }
      # Se añade el hash a la lista de cantantes.
      @cantantes << cantante
    end
  end

  # Este método imprime la lista de cantantes.
  def imprimir_lista
    @cantantes.each_with_index do |cantante, index|
      puts "Cantante #{index + 1}:"
      puts "Nombre: #{cantante[:nombre]}"
      puts "Domicilio: #{cantante[:domicilio]}"
      puts "Correo Electrónico: #{cantante[:correo]}"
      puts "Teléfono: #{cantante[:telefono]}"
      puts "Género Musical: #{cantante[:genero_musical]}"
      puts "Banda: #{cantante[:banda]}"
      puts "Álbum: #{cantante[:album]}"
      puts "------------------------"
    end
  end
end

# Ejemplo de uso
generador = GeneradorDeCantantes.new
generador.generar_lista_de_cantantes
generador.imprimir_lista
