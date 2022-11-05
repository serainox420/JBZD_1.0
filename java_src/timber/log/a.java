package timber.log;

import android.text.TextUtils;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.io.Writer;
import java.util.ArrayList;
import java.util.List;
import org.jetbrains.annotations.NonNls;
/* compiled from: Timber.java */
/* loaded from: classes3.dex */
public final class a {
    private static final AbstractC0606a[] b = new AbstractC0606a[0];
    private static final List<AbstractC0606a> c = new ArrayList();

    /* renamed from: a  reason: collision with root package name */
    static volatile AbstractC0606a[] f6131a = b;
    private static final AbstractC0606a d = new AbstractC0606a() { // from class: timber.log.a.1
        @Override // timber.log.a.AbstractC0606a
        public void a(String str, Object... objArr) {
            for (AbstractC0606a abstractC0606a : a.f6131a) {
                abstractC0606a.a(str, objArr);
            }
        }

        @Override // timber.log.a.AbstractC0606a
        protected void a(int i, String str, String str2, Throwable th) {
            throw new AssertionError("Missing override for log method.");
        }
    };

    public static void a(@NonNls String str, Object... objArr) {
        d.a(str, objArr);
    }

    /* compiled from: Timber.java */
    /* renamed from: timber.log.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static abstract class AbstractC0606a {

        /* renamed from: a  reason: collision with root package name */
        final ThreadLocal<String> f6132a = new ThreadLocal<>();

        protected abstract void a(int i, String str, String str2, Throwable th);

        String a() {
            String str = this.f6132a.get();
            if (str != null) {
                this.f6132a.remove();
            }
            return str;
        }

        public void a(String str, Object... objArr) {
            a(3, (Throwable) null, str, objArr);
        }

        @Deprecated
        protected boolean a(int i) {
            return true;
        }

        protected boolean a(String str, int i) {
            return a(i);
        }

        private void a(int i, Throwable th, String str, Object... objArr) {
            String b;
            String a2 = a();
            if (a(a2, i)) {
                if (TextUtils.isEmpty(str)) {
                    if (th != null) {
                        b = a(th);
                    } else {
                        return;
                    }
                } else {
                    b = objArr.length > 0 ? b(str, objArr) : str;
                    if (th != null) {
                        b = b + "\n" + a(th);
                    }
                }
                a(i, a2, b, th);
            }
        }

        protected String b(String str, Object[] objArr) {
            return String.format(str, objArr);
        }

        private String a(Throwable th) {
            StringWriter stringWriter = new StringWriter(256);
            PrintWriter printWriter = new PrintWriter((Writer) stringWriter, false);
            th.printStackTrace(printWriter);
            printWriter.flush();
            return stringWriter.toString();
        }
    }
}
