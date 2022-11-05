package commons.validator.routines;

import commons.validator.routines.checkdigit.CheckDigitException;
import commons.validator.routines.checkdigit.EAN13CheckDigit;
import commons.validator.routines.checkdigit.ISBN10CheckDigit;
import java.io.Serializable;
/* loaded from: classes.dex */
public class ISBNValidator implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    private static final ISBNValidator f5630a = new ISBNValidator();
    private static final ISBNValidator b = new ISBNValidator(false);
    private final CodeValidator c;
    private final CodeValidator d;
    private final boolean e;

    public static ISBNValidator getInstance() {
        return f5630a;
    }

    public static ISBNValidator getInstance(boolean z) {
        return z ? f5630a : b;
    }

    public ISBNValidator() {
        this(true);
    }

    public ISBNValidator(boolean z) {
        this.c = new CodeValidator("^(?:(\\d{9}[0-9X])|(?:(\\d{1,5})(?:\\-|\\s)(\\d{1,7})(?:\\-|\\s)(\\d{1,6})(?:\\-|\\s)([0-9X])))$", 10, ISBN10CheckDigit.ISBN10_CHECK_DIGIT);
        this.d = new CodeValidator("^(978|979)(?:(\\d{10})|(?:(?:\\-|\\s)(\\d{1,5})(?:\\-|\\s)(\\d{1,7})(?:\\-|\\s)(\\d{1,6})(?:\\-|\\s)([0-9])))$", 13, EAN13CheckDigit.EAN13_CHECK_DIGIT);
        this.e = z;
    }

    public boolean isValid(String str) {
        return isValidISBN13(str) || isValidISBN10(str);
    }

    public boolean isValidISBN10(String str) {
        return this.c.isValid(str);
    }

    public boolean isValidISBN13(String str) {
        return this.d.isValid(str);
    }

    public String validate(String str) {
        String validateISBN13 = validateISBN13(str);
        if (validateISBN13 == null) {
            String validateISBN10 = validateISBN10(str);
            if (validateISBN10 != null && this.e) {
                return convertToISBN13(validateISBN10);
            }
            return validateISBN10;
        }
        return validateISBN13;
    }

    public String validateISBN10(String str) {
        Object validate = this.c.validate(str);
        if (validate == null) {
            return null;
        }
        return validate.toString();
    }

    public String validateISBN13(String str) {
        Object validate = this.d.validate(str);
        if (validate == null) {
            return null;
        }
        return validate.toString();
    }

    public String convertToISBN13(String str) {
        String str2;
        if (str == null) {
            return null;
        }
        String trim = str.trim();
        if (trim.length() != 10) {
            throw new IllegalArgumentException("Invalid length " + trim.length() + " for '" + trim + "'");
        }
        try {
            return ("978" + trim.substring(0, 9)) + this.d.getCheckDigit().calculate(str2);
        } catch (CheckDigitException e) {
            throw new IllegalArgumentException("Check digit error for '" + trim + "' - " + e.getMessage());
        }
    }
}
