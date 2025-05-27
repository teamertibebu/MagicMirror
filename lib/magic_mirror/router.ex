defmodule MagicMirror.Router do
  use Plug.Router
  plug(CORSPlug)
  plug(:match)
  plug(:dispatch)

  get "/api/greeting" do
    send_resp(conn, 200, Jason.encode!(%{message: "Hello from Elixir!"}))
  end

  match _ do
    send_resp(conn, 404, "Oops, not found!")
  end
end
