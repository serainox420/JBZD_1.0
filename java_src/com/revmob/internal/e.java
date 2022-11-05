package com.revmob.internal;

import android.app.Activity;
import android.content.Intent;
import com.revmob.FullscreenActivity;
/* loaded from: classes3.dex */
final class e implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ String f4800a;
    private /* synthetic */ d b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(d dVar, String str) {
        this.b = dVar;
        this.f4800a = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Activity activity;
        Activity activity2;
        activity = this.b.b;
        Intent intent = new Intent(activity, FullscreenActivity.class);
        intent.putExtra("marketURL", this.f4800a);
        activity2 = this.b.b;
        activity2.startActivityForResult(intent, 0);
    }
}
