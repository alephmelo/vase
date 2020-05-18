defmodule Vase.HelloPlug do
  import Vase.Shortcuts

  use Vase.Router

  get "/" do
    render(conn, "foo.eex", name: "Pessoa")
  end

  get "/users" do
    users = [
      %{id: 1, name: "João Silverino"},
      %{id: 2, name: "Felipe Esmite"}
    ]

    jsonify(conn, users)
  end
end
