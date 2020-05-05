defmodule Vase.Shortcuts do
  import Plug.Conn

  @default_template_path "templates"

  def render(conn, template_name, context \\ []) do
    output = EEx.eval_file("#{@default_template_path}/#{template_name}", context)

    conn
    |> send_resp(200, output)
  end

end
