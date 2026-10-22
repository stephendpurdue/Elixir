
Compared to the first run, adding this code snippet allowed the output to show up each time the file is run and/or compiled.

``` defmodule Example do
  use Application

  def start(_type, _args) do
    IO.puts(Example.hello())
    Supervisor.start_link([], strategy: :one_for_one)
    end

    def hello do
      :world
    end
  end

```
