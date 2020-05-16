defmodule Vase.Shortcuts do
  import Plug.Conn

  @default_template_path "templates"

  def render(conn, template_name, context \\ []) do
    output = render_template(template_name, context)

    conn
    |> send_resp(200, output)
  end

  def jsonify(conn, data) do
    {:ok, data} = Poison.encode(data)

    conn
    |> put_resp_content_type("application/json")
    |> send_resp(200, data)
  end

  defp render_template(template_name, context) do
    EEx.eval_file("#{@default_template_path}/#{template_name}", context)
  end
end
