if Mix.env() == :dev  do
  defmodule ExAxos.Processor do
    use OpenAPI.Processor

    def schema_module_and_type(state, schema) do
      {module, type} = OpenAPI.Processor.Naming.schema_module_and_type(state, schema)
      module = Module.concat(Schema, module)
      {module, type}
    end
  end
end
