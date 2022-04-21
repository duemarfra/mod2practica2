#* 2.- Se quiere hacer un conversor de medidas:

#* De pies a metros
#* de metros a pies

#* Donde m = ft / 3.2808 (m = meters, ft = feets)
#* ¿Que alternativas tenemos para implementar la solución? ¿Cuál considerás mejor?
#* ¡Implementala!

METER = 3.2808 #ft
FEET = 1 / METER

numero = gets.chomp.to_f

class Converter

    def initialize( num )

        @num = num

    end

    def piesAMetros

        puts "#{ @num } pies son #{ @num * FEET } metros"
        
    end

    def metrosAPies

        puts "#{ @num } metros son #{ @num * METER } pies"
        
    end
    
end

convierte = Converter.new( numero )

convierte.piesAMetros

convierte.metrosAPies