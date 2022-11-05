package commons.validator.routines.checkdigit;

import java.io.Serializable;
/* loaded from: classes3.dex */
public abstract class ModulusCheckDigit implements a, Serializable {

    /* renamed from: a  reason: collision with root package name */
    private final int f5637a;

    protected abstract int a(int i, int i2, int i3) throws CheckDigitException;

    public ModulusCheckDigit(int i) {
        this.f5637a = i;
    }

    public int getModulus() {
        return this.f5637a;
    }

    @Override // commons.validator.routines.checkdigit.a
    public boolean isValid(String str) {
        boolean z = true;
        if (str == null || str.length() == 0) {
            return false;
        }
        try {
            if (a(str, true) != 0) {
                z = false;
            }
            return z;
        } catch (CheckDigitException e) {
            return false;
        }
    }

    @Override // commons.validator.routines.checkdigit.a
    public String calculate(String str) throws CheckDigitException {
        if (str == null || str.length() == 0) {
            throw new CheckDigitException("Code is missing");
        }
        return a((this.f5637a - a(str, false)) % this.f5637a);
    }

    protected int a(String str, boolean z) throws CheckDigitException {
        int i = 0;
        for (int i2 = 0; i2 < str.length(); i2++) {
            int i3 = i2 + 1;
            int length = ((z ? 0 : 1) + str.length()) - i2;
            i += a(a(str.charAt(i2), i3, length), i3, length);
        }
        if (i == 0) {
            throw new CheckDigitException("Invalid code, sum is zero");
        }
        return i % this.f5637a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int a(char c, int i, int i2) throws CheckDigitException {
        if (Character.isDigit(c)) {
            return Character.getNumericValue(c);
        }
        throw new CheckDigitException("Invalid Character[" + i + "] = '" + c + "'");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String a(int i) throws CheckDigitException {
        if (i >= 0 && i <= 9) {
            return Integer.toString(i);
        }
        throw new CheckDigitException("Invalid Check Digit Value =" + i);
    }

    public static int sumDigits(int i) {
        int i2 = 0;
        while (i > 0) {
            i2 += i % 10;
            i /= 10;
        }
        return i2;
    }
}
