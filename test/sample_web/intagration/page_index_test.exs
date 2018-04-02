defmodule SampleWeb.PageIndexTest do
  use SampleWeb.ConnCase
  use Hound.Helpers

  hound_session()

  test "home", %{conn: conn} do
    navigate_to(page_path(conn, :index))

    h2 =
      find_element(:tag, "h2")
      |> inner_text()

    assert h2 == "Welcome to Phoenix!"
  end
end
