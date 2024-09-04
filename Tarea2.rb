class ContadorPalabras
  # Se inicializa la variable de instancia @texto que almacenará el String de entrada.
  def initialize(texto)
    @texto = texto
  end

  # Este método cuenta las palabras repetidas en el texto utilizando un Hash para almacenar las palabras y su frecuencia.
  def contar_palabras_repetidas
    # El método scan con una expresión regular selecciona todas las palabras en el texto.
    palabras = @texto.scan(/\w+/)

    # Se inicializa un Hash para almacenar la frecuencia de cada palabra.
    frecuencia = Hash.new(0)

    # Se itera sobre cada palabra para contar su frecuencia.
    palabras.each do |palabra|
      frecuencia[palabra.downcase] += 1
    end

    # Se devuelve el Hash de frecuencias.
    frecuencia
  end

  # Este método imprime las palabras y sus frecuencias en el formato solicitado.
  def imprimir_frecuencia
    # Se obtiene el Hash de frecuencias llamando al método de contar palabras
    frecuencias = contar_palabras_repetidas
    puts "Contador de cada vez que se repiten las palabras:"
    # Se itera sobre cada par de palabra y frecuencia en el Hash.
    frecuencias.each do |palabra, cuenta|
      # Se imprime la palabra con su frecuencia
      puts "#{palabra.capitalize} => #{cuenta}"
    end
  end

  #-------------MODIFICACIONES DE LA TAREA 3-----------------------------------
  # Este método permite actualizar el valor de la variable de instancia @texto.
  def actualizar_texto(nuevo_texto)
    @texto = nuevo_texto
  end

  #---------MODIFICACIONES DE LA TAREA 4-------------------------------------
  # Sobrecarga del método to_s para mostrar el nombre del objeto.
  def to_s
    "ContadorPalabras: texto actual = #{@texto}"
  end
end

# Ejemplo de uso - Tarea 2
puts "-------------TAREA 2--------------------"
contador = ContadorPalabras.new("Hola hola soy Alejandro")
contador.imprimir_frecuencia

# Se actualiza el texto en la instancia del objeto - Tarea 3
puts "-------------TAREA 3--------------------"
contador.actualizar_texto("Hola hola nuevamente este es un texto actualizado")
contador.imprimir_frecuencia

# Se muestra el nombre del objeto usando la sobrecarga del método to_s - Tarea 4
puts "-------------TAREA 4--------------------"
puts contador  
