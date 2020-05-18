defmodule Vase.ShortcutsTest do
  use ExUnit.Case
  use Plug.Test

  doctest Vase.Shortcuts

  test "render template file" do
    conn =
      :get
      |> conn("/", "")

    assert Vase.Shortcuts.render(conn, "foo.eex", name: "Pessoa").resp_body ==
             "<h1>Hi, Pessoa</h1>\n"
  end

  test "json output" do
    conn =
      :get
      |> conn("/jsonify", "")

    data = %{name: "João Silverino", id: 1}
    assert Vase.Shortcuts.jsonify(conn, data).resp_body == "{\"name\":\"João Silverino\",\"id\":1}"
  end
end
