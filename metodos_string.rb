# Métodos De String
# Alejandro López Vázquez

# Método para convertir una cadena a mayúsculas
def convertir_a_mayusculas(cadena)
    cadena.upcase
  end
  
  # Método para convertir una cadena a minúsculas
  def convertir_a_minusculas(cadena)
    cadena.downcase
  end
  
  # Método para contar el número de caracteres en una cadena
  def contar_caracteres(cadena)
    cadena.length
  end
  
  # Método para verificar si una cadena contiene una subcadena
  def contiene_subcadena?(cadena, subcadena)
    cadena.include?(subcadena)
  end
  
  # Método para reemplazar una subcadena en una cadena
  def reemplazar_subcadena(cadena, subcadena_antigua, subcadena_nueva)
    cadena.gsub(subcadena_antigua, subcadena_nueva)
  end
  
  # Ejemplo de uso
  puts convertir_a_mayusculas("hola mundo")                # => "HOLA MUNDO"
  puts convertir_a_minusculas("HOLA MUNDO")                # => "hola mundo"
  puts contar_caracteres("hola")                          # => 4
  puts contiene_subcadena?("hola mundo", "mundo")         # => true
  puts reemplazar_subcadena("hola mundo", "mundo", "universo")  # => "hola universo"
  
  