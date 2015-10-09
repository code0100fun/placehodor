defmodule Placehodor.ImageController do

  def generate_cloudinary_url(name, width, height) do
    "http://res.cloudinary.com/placehodor/image/upload/c_fill,h_#{height},w_#{width}/#{name}.jpg"
  end
end
