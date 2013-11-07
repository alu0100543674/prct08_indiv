require 'matrix'
class Matriz
  attr_reader :filas, :columnas, :matriz

  def initialize(filas, columnas, matriz)
     @filas, @columnas = filas, columnas
     @matriz = Array.new(matriz)
  end

  def filas
     @filas
  end
  
  def columnas
     @columnas
  end

  def to_s
     aux = ""
     i = 0
     while (i < @filas)
       j = 0
       while (j < @columnas)
           aux +="#{matriz[i][j]}\t"
           j += 1
       end
       aux += "\n"
       i += 1
     end
     aux
   end


   def +(other)
     raise ArgumentError, 'No se puede sumar' unless @filas == other.filas && @columnas == other.columnas
     col = Array.new(0)
     for i in 0...filas do
       fil = Array.new(0)
       for j in 0...columnas do
         fil << matriz[i][j] + other.matriz[i][j]
       end
       col << fil
      end
      Matriz.new(@filas, @columnas, col)
   end

   def -(other)
      raise ArgumentError, 'No se puede restar' unless @filas == other.filas && @columnas == other.columnas
        col = Array.new(0)
        for i in 0...filas do
          fil = Array.new(0)
          for j in 0...columnas do
            fil << matriz[i][j] - other.matriz[i][j]
          end
          col << fil
        end
    
     Matriz.new(@filas, @columnas, col)
  end

  def *(other)
     raise ArgumentError, 'No se pueden multiplicar' unless @columnas == other.filas
     col = Array.new(0)
     for i in 0...filas do
        fil = Array.new(0)
        for j in 0...other.columnas do
           aux = 0
           for k in 0...columnas do
              aux += matriz[i][k] * other.matriz[k][j]
           end
           fil << aux
        end
        col << fil
      end
      Matriz.new(@filas, other.columnas, col)
  end
 
   def traspuesta
     col = Array.new(0)
     for i in 0...columnas do
       fil = Array.new(0)
       for j in 0...filas do
         fil << matriz[j][i]
       end
       col << fil
     end
     Matriz.new(@columnas, @filas, col)
   end

end
