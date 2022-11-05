package commons.validator.routines;

import java.io.Serializable;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes.dex */
public class EmailValidator implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    private static final Pattern f5629a = Pattern.compile("^\\s*?(.+)@(.+?)\\s*$");
    private static final Pattern b = Pattern.compile("^\\[(.*)\\]$");
    private static final Pattern c = Pattern.compile("^\\s*(([^\\s\\p{Cntrl}\\(\\)<>@,;:'\\\\\\\"\\.\\[\\]]|')+|(\"[^\"]*\"))(\\.(([^\\s\\p{Cntrl}\\(\\)<>@,;:'\\\\\\\"\\.\\[\\]]|')+|(\"[^\"]*\")))*$");
    private static final EmailValidator e = new EmailValidator(false);
    private static final EmailValidator f = new EmailValidator(true);
    private final boolean d;

    public static EmailValidator getInstance() {
        return e;
    }

    public static EmailValidator getInstance(boolean z) {
        return z ? f : e;
    }

    protected EmailValidator(boolean z) {
        this.d = z;
    }

    public boolean isValid(String str) {
        if (str != null && !str.endsWith(".")) {
            Matcher matcher = f5629a.matcher(str);
            return matcher.matches() && b(matcher.group(1)) && a(matcher.group(2));
        }
        return false;
    }

    protected boolean a(String str) {
        Matcher matcher = b.matcher(str);
        if (matcher.matches()) {
            return InetAddressValidator.getInstance().isValid(matcher.group(1));
        }
        DomainValidator domainValidator = DomainValidator.getInstance(this.d);
        return domainValidator.isValid(str) || domainValidator.isValidTld(str);
    }

    protected boolean b(String str) {
        return c.matcher(str).matches();
    }
}
