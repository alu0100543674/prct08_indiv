require 'matrix'
class Matriz
   attr_reader :filas, :columnas, :matriz
 
   def initialize(matriz)
      @matriz = matriz
      @filas = matriz.size;
      @columnas = matriz[0].size
   end



end
