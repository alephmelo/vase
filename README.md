# Vase

![Elixir CI](https://github.com/alephmelo/vase/workflows/Elixir%20CI/badge.svg) [![codecov](https://codecov.io/gh/alephmelo/vase/branch/master/graph/badge.svg)](https://codecov.io/gh/alephmelo/vase)

**TODO: Add description**

## Installation

The package can be installed by adding `vase` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:vase, "~> 0.1.0"}
  ]
end
```
Docs can be found at [https://hexdocs.pm/vase](https://hexdocs.pm/vase).

## Quick Start
```elixir
defmodule Vase.HelloWorld do
  import Vase.Shortcuts

  use Vase.Router

  get "/" do
    render(conn, "foo.eex", name: "Vase")
  end

  get "/users" do
    users = [
      %{id: 1, name: "João Silverino"},
      %{id: 2, name: "Felipe Esmite"}
    ]

    jsonify(conn, users)
  end
end
```

## Development
```bash
$ git clone git@github.com:alephmelo/vase.git
$ cd vase
```

```bash
$ mix deps.get
```

```bash
$ mix run --no-halt
```
This will run the server with hotreload on and you can access it at [http://localhost:8080](http://localhost:8080).
