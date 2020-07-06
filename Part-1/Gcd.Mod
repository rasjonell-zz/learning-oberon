MODULE Gcd;
IMPORT Texts, Oberon;
    VAR W: Texts.Writer;

    PROCEDURE Calculate*;
        VAR S: Texts.Scanner;
            x, y: LONGINT;
    BEGIN
        Texts.OpenScanner(S, Oberon.Par.text, Oberon.Par.pos);

        Texts.Scan(S); x := S.i;
        Texts.WriteString(W, "x = ");
        Texts.WriteInt(W, x, 1);
        Texts.WriteLn(W);

        Texts.Scan(S); y := S.i;
        Texts.WriteString(W, "y = ");
        Texts.WriteInt(W, y, 1);
        Texts.WriteLn(W);

        (* Evaluates until `x` is equal to `y` *)
        WHILE x > y DO
            x := x - y
        ELSIF x < y DO
            y := y - x
        END;

        Texts.WriteString(W, "gcd = ");
        Texts.WriteInt(W, x, 1);
        Texts.WriteLn(W);
        Texts.Append(Oberon.Log, W.buf);
    END Calculate;

BEGIN
    Texts.OpenWriter(W);
    Calculate()
END Gcd.
