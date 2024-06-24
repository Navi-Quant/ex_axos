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

    def operation_function_name(state, operation_spec) do
      IO.inspect({operation_spec.summary, summary_to_operation_name(operation_spec.summary)})

      OpenAPI.Processor.Naming.operation_function(state, operation_spec)
    end

    defp summary_to_operation_name(summary) do
      # summary
      # |> String.downcase()
      # |> String.split(" ")
      # |> Enum.join("_")
      summary
      |> String.split(" ")
    end
  end
end
