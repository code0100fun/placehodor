defmodule Placehodor.ImageControllerTest do
  use ExUnit.Case

  test "given a width and height it generates a url" do
    url = Placehodor.ImageController.generate_cloudinary_url("hodor", 800, 600)
    assert url == "http://res.cloudinary.com/placehodor/image/upload/c_fill,h_600,w_800/hodor.jpg"
  end
end
