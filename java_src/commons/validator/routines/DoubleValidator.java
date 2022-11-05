package commons.validator.routines;

import java.text.Format;
import java.util.Locale;
/* loaded from: classes.dex */
public class DoubleValidator extends AbstractNumberValidator {

    /* renamed from: a  reason: collision with root package name */
    private static final DoubleValidator f5628a = new DoubleValidator();

    public static DoubleValidator getInstance() {
        return f5628a;
    }

    public DoubleValidator() {
        this(true, 0);
    }

    public DoubleValidator(boolean z, int i) {
        super(z, i, true);
    }

    public Double validate(String str) {
        return (Double) a(str, null, null);
    }

    public Double validate(String str, String str2) {
        return (Double) a(str, str2, null);
    }

    public Double validate(String str, Locale locale) {
        return (Double) a(str, null, locale);
    }

    public Double validate(String str, String str2, Locale locale) {
        return (Double) a(str, str2, locale);
    }

    public boolean isInRange(double d, double d2, double d3) {
        return d >= d2 && d <= d3;
    }

    public boolean isInRange(Double d, double d2, double d3) {
        return isInRange(d.doubleValue(), d2, d3);
    }

    public boolean minValue(double d, double d2) {
        return d >= d2;
    }

    public boolean minValue(Double d, double d2) {
        return minValue(d.doubleValue(), d2);
    }

    public boolean maxValue(double d, double d2) {
        return d <= d2;
    }

    public boolean maxValue(Double d, double d2) {
        return maxValue(d.doubleValue(), d2);
    }

    @Override // commons.validator.routines.AbstractNumberValidator, commons.validator.routines.AbstractFormatValidator
    protected Object b(Object obj, Format format) {
        return obj instanceof Double ? obj : new Double(((Number) obj).doubleValue());
    }
}
