package commons.validator.routines;

import java.text.Format;
import java.util.Locale;
/* loaded from: classes.dex */
public class IntegerValidator extends AbstractNumberValidator {

    /* renamed from: a  reason: collision with root package name */
    private static final IntegerValidator f5632a = new IntegerValidator();

    public static IntegerValidator getInstance() {
        return f5632a;
    }

    public IntegerValidator() {
        this(true, 0);
    }

    public IntegerValidator(boolean z, int i) {
        super(z, i, false);
    }

    public Integer validate(String str) {
        return (Integer) a(str, null, null);
    }

    public Integer validate(String str, String str2) {
        return (Integer) a(str, str2, null);
    }

    public Integer validate(String str, Locale locale) {
        return (Integer) a(str, null, locale);
    }

    public Integer validate(String str, String str2, Locale locale) {
        return (Integer) a(str, str2, locale);
    }

    public boolean isInRange(int i, int i2, int i3) {
        return i >= i2 && i <= i3;
    }

    public boolean isInRange(Integer num, int i, int i2) {
        return isInRange(num.intValue(), i, i2);
    }

    public boolean minValue(int i, int i2) {
        return i >= i2;
    }

    public boolean minValue(Integer num, int i) {
        return minValue(num.intValue(), i);
    }

    public boolean maxValue(int i, int i2) {
        return i <= i2;
    }

    public boolean maxValue(Integer num, int i) {
        return maxValue(num.intValue(), i);
    }

    @Override // commons.validator.routines.AbstractNumberValidator, commons.validator.routines.AbstractFormatValidator
    protected Object b(Object obj, Format format) {
        long longValue = ((Number) obj).longValue();
        if (longValue < -2147483648L || longValue > 2147483647L) {
            return null;
        }
        return new Integer((int) longValue);
    }
}
