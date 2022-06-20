defmodule Banchan.Offerings.GalleryImage do
  @moduledoc """
  Schema for gallery images associated with offerings.
  """
  use Ecto.Schema

  alias Banchan.Offerings.Offering
  alias Banchan.Uploads.Upload

  schema "offering_gallery_images" do
    field :index, :integer

    belongs_to :offering, Offering
    belongs_to :upload, Upload, on_replace: :nilify, type: :binary_id

    timestamps()
  end
end
