#* La clase Jugador debe entender el mensaje "#jugada(nro_turno)" (donde nro_turno es un entero entre 1 y 10) que retorna la jugada para ese turno.

#* La clase Jugador debe entender el mensaje "#nombre" que retorna el nombre del mismo.

#* La clase Juego debe implementar el mensaje: "#determinar_ganador(jugador_a, jugador_b)"

require 'csv'

class Jugador

    def initialize(jugador)

        @jugador = jugador

    end

    def calEnergia(turno)

        path = 'jugadas.csv'
        jugadas = CSV.read(path)
        coleccionJugadas = jugadas.to_a

        jugA = coleccionJugadas[-1][1]
        jugB = coleccionJugadas[-2][1]

       case turno

        when 0

            p = 100

        when 
            
        else
           
       end

      if turno == 0

        p 100

      elsif turno > 0


          
      end
        
    end
    

    def jugada(nro_turno)

        if nro_turno == 0

            energia = 100
    
        else

            p

        end


        redaccion = "#{nro_turno}, #{movJug}, #{energia}\n"

        File.open( 'jugadas.csv', 'a' ) { |file| file.write redaccion }

    end

    def nombre

        p @jugador
        
    end
    
end

player1 = Jugador.new('karina')
player2 = Jugador.new('pamela')

turno = (0..10).to_a
movJug = ['bloqueo', 'golpe']

turno.map { |turno|

    energiaA = player1.calEnergia(turno)
    player1.jugada(turno, movJug.sample, energiaA)

    energiaB = player2.calEnergia(turno)
    player2.jugada(turno, movJug.sample, energiaB)

}


# class Juego

#     def initialize(jugador_a, jugador_b)

#         @jugador_a = jugador_a
#         @jugador_b = jugador_b

#     end
    
# end

# newGame = Juego.new(jugador_a, jugador_b)


# algo = [["a", "b", "c", "d"], ["1", "2", "3", "4"], ["a1", "b2", "c3", "d4"], ["1a", "2b", "3c", "4d"]]

# puts "#{algo[-2][2]}"