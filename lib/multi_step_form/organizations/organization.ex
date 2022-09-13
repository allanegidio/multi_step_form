defmodule MultiStepForm.Organizations.Organization do
  use Ecto.Schema

  import Ecto.Changeset

  alias MultiStepForm.Organizations.Address
  alias MultiStepForm.Organizations.Contact

  schema "organizations" do
    field :document, :string
    field :name, :string

    embeds_one :address, Address
    embeds_one :contact, Contact

    timestamps()
  end

  @doc false
  def changeset(organization, attrs) do
    organization
    |> cast(attrs, [:name, :document])
    |> validate_required([:name, :document])
    |> cast_embed(:address, required: true)
    |> cast_embed(:contact, required: true)
  end
end
