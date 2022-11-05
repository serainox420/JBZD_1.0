package com.smaato.soma;

import android.app.AlertDialog;
import android.content.Context;
import com.smaato.soma.r;
/* compiled from: AbstractAlertView.java */
/* loaded from: classes3.dex */
public abstract class a<T extends r> {
    public static String b = "AbstractAlertView";

    /* renamed from: a  reason: collision with root package name */
    protected e f4858a;
    T c;
    private Context d;
    private AlertDialog e;

    /* JADX INFO: Access modifiers changed from: protected */
    public Context a() {
        return this.d;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public AlertDialog b() {
        return this.e;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(AlertDialog alertDialog) {
        this.e = alertDialog;
    }

    public void c() {
        com.smaato.soma.debug.a.a(new Object() { // from class: com.smaato.soma.a.1
        });
        new l<Void>() { // from class: com.smaato.soma.a.2
            @Override // com.smaato.soma.l
            /* renamed from: a */
            public Void b() throws Exception {
                AlertDialog b2 = a.this.b();
                if (b2 != null) {
                    b2.dismiss();
                    a.this.a(null);
                }
                return null;
            }
        }.c();
    }
}
