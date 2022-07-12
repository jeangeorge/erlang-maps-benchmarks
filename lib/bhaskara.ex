# 2x^2  -4x + 4 = 0
a = 1
b = -2
c = -3
:erts_internal.debug_on()
delta = b ** 2 - 4 * a * c
x1 = Decimal.div(Decimal.add(Decimal.new(Decimal.negate(b)), Decimal.sqrt(delta)), Decimal.new(Decimal.mult(Decimal.new(2), Decimal.new(a))))
x2 = Decimal.div(Decimal.sub(Decimal.new(Decimal.negate(b)), Decimal.sqrt(delta)), Decimal.new(Decimal.mult(Decimal.new(2), Decimal.new(a))))
[Decimal.to_string(x1), Decimal.to_string(x2)]
:erts_internal.debug_on()
