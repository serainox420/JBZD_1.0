package commons.validator.routines;

import java.io.Serializable;
import java.text.Format;
import java.text.ParsePosition;
import java.util.Locale;
/* loaded from: classes.dex */
public abstract class AbstractFormatValidator implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f5622a;

    protected abstract Format a(String str, Locale locale);

    protected abstract Object b(Object obj, Format format);

    public abstract boolean isValid(String str, String str2, Locale locale);

    public AbstractFormatValidator(boolean z) {
        this.f5622a = z;
    }

    public boolean isStrict() {
        return this.f5622a;
    }

    public boolean isValid(String str) {
        return isValid(str, null, null);
    }

    public boolean isValid(String str, String str2) {
        return isValid(str, str2, null);
    }

    public boolean isValid(String str, Locale locale) {
        return isValid(str, null, locale);
    }

    public String format(Object obj) {
        return format(obj, null, null);
    }

    public String format(Object obj, String str) {
        return format(obj, str, null);
    }

    public String format(Object obj, Locale locale) {
        return format(obj, null, locale);
    }

    public String format(Object obj, String str, Locale locale) {
        return a(obj, a(str, locale));
    }

    protected String a(Object obj, Format format) {
        return format.format(obj);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Object a(String str, Format format) {
        ParsePosition parsePosition = new ParsePosition(0);
        Object parseObject = format.parseObject(str, parsePosition);
        if (parsePosition.getErrorIndex() > -1) {
            return null;
        }
        if (isStrict() && parsePosition.getIndex() < str.length()) {
            return null;
        }
        if (parseObject != null) {
            return b(parseObject, format);
        }
        return parseObject;
    }
}
