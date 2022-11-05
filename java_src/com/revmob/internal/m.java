package com.revmob.internal;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.content.DialogInterface;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import com.revmob.RevMobAdsListener;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
/* loaded from: classes3.dex */
public final class m implements a {

    /* renamed from: a  reason: collision with root package name */
    private String f4807a = "RevMobEula_v";
    private String b;
    private Activity c;
    private String d;
    private b e;
    private SharedPreferences f;
    private DialogInterface g;
    private boolean h;
    private RevMobAdsListener i;

    public m(Activity activity, RevMobAdsListener revMobAdsListener) {
        this.c = activity;
        this.i = revMobAdsListener;
    }

    @Override // com.revmob.internal.a
    public final void a() {
        if (this.e.b()) {
            File a2 = this.e.a();
            try {
                FileInputStream fileInputStream = new FileInputStream(a2);
                StringBuffer stringBuffer = new StringBuffer("");
                byte[] bArr = new byte[(int) a2.length()];
                while (true) {
                    int read = fileInputStream.read(bArr);
                    if (read == -1) {
                        break;
                    }
                    stringBuffer.append(new String(bArr, 0, read));
                }
                this.d = stringBuffer.toString();
                fileInputStream.close();
                this.g = new AlertDialog.Builder(this.c).setTitle("RevMob EULA").setMessage(this.d).setPositiveButton("I agree", new o(this)).setNegativeButton("I don't agree", new n(this)).create();
                ((Dialog) this.g).show();
                if (this.i == null) {
                    return;
                }
                this.i.onRevMobEulaIsShown();
            } catch (IOException e) {
                RMLog.d(e.toString());
                u.a(e, null, w.b, null, "onTaskComplete");
            }
        }
    }

    public final void b() {
        String i;
        if (c.d()) {
            this.h = false;
            this.b = this.f4807a + c.j();
            this.f = PreferenceManager.getDefaultSharedPreferences(this.c);
            if (this.f.getBoolean(this.b, false) || (i = c.i()) == null || i.length() <= 0) {
                return;
            }
            this.e = new b(this.c, i, i.substring(i.lastIndexOf(47) + 1), this);
            this.e.execute(new String[0]);
        }
    }

    public final void c() {
        if (!this.h) {
            RMLog.i("Eula accepted and dismissed.");
            SharedPreferences.Editor edit = this.f.edit();
            edit.putBoolean(this.b, true);
            edit.commit();
            this.g.dismiss();
            this.h = true;
            if (this.i == null) {
                return;
            }
            this.i.onRevMobEulaWasAcceptedAndDismissed();
        }
    }

    public final void d() {
        if (!this.h) {
            RMLog.i("Eula rejected.");
            this.h = true;
            if (this.i != null) {
                this.i.onRevMobEulaWasRejected();
            }
            this.c.setResult(0);
            this.c.finish();
            System.exit(0);
        }
    }
}
