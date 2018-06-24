defmodule FlattenBreadthFirst do
  @moduledoc """
  Documentation for FlattenBreadthFirst.
  """

  @doc """
  Flatten a list breadth first.

  ## Examples

      iex> FlattenBreadthFirst.flatten_breadth_first([1, [2], [[3]], [4], [[5]], 6])
      [1, 6, 2, 4, 3, 5]

  """
  def flatten_breadth_first(l), do: flatten_breadth_first_internal(l, :queue.new())

  defp flatten_breadth_first_internal([], q) do
    case :queue.out(q) do
      {:empty, _} -> []
      {{:value, v}, q2} ->
        flatten_breadth_first_internal(v, q2)
    end
  end
  defp flatten_breadth_first_internal([h | r], q) do
    if is_list(h) do
      flatten_breadth_first_internal(r, :queue.in(h, q))
    else
      [h | flatten_breadth_first_internal(r, q)]
    end
  end
end
