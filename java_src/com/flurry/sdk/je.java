package com.flurry.sdk;

import android.widget.Toast;
import com.flurry.sdk.ks;
import com.flurry.sdk.ku;
import com.flurry.sdk.lq;
import java.util.Arrays;
/* loaded from: classes2.dex */
public class je extends ky implements lq.a {

    /* renamed from: a  reason: collision with root package name */
    private static final String f2893a = je.class.getSimpleName();
    private String f;
    private boolean g;

    public je() {
        this((byte) 0);
    }

    private je(byte b) {
        super("Analytics", je.class.getSimpleName());
        this.e = "AnalyticsData_";
        lp a2 = lp.a();
        this.g = ((Boolean) a2.a("UseHttps")).booleanValue();
        a2.a("UseHttps", (lq.a) this);
        km.a(4, f2893a, "initSettings, UseHttps = " + this.g);
        String str = (String) a2.a("ReportUrl");
        a2.a("ReportUrl", (lq.a) this);
        b(str);
        km.a(4, f2893a, "initSettings, ReportUrl = " + str);
        b();
    }

    @Override // com.flurry.sdk.lq.a
    public final void a(String str, Object obj) {
        char c = 65535;
        switch (str.hashCode()) {
            case -239660092:
                if (str.equals("UseHttps")) {
                    c = 0;
                    break;
                }
                break;
            case 1650629499:
                if (str.equals("ReportUrl")) {
                    c = 1;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                this.g = ((Boolean) obj).booleanValue();
                km.a(4, f2893a, "onSettingUpdate, UseHttps = " + this.g);
                return;
            case 1:
                String str2 = (String) obj;
                b(str2);
                km.a(4, f2893a, "onSettingUpdate, ReportUrl = " + str2);
                return;
            default:
                km.a(6, f2893a, "onSettingUpdate internal error!");
                return;
        }
    }

    private void b(String str) {
        if (str != null && !str.endsWith(".do")) {
            km.a(5, f2893a, "overriding analytics agent report URL without an endpoint, are you sure?");
        }
        this.f = str;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.flurry.sdk.ky
    public final void a(String str, String str2, final int i) {
        jy.a().b(new ma() { // from class: com.flurry.sdk.je.2
            @Override // com.flurry.sdk.ma
            public final void a() {
                if (i == 200) {
                    hr.a();
                    jh b = hr.b();
                    if (b == null) {
                        return;
                    }
                    b.j = true;
                }
            }
        });
        super.a(str, str2, i);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.flurry.sdk.ky
    public final void a(byte[] bArr, final String str, final String str2) {
        String str3;
        if (this.f != null) {
            str3 = this.f;
        } else if (this.g) {
            str3 = "https://data.flurry.com/aap.do";
        } else {
            str3 = "http://data.flurry.com/aap.do";
        }
        km.a(4, f2893a, "FlurryDataSender: start upload data " + Arrays.toString(bArr) + " with id = " + str + " to " + str3);
        ks ksVar = new ks();
        ksVar.f = str3;
        ksVar.w = 100000;
        ksVar.g = ku.a.kPost;
        ksVar.a("Content-Type", "application/octet-stream");
        ksVar.c = new lc();
        ksVar.b = bArr;
        ksVar.f2978a = new ks.a<byte[], Void>() { // from class: com.flurry.sdk.je.1
            @Override // com.flurry.sdk.ks.a
            public final /* synthetic */ void a(ks<byte[], Void> ksVar2, Void r7) {
                final int i = ksVar2.p;
                if (i > 0) {
                    km.e(je.f2893a, "Analytics report sent.");
                    km.a(3, je.f2893a, "FlurryDataSender: report " + str + " sent. HTTP response: " + i);
                    if (km.c() <= 3 && km.d()) {
                        jy.a().a(new Runnable() { // from class: com.flurry.sdk.je.1.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                Toast.makeText(jy.a().f2947a, "SD HTTP Response Code: " + i, 0).show();
                            }
                        });
                    }
                    je.this.a(str, str2, i);
                    je.this.b();
                    return;
                }
                je.this.a(str);
            }
        };
        jw.a().a((Object) this, (je) ksVar);
    }
}
