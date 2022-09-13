defmodule MultiStepForm.OrganizationsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `MultiStepForm.Organizations` context.
  """

  @doc """
  Generate a organization.
  """
  def organization_fixture(attrs \\ %{}) do
    {:ok, organization} =
      attrs
      |> Enum.into(%{
        document: "some document",
        name: "some name"
      })
      |> MultiStepForm.Organizations.create_organization()

    organization
  end
end
