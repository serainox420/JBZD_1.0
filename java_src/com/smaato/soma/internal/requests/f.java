package com.smaato.soma.internal.requests;

import android.content.Context;
import com.smaato.soma.debug.DebugCategory;
import com.smaato.soma.exception.AdRequestConstructionFailed;
import com.smaato.soma.exception.RequestBuilderInitialisationFailed;
import com.smaato.soma.internal.c.k;
import com.smaato.soma.internal.requests.settings.UserSettings;
import com.smaato.soma.l;
import java.net.Proxy;
import java.net.URL;
/* compiled from: RequestsBuilder.java */
/* loaded from: classes3.dex */
public class f {

    /* renamed from: a  reason: collision with root package name */
    private static f f5056a = null;
    private String c;
    private Proxy g;
    private final String b = "HTTP_Connector";
    private boolean d = true;
    private boolean e = false;
    private int f = 0;
    private String h = "http://soma.smaato.net/oapi/reqAd.jsp?";

    public String a() {
        return this.h;
    }

    public void a(String str) {
        this.h = str;
    }

    protected f() {
    }

    public static f b() {
        if (f5056a == null) {
            f5056a = new f();
        }
        return f5056a;
    }

    public final void a(Context context) throws RequestBuilderInitialisationFailed {
        if (context != null) {
            try {
                com.smaato.soma.internal.requests.settings.a.a().a(context.getApplicationContext());
            } catch (RuntimeException e) {
                throw e;
            } catch (Exception e2) {
                throw new RequestBuilderInitialisationFailed(e2);
            }
        }
    }

    public URL a(com.smaato.soma.d dVar, UserSettings userSettings, a aVar) throws AdRequestConstructionFailed {
        try {
            com.smaato.soma.debug.a.a(new Object() { // from class: com.smaato.soma.internal.requests.f.1
            });
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(a());
            StringBuffer a2 = new e(dVar).a();
            if (a2 != null && a2.length() > 0) {
                stringBuffer.append(a2);
            }
            StringBuffer a3 = new com.smaato.soma.internal.requests.settings.b(userSettings).a();
            if (a3 != null && a3.length() > 0) {
                stringBuffer.append(a3);
            }
            stringBuffer.append("&modifyRM=true");
            stringBuffer.append("&beacon=true");
            stringBuffer.append(com.smaato.soma.internal.requests.settings.a.a().a(aVar, userSettings.b(), userSettings.c()));
            stringBuffer.append("&client=").append(k.a("sdkandroid_5-1-1"));
            stringBuffer.append("&autorefresh=").append(this.f);
            stringBuffer.append("&offscreen=").append(this.e);
            String f = f();
            if (f != null && f.length() > 0) {
                stringBuffer.append("&bundle=").append(f);
            }
            stringBuffer.append("&apiver=502");
            com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("HTTP_Connector", "request URL: " + stringBuffer.toString(), 1, DebugCategory.VERVOSE));
            return new URL(stringBuffer.toString());
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
            throw new AdRequestConstructionFailed(e2);
        }
    }

    public String c() {
        return this.c;
    }

    public void b(String str) {
        this.c = str;
    }

    public void a(int i) {
        this.f = i;
    }

    public void a(boolean z) {
        this.e = z;
    }

    public Proxy d() {
        return this.g;
    }

    public boolean e() {
        return this.d;
    }

    public void b(boolean z) {
        this.d = z;
    }

    public String f() {
        return new l<String>() { // from class: com.smaato.soma.internal.requests.f.2
            @Override // com.smaato.soma.l
            /* renamed from: a */
            public String b() throws Exception {
                return com.smaato.soma.internal.requests.settings.a.a().o().getApplicationContext().getPackageName();
            }
        }.c();
    }
}
