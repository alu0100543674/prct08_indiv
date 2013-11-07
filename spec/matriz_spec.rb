require 'matriz.rb'

describe Matriz do
  before :each do
    @matriz1 = Matriz.new(2,2,[[1,1],[1, 1]])
    # @matriz1[0] = [1,2]
    # @matriz1[1] = [3,4]
                
    @matriz2 = Matriz.new(2,2,[[1,1],[1, 1]])
    # @matriz2[0] = [1,2]
    # @matriz2[1] = [3,4]

    @matriz3 = Matriz.new(2, 3, [[1,2,3], [4,5,6]])
    

  end

  describe " Numero de filas y columnas " do
    it " Matriz 1 " do
       @matriz1.filas.should eq(2)
       @matriz1.columnas.should eq(2)
    end
    it " Matriz 2 " do
       @matriz2.filas.should eq(2)
       @matriz2.columnas.should eq(2)
    end
  end

  describe " Comprobamos las matrices " do
    it " Matriz 1: acceso a los elementos en cada posicion " do 
       @matriz1.matriz[0][0].should eq(1)
       @matriz1.matriz[0][1].should eq(1)
       @matriz1.matriz[1][0].should eq(1)
@matriz1.matriz[1][1].should eq(1)
    end
    it " Matriz 2: acceso a los elementos en cada posicion" do
       @matriz2.matriz[0][0].should eq(1)
       @matriz2.matriz[0][1].should eq(1)
       @matriz2.matriz[1][0].should eq(1)
       @matriz2.matriz[1][1].should eq(1)
    end
  end

  describe " Operaciones aritmeticas " do
    it " Suma de dos matrices " do
       @resultado = Matriz.new(2,2,[[2, 2],[2,2]])
       @sum = @matriz1 + @matriz2
       @sum.to_s.should eq(@resultado.to_s)
    end
    it " Resta de dos matrices " do
       @resultado = Matriz.new(2,2,[[0, 0],[0,0]])
       @res = @matriz1 - @matriz2
       @res.to_s.should eq(@resultado.to_s)
    end
   
    it " Multiplicacion de dos matrices " do
       @resultado = Matriz.new(2, 2, [[2, 2], [2, 2]])
       @mult = @matriz1 * @matriz2
       @mult.to_s.should eq(@resultado.to_s)
    end
    
    it " Traspuesta de una matriz " do
       @traspuesta = Matriz.new(3, 2, [[1,4], [2, 5], [3, 6]])
       @matriz3.traspuesta.to_s.should eq(@traspuesta.to_s)


    end
  end


   
       




end
