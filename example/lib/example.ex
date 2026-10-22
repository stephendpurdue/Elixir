defmodule Example do
  use Application
  alias UUID # imports an external package

  def start(_type, _args) do
    Example.main()
    Supervisor.start_link([], strategy: :one_for_one)
    end

    def main do
      name = "Stephen";
      status = Enum.random([:gold, :silver, :bronze, :"not a member"])

      case status do
      :gold -> IO.puts("Welcome! #{name}.")
      :"not a member" -> IO.puts("You need a membership!")
      _ -> IO.puts("No Entry!")
      end
    end
end
