defmodule Placehodor.ImageControllerTest do
  use Placehodor.ConnCase

  test "GET /" do
    conn = get conn(), "/800/600"
    assert_image_response(conn, :jpeg)
  end

  test "given a width and height it generates a url" do
    url = Placehodor.ImageController.generate_cloudinary_url("hodor", 800, 600)
    assert url == "http://res.cloudinary.com/placehodor/image/upload/c_fill,h_600,w_800/hodor.jpg"
  end

  def assert_image_response(conn, filetype) do
    assert response_content_type(conn, filetype) =~ "image/#{filetype}"
    assert is_binary(conn.resp_body)
  end
end
