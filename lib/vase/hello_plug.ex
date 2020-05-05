defmodule Vase.HelloPlug do
  import Plug.Conn

  def init(options), do: options

  def call(conn, _opts) do
    rendered = File.read!("templates/foo.eex")
    |> EEx.eval_string([name: "Aleph"])

    conn
    |> send_resp(200, rendered)
  end
end
