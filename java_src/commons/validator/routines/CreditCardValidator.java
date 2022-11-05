package commons.validator.routines;

import commons.validator.routines.checkdigit.LuhnCheckDigit;
import commons.validator.routines.checkdigit.a;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class CreditCardValidator implements Serializable {
    public static final long AMEX = 1;
    public static final long DINERS = 16;
    public static final long DISCOVER = 8;
    public static final long MASTERCARD = 4;
    public static final long NONE = 0;
    public static final long VISA = 2;

    /* renamed from: a  reason: collision with root package name */
    private final List f5625a;
    private static final a b = LuhnCheckDigit.LUHN_CHECK_DIGIT;
    public static final CodeValidator AMEX_VALIDATOR = new CodeValidator("^(3[47]\\d{13})$", b);
    public static final CodeValidator DINERS_VALIDATOR = new CodeValidator("^(30[0-5]\\d{11}|3095\\d{10}|36\\d{12}|3[8-9]\\d{12})$", b);
    private static final RegexValidator c = new RegexValidator(new String[]{"^(6011\\d{12})$", "^(64[4-9]\\d{13})$", "^(65\\d{14})$"});
    public static final CodeValidator DISCOVER_VALIDATOR = new CodeValidator(c, b);
    public static final CodeValidator MASTERCARD_VALIDATOR = new CodeValidator("^(5[1-5]\\d{14})$", b);
    public static final CodeValidator VISA_VALIDATOR = new CodeValidator("^(4)(\\d{12}|\\d{15})$", b);

    public CreditCardValidator() {
        this(15L);
    }

    public CreditCardValidator(long j) {
        this.f5625a = new ArrayList();
        if (a(j, 2L)) {
            this.f5625a.add(VISA_VALIDATOR);
        }
        if (a(j, 1L)) {
            this.f5625a.add(AMEX_VALIDATOR);
        }
        if (a(j, 4L)) {
            this.f5625a.add(MASTERCARD_VALIDATOR);
        }
        if (a(j, 8L)) {
            this.f5625a.add(DISCOVER_VALIDATOR);
        }
        if (a(j, 16L)) {
            this.f5625a.add(DINERS_VALIDATOR);
        }
    }

    public CreditCardValidator(CodeValidator[] codeValidatorArr) {
        this.f5625a = new ArrayList();
        if (codeValidatorArr == null) {
            throw new IllegalArgumentException("Card validators are missing");
        }
        for (CodeValidator codeValidator : codeValidatorArr) {
            this.f5625a.add(codeValidator);
        }
    }

    public boolean isValid(String str) {
        if (str == null || str.length() == 0) {
            return false;
        }
        for (int i = 0; i < this.f5625a.size(); i++) {
            if (((CodeValidator) this.f5625a.get(i)).isValid(str)) {
                return true;
            }
        }
        return false;
    }

    public Object validate(String str) {
        if (str == null || str.length() == 0) {
            return null;
        }
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= this.f5625a.size()) {
                return null;
            }
            Object validate = ((CodeValidator) this.f5625a.get(i2)).validate(str);
            if (validate == null) {
                i = i2 + 1;
            } else {
                return validate;
            }
        }
    }

    private boolean a(long j, long j2) {
        return (j & j2) > 0;
    }
}
