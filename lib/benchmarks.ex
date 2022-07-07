defmodule Benchmarks do
  defp add do
    Decimal.add(123, 456)
  end

  defp div do
    Decimal.div(876,2)
  end

  defp new do
    Decimal.new("0.9231")
  end

  # ax^2  + bx + c = 0
  defp bhaskara(a, b, c) do
    delta = b ** 2 - 4 * a * c
    x1 = Decimal.div(Decimal.add(Decimal.new(Decimal.negate(b)), Decimal.sqrt(delta)), Decimal.new(Decimal.mult(Decimal.new(2), Decimal.new(a))))
    x2 = Decimal.div(Decimal.sub(Decimal.new(Decimal.negate(b)), Decimal.sqrt(delta)), Decimal.new(Decimal.mult(Decimal.new(2), Decimal.new(a))))
    [Decimal.to_string(x1), Decimal.to_string(x2)]
  end

  def main(args) do
    if length(args) > 0 do
      [method | [debug_active]] = args

      if (debug_active == "1") do
        :erts_internal.debug_on()
      end

      result = case method do
        "add" -> add()
        "div" -> div()
        "new" -> new()
        "bhaskara" -> bhaskara(1, -12, -640)
      end

      if (debug_active == "1") do
        :erts_internal.debug_off()
      end

      IO.inspect(result)
    end
  end
end
