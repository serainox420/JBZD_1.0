package commons.validator.routines.checkdigit;
/* loaded from: classes3.dex */
public final class LuhnCheckDigit extends ModulusCheckDigit {
    public static final a LUHN_CHECK_DIGIT = new LuhnCheckDigit();

    /* renamed from: a  reason: collision with root package name */
    private static final int[] f5636a = {2, 1};

    public LuhnCheckDigit() {
        super(10);
    }

    @Override // commons.validator.routines.checkdigit.ModulusCheckDigit
    protected int a(int i, int i2, int i3) {
        int i4 = f5636a[i3 % 2] * i;
        return i4 > 9 ? i4 - 9 : i4;
    }
}
