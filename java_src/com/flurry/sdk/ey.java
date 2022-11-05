package com.flurry.sdk;

import android.app.ProgressDialog;
import android.text.TextUtils;
import com.flurry.sdk.ep;
import com.flurry.sdk.ev;
import com.google.android.gms.cast.framework.media.NotificationOptions;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public abstract class ey {

    /* renamed from: a  reason: collision with root package name */
    private static final String f2638a = ey.class.getName();
    protected String g;
    protected String h;
    protected String i;
    protected a j;
    public long c = Long.MIN_VALUE;
    public String d = null;
    public int e = -1;
    public ProgressDialog f = null;
    private eq b = null;
    public final kh<ls> k = new kh<ls>() { // from class: com.flurry.sdk.ey.6
        @Override // com.flurry.sdk.kh
        public final /* synthetic */ void a(ls lsVar) {
            if (System.currentTimeMillis() - ey.this.c <= NotificationOptions.SKIP_STEP_TEN_SECONDS_IN_MS) {
                return;
            }
            jy.a().a(new ma() { // from class: com.flurry.sdk.ey.6.1
                @Override // com.flurry.sdk.ma
                public final void a() {
                    km.a(3, ey.f2638a, "Failed to load view in 10 seconds.");
                    eh.a(ei.kTimeOut, ey.this.e, "Request timed out");
                    ey.d(ey.this);
                    if (ey.this.b != null) {
                        ey.this.b.c();
                    }
                }
            });
        }
    };

    /* loaded from: classes2.dex */
    public enum a {
        IMAGE_POST,
        TEXT_POST
    }

    protected abstract Map<String, String> a();

    public ey(a aVar) {
        this.j = aVar;
    }

    public final void a(String str) {
        this.g = str;
    }

    public final void b(String str) {
        this.h = str;
    }

    public final void c(String str) {
        this.i = str;
    }

    public final a b() {
        return this.j;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void a(Map<String, String> map, String str, String str2) {
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            map.put(str, str2);
        }
    }

    protected final void a(ei eiVar, String str) {
        jy.a().a(new ma() { // from class: com.flurry.sdk.ey.4
            @Override // com.flurry.sdk.ma
            public final void a() {
                if (ey.this.f.isShowing()) {
                    ey.this.f.dismiss();
                }
            }
        });
        eh.a(eiVar, this.e, str);
    }

    protected final void a(Long l) {
        jy.a().a(new ma() { // from class: com.flurry.sdk.ey.5
            @Override // com.flurry.sdk.ma
            public final void a() {
                if (ey.this.f.isShowing()) {
                    ey.this.f.dismiss();
                }
            }
        });
        eh.a(this.e, l);
    }

    static /* synthetic */ void a(ey eyVar, final Map map) {
        final String str = eyVar.d;
        final ep.a aVar = new ep.a() { // from class: com.flurry.sdk.ey.3
            @Override // com.flurry.sdk.ep.a
            public final void a(Long l) {
                hr.a();
                hr.a("PostSend", ey.this.h, new HashMap());
                ey.this.a(l);
            }

            @Override // com.flurry.sdk.ep.a
            public final void a(int i, String str2) {
                if (i == 401) {
                    ed.a();
                    ed.b();
                }
                ey.this.a(ei.kPostFailed, str2);
            }
        };
        final ep epVar = new ep();
        jy.a().b(new ma() { // from class: com.flurry.sdk.eu.5
            @Override // com.flurry.sdk.ma
            public final void a() {
                epVar.a(str, map, aVar);
            }
        });
        eyVar.b = epVar;
    }

    static /* synthetic */ void b(ey eyVar, final Map map) {
        final String str = eyVar.d;
        final ev.a aVar = new ev.a() { // from class: com.flurry.sdk.ey.2
            @Override // com.flurry.sdk.ev.a
            public final void a(Long l) {
                hr.a();
                hr.a("PostSend", ey.this.h, new HashMap());
                ey.this.a(l);
            }

            @Override // com.flurry.sdk.ev.a
            public final void a(int i, String str2) {
                if (i == 401) {
                    ed.a();
                    ed.b();
                }
                ey.this.a(ei.kInvalidPostId, str2);
            }
        };
        final ev evVar = new ev();
        jy.a().b(new ma() { // from class: com.flurry.sdk.eu.4
            @Override // com.flurry.sdk.ma
            public final void a() {
                evVar.a(str, map, aVar);
            }
        });
        eyVar.b = evVar;
    }

    static /* synthetic */ void d(ey eyVar) {
        eyVar.c = Long.MIN_VALUE;
        lt.a().b(eyVar.k);
        if (!eyVar.f.isShowing()) {
            return;
        }
        eyVar.f.dismiss();
    }
}
