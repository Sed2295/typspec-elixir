#with permite agrupar múltiples expresiones de tipo pattern matching en un único bloque do-end, de tal manera
#que la única forma de evaluar su interior es que todos los matches sean válidos a la vez.
#Con esto podemos desplegar cómodamente expresiones envueltas en tuplas sin crear un excesivo número de cases.
#Se muestra el uso de with cuando hagamos uso del pattern matching y necesitemos ir paasando el valor
defmodule Typespecs.Jason do
  def total_sueldos do
    with {:ok, file} <- File.read("./assets/empleados.json"),
      {:ok, json} <- Jason.decode(file),
      {:ok, empleados} <- Map.fetch(json, "empleados") do
        empleados |> Enum.map(fn k -> k["sueldo"] end) |> Enum.sum
      end
  end
end
