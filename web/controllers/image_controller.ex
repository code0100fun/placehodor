defmodule Placehodor.ImageController do
  use Placehodor.Web, :controller

  def index(conn, %{"height" => height, "width" => width}) do
    %HTTPoison.Response{ body: image_bits } = HTTPoison.get!(generate_cloudinary_url("hodor", width, height))
    conn
      |> put_resp_content_type("image/jpeg")
      |> send_resp 200, image_bits
  end

  def generate_cloudinary_url(name, width, height) do
    "http://res.cloudinary.com/placehodor/image/upload/c_fill,h_#{height},w_#{width}/#{name}.jpg"
  end
end
