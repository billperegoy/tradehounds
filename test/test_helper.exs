Bureaucrat.start(
  writer: Bureaucrat.MarkdownWriter,
  default_path: "doc/api_docs.md",
  paths: [],
  env_var: "DOC"
)

ExUnit.start(formatters: [ExUnit.CLIFormatter, Bureaucrat.Formatter])

Ecto.Adapters.SQL.Sandbox.mode(TradehoundsApi.Repo, :manual)
