defmodule Vase.Router do
  defmacro __using__(_opts) do
    quote location: :keep do
      use Plug.Router
      use Vase.Decorators

      @decorate_all catch_request()

      plug(:match)
      plug(:dispatch)
    end
  end
end

defmodule Vase.Decorators do
  use Decorator.Define, catch_request: 0

  def catch_request(body, context) do
    quote do
      IO.puts("Function called: " <> Atom.to_string(unquote(context.name)))
      unquote(body)
    end
  end
end
