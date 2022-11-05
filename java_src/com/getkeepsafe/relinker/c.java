package com.getkeepsafe.relinker;

import android.content.Context;
import android.util.Log;
import com.getkeepsafe.relinker.a.f;
import com.getkeepsafe.relinker.b;
import java.io.File;
import java.io.FilenameFilter;
import java.io.IOException;
import java.util.HashSet;
import java.util.Locale;
import java.util.Set;
/* compiled from: ReLinkerInstance.java */
/* loaded from: classes2.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    protected final Set<String> f3116a;
    protected final b.InterfaceC0129b b;
    protected final b.a c;
    protected boolean d;
    protected boolean e;
    protected b.d f;

    /* JADX INFO: Access modifiers changed from: protected */
    public c() {
        this(new d(), new a());
    }

    protected c(b.InterfaceC0129b interfaceC0129b, b.a aVar) {
        this.f3116a = new HashSet();
        if (interfaceC0129b == null) {
            throw new IllegalArgumentException("Cannot pass null library loader");
        }
        if (aVar == null) {
            throw new IllegalArgumentException("Cannot pass null library installer");
        }
        this.b = interfaceC0129b;
        this.c = aVar;
    }

    public void a(Context context, String str) {
        a(context, str, (String) null, (b.c) null);
    }

    public void a(final Context context, final String str, final String str2, final b.c cVar) {
        if (context == null) {
            throw new IllegalArgumentException("Given context is null");
        }
        if (e.a(str)) {
            throw new IllegalArgumentException("Given library is either null or empty");
        }
        a("Beginning load of %s...", str);
        if (cVar == null) {
            c(context, str, str2);
        } else {
            new Thread(new Runnable() { // from class: com.getkeepsafe.relinker.c.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        c.this.c(context, str, str2);
                        cVar.a();
                    } catch (MissingLibraryException e) {
                        cVar.a(e);
                    } catch (UnsatisfiedLinkError e2) {
                        cVar.a(e2);
                    }
                }
            }).start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(Context context, String str, String str2) {
        if (this.f3116a.contains(str) && !this.d) {
            a("%s already loaded previously!", str);
            return;
        }
        try {
            this.b.a(str);
            this.f3116a.add(str);
            a("%s (%s) was loaded normally!", str, str2);
        } catch (UnsatisfiedLinkError e) {
            a("Loading the library normally failed: %s", Log.getStackTraceString(e));
            a("%s (%s) was not loaded normally, re-linking...", str, str2);
            File a2 = a(context, str, str2);
            if (!a2.exists() || this.d) {
                if (this.d) {
                    a("Forcing a re-link of %s (%s)...", str, str2);
                }
                b(context, str, str2);
                this.c.a(context, this.b.a(), this.b.c(str), a2, this);
            }
            try {
                if (this.e) {
                    for (String str3 : new f(a2).b()) {
                        a(context, this.b.d(str3));
                    }
                }
            } catch (IOException e2) {
            }
            this.b.b(a2.getAbsolutePath());
            this.f3116a.add(str);
            a("%s (%s) was re-linked!", str, str2);
        }
    }

    protected File a(Context context) {
        return context.getDir("lib", 0);
    }

    protected File a(Context context, String str, String str2) {
        String c = this.b.c(str);
        return e.a(str2) ? new File(a(context), c) : new File(a(context), c + "." + str2);
    }

    protected void b(Context context, String str, String str2) {
        File a2 = a(context);
        File a3 = a(context, str, str2);
        final String c = this.b.c(str);
        File[] listFiles = a2.listFiles(new FilenameFilter() { // from class: com.getkeepsafe.relinker.c.2
            @Override // java.io.FilenameFilter
            public boolean accept(File file, String str3) {
                return str3.startsWith(c);
            }
        });
        if (listFiles != null) {
            for (File file : listFiles) {
                if (this.d || !file.getAbsolutePath().equals(a3.getAbsolutePath())) {
                    file.delete();
                }
            }
        }
    }

    public void a(String str, Object... objArr) {
        a(String.format(Locale.US, str, objArr));
    }

    public void a(String str) {
        if (this.f != null) {
            this.f.a(str);
        }
    }
}
