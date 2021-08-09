defmodule Typespecs.Prueba2 do
  #alias  Typespecs.Prueba2
  defstruct [:nombre, :apellidos, :edad, :comida]
  #Nota recordemos que __MODULE__ es igual a escribir el nombre del modulo como Prueba2
  @type mapa() :: %__MODULE__{nombre: String.t(), apellidos: String.t(), edad: number(), comida: String.t() | nil}

  @spec personificar(String.t(), number(), String.t()) :: __MODULE__.mapa()
  def personificar(nombre,edad,comida) do
    [n | alist] = String.split(nombre, " ")
    a = Enum.join(alist)
    %__MODULE__{nombre: n, apellidos: a, edad: edad, comida: comida}
  end

  def prueba() do
    personificar("Alfredo Cabrera",25,"Enchiladas verder")
  end

end
