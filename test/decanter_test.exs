defmodule VaseTest do
  use ExUnit.Case
  doctest Vase

  test "greets the world" do
    assert Vase.hello() == :world
  end
end
