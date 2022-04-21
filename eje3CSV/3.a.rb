#* -------3.a-------

require 'csv'

public
class ProductsList
    
    def parsear

        path = 'productos.csv'

        productos = CSV.read(path)

        coleccionProductos = productos.to_a

        p coleccionProductos
        
    end
    
end

producList = ProductsList.new

arrayProductos = producList.parsear

#* -------3.b-------


class Purchase

    def initialize(nombre, arrayProductos)

      @nombre = nombre
      @arrayProductos = arrayProductos

    end

    def add(codProducto)

        file = File.open('productos.csv')

        file.readlines.each { |row|

        if row.include?(codProducto) == true

            File.open( 'purchase.csv', 'a' ) { |file| file.write row }

        end

        }

    end

    def total(descuentoPorcentual, codProdDescuento, cantidadDescuentoProd)

        listaCompras = 'purchase.csv'

        compras = CSV.read( listaCompras )

        coleccionCompras = compras.to_a

        total = 0

        coleccionCompras.map { |item|
        
            total += item[2].to_f
            
        }

        puts "Total sin descuentos: #{ total }"

        if total > 200

            total = total - ( total * descuentoPorcentual / 100 )
            
        end
        
        puts "Total con descuento del #{descuentoPorcentual}%: #{ total }"

        a = 0
        b = 0
        
        coleccionCompras.map { |item|
        
            if item[0].include?( codProdDescuento )

                a += 1

                if a > 1

                    b = a * cantidadDescuentoProd

                end
                
            end

        }

        if b > 0

            total -= b

        end
        
        puts "Total con descuento del prod #{codProdDescuento} = #{ total }"
        
    end

end

factura = Purchase.new( 'Juan', arrayProductos )

factura.add("'001'")


descuentoPorcentual = 10

codProdDescuento = "'003'"

cantidadDescuentoProd = 10


factura.total(descuentoPorcentual, codProdDescuento, cantidadDescuentoProd)