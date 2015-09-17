defmodule SapporoBeamPhoenixTraining.HelloController do
  use SapporoBeamPhoenixTraining.Web, :controller

  plug :action

  def index(conn, _params) do
    render conn, "index.html"
  end
end
