import Config

config :oapi_generator,
  default: [
    output: [
      base_module: ExAxos,
      location: "lib/",
      operation_subdirectory: "operations/",
      schema_subdirectory: "schemas/"
    ],
    ignore: [
      "/rest/account/v1/form/{accountNumber}/{formCode}",
      "/rest/account/v1/form/{accountNumber}/{formCode}/{actionId}",
      "/rest/aggInvestor/v1/config/{id}"
    ]
  ]
