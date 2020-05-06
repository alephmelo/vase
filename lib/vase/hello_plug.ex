defmodule Vase.HelloPlug do
  import Vase.Shortcuts

  use Vase.Router

  get "/" do
    render(conn, "foo.eex", name: "Pessoa")
  end
end
