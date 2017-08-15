defmodule ExFormat.State do
  @moduledoc false

  @parenless_calls [
    :use,
    :import,
    :not,
    :alias,
    :try,
    :raise,
    :reraise,
    :defexception,
    :require,
    :defoverridable,
    :assert,
  ]

  defstruct [
    parenless_calls: MapSet.new(@parenless_calls),
    parenless_zero_arity?: false,
    in_spec: nil,
    last_in_tuple?: false,
    in_assignment?: false,
    in_bin_op?: false,
    in_guard?: false,
    multiline_pipeline?: false,
    multiline_bin_op?: false,
    lines: nil,
  ]

  def initialize_state(code_string) do
    %ExFormat.State{lines: initialize_lines_store(code_string)}
  end

  defp initialize_lines_store(code_string) do
    code_string
    |> String.split("\n")
    |> Enum.with_index()
    |> Enum.map(fn {line, i} ->
      {i + 1, String.trim(line)}
    end)
    |> Map.new
  end
end
