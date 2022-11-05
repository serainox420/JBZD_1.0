package commons.validator.routines.checkdigit;
/* loaded from: classes3.dex */
public final class ISBN10CheckDigit extends ModulusCheckDigit {
    public static final a ISBN10_CHECK_DIGIT = new ISBN10CheckDigit();

    public ISBN10CheckDigit() {
        super(11);
    }

    @Override // commons.validator.routines.checkdigit.ModulusCheckDigit
    protected int a(int i, int i2, int i3) {
        return i * i3;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // commons.validator.routines.checkdigit.ModulusCheckDigit
    public int a(char c, int i, int i2) throws CheckDigitException {
        if (i2 == 1 && c == 'X') {
            return 10;
        }
        return super.a(c, i, i2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // commons.validator.routines.checkdigit.ModulusCheckDigit
    public String a(int i) throws CheckDigitException {
        return i == 10 ? "X" : super.a(i);
    }
}
