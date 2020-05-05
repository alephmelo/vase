defmodule Vase.HelloPlug do
  import Vase.Shortcuts

  def init(options), do: options

  def call(conn, _opts) do
    render(conn, "foo.eex", name: "Pessoa")
  end
end
