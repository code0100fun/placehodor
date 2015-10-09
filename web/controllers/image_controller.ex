defmodule Placehodor.ImageController do
  use Placehodor.Web, :controller

  def index(conn, _params) do
    %HTTPoison.Response{ body: image_bits } = HTTPoison.get!("http://i.lv3.hbo.com/assets/images/series/game-of-thrones/character/s5/hodor-1920.jpg")
    conn
      |> put_resp_content_type("image/jpeg")
      |> send_resp 200, image_bits
  end

  def generate_cloudinary_url(name, width, height) do
    "http://res.cloudinary.com/placehodor/image/upload/c_fill,h_#{height},w_#{width}/#{name}.jpg"
  end
end
