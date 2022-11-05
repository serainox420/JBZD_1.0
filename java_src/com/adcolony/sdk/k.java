package com.adcolony.sdk;

import android.app.AlertDialog;
import android.content.DialogInterface;
import com.facebook.share.internal.ShareConstants;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class k {
    static AlertDialog d;

    /* renamed from: a  reason: collision with root package name */
    z f1450a;
    AlertDialog b;
    boolean c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public k() {
        a.a("Alert.show", new ac() { // from class: com.adcolony.sdk.k.1
            @Override // com.adcolony.sdk.ac
            public void a(z zVar) {
                if (a.l == null) {
                    u.g.b("Null Activity reference, can't build AlertDialog.");
                } else if (s.d(zVar.b, "on_resume")) {
                    k.this.f1450a = zVar;
                } else {
                    k.this.a(zVar);
                }
            }
        });
    }

    void a(final z zVar) {
        final AlertDialog.Builder builder = a.m.m.n() >= 21 ? new AlertDialog.Builder(a.l, 16974374) : new AlertDialog.Builder(a.l, 16974126);
        String b = s.b(zVar.b, ShareConstants.WEB_DIALOG_PARAM_MESSAGE);
        String b2 = s.b(zVar.b, "title");
        String b3 = s.b(zVar.b, "positive");
        String b4 = s.b(zVar.b, "negative");
        builder.setMessage(b);
        builder.setTitle(b2);
        builder.setPositiveButton(b3, new DialogInterface.OnClickListener() { // from class: com.adcolony.sdk.k.2
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                k.this.b = null;
                dialogInterface.dismiss();
                JSONObject a2 = s.a();
                s.a(a2, "positive", true);
                k.this.c = false;
                zVar.a(a2).b();
            }
        });
        if (!b4.equals("")) {
            builder.setNegativeButton(b4, new DialogInterface.OnClickListener() { // from class: com.adcolony.sdk.k.3
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    k.this.b = null;
                    dialogInterface.dismiss();
                    JSONObject a2 = s.a();
                    s.a(a2, "positive", false);
                    k.this.c = false;
                    zVar.a(a2).b();
                }
            });
        }
        builder.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.adcolony.sdk.k.4
            @Override // android.content.DialogInterface.OnCancelListener
            public void onCancel(DialogInterface dialogInterface) {
                k.this.b = null;
                k.this.c = false;
            }
        });
        a.l.runOnUiThread(new Runnable() { // from class: com.adcolony.sdk.k.5
            @Override // java.lang.Runnable
            public void run() {
                k.this.c = true;
                k.this.b = builder.show();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        if (this.f1450a != null) {
            a(this.f1450a);
            this.f1450a = null;
        }
    }
}
