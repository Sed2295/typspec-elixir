#Con los type specs se pueden especificar los tipos de los parametros y retornos de las funciones
#para que herrramientas como Dialyzer puedan analizar de forma estática el código a fin de comprobar
#que se pasen los parámetros de forma correcta en el código.
defmodule Typespecs.Prueba do
  @spec suma(number(), number()) :: number()
  def suma(a,b) do
    a + b
  end
  def prueba() do
    #suma(3,3)
    anunciar_edad('Alfredo',{22,11,1995})
  end
  @type dia :: number()
  @type mes :: number()
  @type anio :: number()
  @type fechanac :: {dia(),mes(),anio()}
  # Forma 1
  #@spec anunciar_edad(charlist(), { number(), number(), number() }) :: :ok
  # Forma 2
  @spec anunciar_edad(charlist(), fechanac()) :: :ok
  def anunciar_edad(nombre, {dia,mes,anio}) do
    IO.puts "#{nombre} nacio el #{dia}/#{mes}/#{anio}"
  end
end
