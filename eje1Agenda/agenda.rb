require 'csv'

puts "\n****** Tu Agenda ******\n\n"

puts "OPCIONES:\n\nAgregar Contacto = 1\nVer Contactos = 2\nBuscar un contacto = 3\nEditar un contacto = 4" 

menu = gets.chomp

puts "\n"

case menu

when '1'

    puts 'Ingresa el Nombre de tu nuevo contacto'
    name = gets.chomp
    puts 'Ingresa la fecha de nacimiento de tu nuevo contacto'
    birthDate = gets.chomp
    puts 'Ingresa el Email de tu nuevo contacto'
    email = gets.chomp
    puts 'Ingresa el Numero Telefónico de tu nuevo contacto'
    phoneNumber = gets.chomp
    puts 'Ingresa la direccion de tu nuevo contacto'
    address = gets.chomp

    contactoNew = name,birthDate,email,phoneNumber,address

    File.open( 'contactos.csv', 'a' ) { |file| file.write "\n" }
    File.open( 'contactos.csv', 'a' ) { |file| file.write contactoNew }
    File.open( 'contactos.csv', 'a' ) { |file| file.write "\n" }

when '2'

    puts 'Tus contactos:'"\n"'"Name","Birthdate","Email","Phonenumber","Address"'

    File.open( 'contactos.csv' ) { |file| puts file.read }

when '3'

    puts 'Ingresa un nombre o inicial para buscar'

    coincidencia = gets.chomp

    file = File.open('contactos.csv')

    file.readlines.each { |row|

        if row.include? coincidencia

            puts row

        end

    }

when '4'

    puts 'Ingresa el nombre exacto del contacto que quieres editar'

    coincidencia = gets.chomp

    file = File.open( 'contactos.csv' )

    file.readlines.each { |row|

        unless row.include? coincidencia

            File.open( 'contactosNew.csv', 'a' ) { |line| line.write row }

        end
    }

    File.open( 'contactos.csv', 'w' ) { |row| row.write '' }

    file2 = File.open( 'contactosNew.csv' )

    file2.readlines.each { |row|

        File.open( 'contactos.csv', 'a' ) { |line| line.write row }

    }

    File.open( 'contactosNew.csv', 'w' ) { |row| row.write '' }

    puts 'Reingresa el Nombre de tu contacto'
    name = gets.chomp
    puts 'Reingresa la fecha de nacimiento de tu contacto'
    birthDate = gets.chomp
    puts 'Reingresa el Email de tu contacto'
    email = gets.chomp
    puts 'Reingresa el Numero Telefónico de tu contacto'
    phoneNumber = gets.chomp
    puts 'Reingresa la direccion de tu contacto'
    address = gets.chomp

    contactoNew = name,birthDate,email,phoneNumber,address

    File.open( 'contactos.csv', 'a' ) { |file| file.write "\n" }
    File.open( 'contactos.csv', 'a' ) { |file| file.write contactoNew }
    File.open( 'contactos.csv', 'a' ) { |file| file.write "\n" }

else

    puts 'opcion no valida, solo se admite 1,2,3'
    
end