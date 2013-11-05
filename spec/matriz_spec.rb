require 'matriz.rb'

describe Matriz do
  before :each do
     @matriz1 = Matriz.new([[1, 1], [1, 1]])
     @matriz2 = Matriz.new([[1, 1], [1, 1]])

     #@matriz1 = Matriz.new(2,2)
     #@matriz1[0] = [1, 1]
     #@matriz1[1] = [1, 1]

     #@matriz2 = Matriz.new(2,2)
     #@matriz2[0] = [1, 1]
     #@matriz2[1] = [1, 1]
      
  end 
   
  describe " Almacenamiento de matrices " do
     it "Deber tener columnas matriz1 " do
        #(defined?(@matriz1.columnas)).should be_true
        @matriz1.columnas.should eq(2)
     end
     it " Debe tener filas matriz1 " do
        #(defined?(@matriz1.filas)).should be_true
        @matriz1.filas.should eq(2)
     end

      it "Deber tener columnas matriz2 " do
        #(defined?(@matriz2.columnas)).should be_true
        @matriz2.columnas.should eq(2)
     end
     it " Debe tener filas matriz2 " do
        #(defined?(@matriz2.filas)).should be_true
        @matriz2.filas.should eq(2)
     end
  end

  describe " Suma " do
     it " Debe realizar la suma de matrices " do
       sum = @matriz1 + @matriz2
       @matriz5 = Matriz.new([[2, 2], [2, 2]])
       sum.should eq(@matriz5)
     end
  end
end
