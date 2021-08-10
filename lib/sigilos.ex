#Un sigilo es un símbolo que insertamos junto a una expresión para que Elixir la trate
#de forma especial. Normalmente se usan para crear listas de átomos o cadenas de caracteres
#sin escribir tanta comilla o para no tener que escapar las comilas en una string o una charlist,
#pero Elixir permite extender el lenguaje creando sigilos personalizados.
defmodule Typespecs.Sigilos do
    def sigilo do
      nombre = "Alfredo"
      #Sigilo
      ~s(hola mundo "mundo" mi niño '')
      #Sigilo con interpolación
      ~c(hola #{nombre})
      #Lista
      ~W(hola adios saludo si)
      #Lista atomos
      ~W(hola adios saludo si)a
      #Lista charlist
      ~W(hola adios saludo si)c
    end
end
