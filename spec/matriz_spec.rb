require 'matriz.rb'

describe Matriz do
  before :each do
     @matriz1 = Matriz.new(2,2)
     @matriz1[0] = [1, 1]
     @matriz1[1] = [1, 1]

     @matriz2 = Matriz.new(2,2)
     @matriz2[0] = [1, 1]
     @matriz2[1] = [1, 1]
      
  end 
end
