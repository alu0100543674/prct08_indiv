require 'matriz.rb'

describe Matriz do
  before :each do
     #@matriz1 = Matriz.new([[1, 1], [1, 1]])
     #@matriz2 = Matriz.new([[1, 1], [1, 1]])
     #@msum = Matriz.new ([[2, 2], [2, 2]])

     @matriz1 = Matriz.new(2,2)
     @matriz1[0] = [2, 2]
     @matriz1[1] = [2, 2]

     @matriz2 = Matriz.new(2,2)
     @matriz2[0] = [1, 1]
     @matriz2[1] = [1, 1]
     
     @matrizsuma = Matriz.new(2,2)
     @matrizsuma[0] = [3, 3]
     @matrizsuma[1] = [3, 3]
 
     @matrizresta = Matriz.new(2,2)
     @matrizresta[0] = [1, 1]
     @matrizresta[1] = [1, 1]


  end 
   
 

  end
