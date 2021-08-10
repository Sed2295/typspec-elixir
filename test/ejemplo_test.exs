defmodule TypespecsTest.Ejemplo do
  use ExUnit.Case
  describe "la calculadora" do
    test "suma de dos numeros" do
      assert Typespecs.suma(2,2) == 4
    end
    test "resta de dos numeros con error" do
      assert Typespecs.resta(2,2) == 20
      #refute sirve para negar cosas
      refute false
    end
  end
end
