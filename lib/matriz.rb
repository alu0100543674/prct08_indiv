require 'matrix'
class Matriz
   attr_reader :filas, :columnas, :matriz
 
   def initialize(matriz)
      @matriz = matriz
      @filas = matriz.size;
      @columnas = matriz[0].size
   end

   def +(other)
    i = 0
    j = 0
    suma = @matriz
    while i < @filas      
      while j < @columnas
        suma[i][j] = suma[i][j] + other.matriz[i][j]
        j += 1
      end
      i += 1
      j = 0
    end
    Matriz.new(suma)
   end

end
