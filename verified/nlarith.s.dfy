lemma {:axiom} lemma_MulModZero(a:int, b:int)
    requires b > 0
    ensures (a * b) % b == 0
/* FIXME: prove this! */

lemma lemma_DivMulLessThan(a:int, b:int)
    requires b > 0
    ensures (a / b) * b <= a
{}

lemma lemma_DivBounds(a:int, b:int)
    requires a >= 0 && b > 0
    ensures 0 <= (a / b) <= a
{
    if a < b {
        assert a / b == 0;
    } else if a == b {
        assert a / b == 1;
    } else if b == 1 {
        assert a / b == a;
    } else if a > b {
        assert 1 <= a / b < a;
    }
}

lemma lemma_MulSign(a:int, b:int)
    requires a >= 0 && b >= 0
    ensures a * b >= 0
{}
