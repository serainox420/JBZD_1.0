package com.revmob.internal;

import android.app.Activity;
import android.media.MediaPlayer;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
/* loaded from: classes3.dex */
public final class p implements a {

    /* renamed from: a  reason: collision with root package name */
    private b f4810a;
    private MediaPlayer b;

    private void c(Activity activity, String str) {
        if (str == null || str.length() <= 0) {
            return;
        }
        this.f4810a = new b(activity, str, str.substring(str.lastIndexOf(47) + 1), this);
        this.f4810a.execute(new String[0]);
    }

    @Override // com.revmob.internal.a
    public final void a() {
        if (this.f4810a.b()) {
            this.b = new MediaPlayer();
            File a2 = this.f4810a.a();
            this.b.setOnCompletionListener(new q(this));
            try {
                FileInputStream fileInputStream = new FileInputStream(a2);
                this.b.setDataSource(fileInputStream.getFD());
                this.b.prepare();
                this.b.start();
                fileInputStream.close();
            } catch (IOException e) {
                u.a(e, null, w.b, null, "onTaskComplete");
                RMLog.d(e.toString());
            }
        }
    }

    public final void a(Activity activity, String str) {
        c(activity, str);
    }

    public final void b(Activity activity, String str) {
        c(activity, str);
    }
}
