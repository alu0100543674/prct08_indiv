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
   
  describe " Almacenamiento de MATRIZ1 " do
     it "Deber tener columnas " do
        #(defined?(@matriz1.columnas)).should be_true
        @matriz1.columnas.should eq(2)
     end
     it " Debe tener filas " do
        #(defined?(@matriz1.filas)).should be_true
        @matriz1.filas.should eq(2)
     end

      it "Deber tener columnas " do
        #(defined?(@matriz2.columnas)).should be_true
        @matriz2.columnas.should eq(2)
     end
     it " Debe tener filas " do
        #(defined?(@matriz2.filas)).should be_true
        @matriz2.filas.should eq(2)
     end


  end
end
