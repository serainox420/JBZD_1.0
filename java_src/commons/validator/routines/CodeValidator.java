package commons.validator.routines;

import commons.validator.routines.checkdigit.a;
import java.io.Serializable;
/* loaded from: classes3.dex */
public final class CodeValidator implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    private final RegexValidator f5624a;
    private final int b;
    private final int c;
    private final a d;

    public CodeValidator(String str, a aVar) {
        this(str, -1, -1, aVar);
    }

    public CodeValidator(String str, int i, a aVar) {
        this(str, i, i, aVar);
    }

    public CodeValidator(String str, int i, int i2, a aVar) {
        if (str != null && str.length() > 0) {
            this.f5624a = new RegexValidator(str);
        } else {
            this.f5624a = null;
        }
        this.b = i;
        this.c = i2;
        this.d = aVar;
    }

    public CodeValidator(RegexValidator regexValidator, a aVar) {
        this(regexValidator, -1, -1, aVar);
    }

    public CodeValidator(RegexValidator regexValidator, int i, a aVar) {
        this(regexValidator, i, i, aVar);
    }

    public CodeValidator(RegexValidator regexValidator, int i, int i2, a aVar) {
        this.f5624a = regexValidator;
        this.b = i;
        this.c = i2;
        this.d = aVar;
    }

    public a getCheckDigit() {
        return this.d;
    }

    public int getMinLength() {
        return this.b;
    }

    public int getMaxLength() {
        return this.c;
    }

    public RegexValidator getRegexValidator() {
        return this.f5624a;
    }

    public boolean isValid(String str) {
        return validate(str) != null;
    }

    public Object validate(String str) {
        if (str == null) {
            return null;
        }
        String trim = str.trim();
        if (trim.length() == 0) {
            return null;
        }
        if (this.f5624a != null && (trim = this.f5624a.validate(trim)) == null) {
            return null;
        }
        if ((this.b >= 0 && trim.length() < this.b) || (this.c >= 0 && trim.length() > this.c)) {
            return null;
        }
        if (this.d != null && !this.d.isValid(trim)) {
            return null;
        }
        return trim;
    }
}
