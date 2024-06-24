if Mix.env() == :dev do
  defmodule ExAxos.Processor do
    @moduledoc false
    use OpenAPI.Processor

    def schema_module_and_type(state, schema) do
      {module, type} = OpenAPI.Processor.Naming.schema_module_and_type(state, schema)
      module = Module.concat(Schema, module)
      {module, type}
    end

    def operation_module_names(state, operation_spec) do
      [module] = OpenAPI.Processor.Naming.operation_modules(state, operation_spec)

      [strip_api_suffix(module)]
    end

    defp strip_api_suffix(module) do
      module
      |> Atom.to_string()
      |> String.replace(~r/API$/, "")
      |> String.to_atom()
    end

    def operation_function_name(_state, operation_spec) do
      operation_spec
      |> summary_to_operation_name()
      |> String.to_atom()
    end

    defp summary_to_operation_name(%{operation_id: "viewPositionsByStatementFamilyId_v1UsingGET"}) do
      "view_positions_by_statement_family_id"
    end

    defp summary_to_operation_name(%{operation_id: "retrieveStatementFamilyPositions_v1UsingGET"}) do
      "retrieve_statement_family_positions"
    end

    defp summary_to_operation_name(%{summary: summary}) do
      if String.contains?(summary, " ") do
        summary
        |> String.split([" ", "-"])
        |> Enum.reject(&(&1 in ["a", "an", "the"]))
        |> Enum.map_join("", &String.capitalize/1)
        |> Macro.underscore()
      else
        Macro.underscore(summary)
      end
    end
  end
end
