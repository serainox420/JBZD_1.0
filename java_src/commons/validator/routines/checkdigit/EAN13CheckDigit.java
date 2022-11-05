package commons.validator.routines.checkdigit;
/* loaded from: classes3.dex */
public final class EAN13CheckDigit extends ModulusCheckDigit {
    public static final a EAN13_CHECK_DIGIT = new EAN13CheckDigit();

    /* renamed from: a  reason: collision with root package name */
    private static final int[] f5635a = {3, 1};

    public EAN13CheckDigit() {
        super(10);
    }

    @Override // commons.validator.routines.checkdigit.ModulusCheckDigit
    protected int a(int i, int i2, int i3) {
        return f5635a[i3 % 2] * i;
    }
}
