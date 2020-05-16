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
end
