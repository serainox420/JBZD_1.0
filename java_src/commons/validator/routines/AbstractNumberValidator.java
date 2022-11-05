package commons.validator.routines;

import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import java.text.Format;
import java.text.NumberFormat;
import java.util.Locale;
/* loaded from: classes.dex */
public abstract class AbstractNumberValidator extends AbstractFormatValidator {
    public static final int CURRENCY_FORMAT = 1;
    public static final int PERCENT_FORMAT = 2;
    public static final int STANDARD_FORMAT = 0;

    /* renamed from: a  reason: collision with root package name */
    private final boolean f5623a;
    private final int b;

    @Override // commons.validator.routines.AbstractFormatValidator
    protected abstract Object b(Object obj, Format format);

    public AbstractNumberValidator(boolean z, int i, boolean z2) {
        super(z);
        this.f5623a = z2;
        this.b = i;
    }

    public boolean isAllowFractions() {
        return this.f5623a;
    }

    public int getFormatType() {
        return this.b;
    }

    @Override // commons.validator.routines.AbstractFormatValidator
    public boolean isValid(String str, String str2, Locale locale) {
        return a(str, str2, locale) != null;
    }

    public boolean isInRange(Number number, Number number2, Number number3) {
        return minValue(number, number2) && maxValue(number, number3);
    }

    public boolean minValue(Number number, Number number2) {
        return isAllowFractions() ? number.doubleValue() >= number2.doubleValue() : number.longValue() >= number2.longValue();
    }

    public boolean maxValue(Number number, Number number2) {
        return isAllowFractions() ? number.doubleValue() <= number2.doubleValue() : number.longValue() <= number2.longValue();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Object a(String str, String str2, Locale locale) {
        String trim = str == null ? null : str.trim();
        if (trim == null || trim.length() == 0) {
            return null;
        }
        return a(trim, a(str2, locale));
    }

    @Override // commons.validator.routines.AbstractFormatValidator
    protected Format a(String str, Locale locale) {
        NumberFormat decimalFormat;
        if (!(str != null && str.length() > 0)) {
            decimalFormat = (NumberFormat) a(locale);
        } else if (locale == null) {
            decimalFormat = new DecimalFormat(str);
        } else {
            decimalFormat = new DecimalFormat(str, new DecimalFormatSymbols(locale));
        }
        if (a(decimalFormat) == 0) {
            decimalFormat.setParseIntegerOnly(true);
        }
        return decimalFormat;
    }

    protected int a(NumberFormat numberFormat) {
        if (!isStrict()) {
            return -1;
        }
        if (!isAllowFractions() || numberFormat.isParseIntegerOnly()) {
            return 0;
        }
        int minimumFractionDigits = numberFormat.getMinimumFractionDigits();
        if (minimumFractionDigits != numberFormat.getMaximumFractionDigits()) {
            return -1;
        }
        if (numberFormat instanceof DecimalFormat) {
            int multiplier = ((DecimalFormat) numberFormat).getMultiplier();
            if (multiplier == 100) {
                return minimumFractionDigits + 2;
            }
            if (multiplier == 1000) {
                return minimumFractionDigits + 3;
            }
            return minimumFractionDigits;
        } else if (this.b == 2) {
            return minimumFractionDigits + 2;
        } else {
            return minimumFractionDigits;
        }
    }

    protected Format a(Locale locale) {
        switch (this.b) {
            case 1:
                if (locale == null) {
                    return NumberFormat.getCurrencyInstance();
                }
                return NumberFormat.getCurrencyInstance(locale);
            case 2:
                if (locale == null) {
                    return NumberFormat.getPercentInstance();
                }
                return NumberFormat.getPercentInstance(locale);
            default:
                if (locale == null) {
                    return NumberFormat.getInstance();
                }
                return NumberFormat.getInstance(locale);
        }
    }
}
