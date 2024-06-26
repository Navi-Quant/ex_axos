import Config

config :oapi_generator,
  default: [
    output: [
      base_module: ExAxos,
      location: "lib/",
      operation_subdirectory: "operations/",
      schema_subdirectory: "/"
    ],
    ignore: [
      "/rest/account/v1/form/{accountNumber}/{formCode}",
      "/rest/account/v1/form/{accountNumber}/{formCode}/{actionId}",
      "/rest/aggInvestor/v1/config/{id}"
    ],
    processor: ExAxos.Processor
  ]

config :hammer,
  backend: {Hammer.Backend.ETS, [expiry_ms: 60_000 * 60 * 4, cleanup_interval_ms: 60_000 * 10]}
