package com.applovin.impl.sdk;

import android.app.Activity;
import android.content.Intent;
import com.applovin.adview.AppLovinConfirmationActivity;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class aq implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ ap f1597a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public aq(ap apVar) {
        this.f1597a = apVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        AppLovinSdkImpl appLovinSdkImpl;
        AppLovinSdkImpl appLovinSdkImpl2;
        Activity activity;
        Activity activity2;
        Activity activity3;
        appLovinSdkImpl = this.f1597a.f1596a;
        String str = (String) appLovinSdkImpl.a(bx.O);
        String b = this.f1597a.b();
        appLovinSdkImpl2 = this.f1597a.f1596a;
        String str2 = (String) appLovinSdkImpl2.a(bx.T);
        activity = this.f1597a.c;
        if (!n.a(AppLovinConfirmationActivity.class, activity)) {
            this.f1597a.a(b, null);
            return;
        }
        try {
            activity2 = this.f1597a.c;
            Intent intent = new Intent(activity2, AppLovinConfirmationActivity.class);
            intent.putExtra("dialog_title", str);
            intent.putExtra("dialog_body", b);
            intent.putExtra("dialog_button_text", str2);
            activity3 = this.f1597a.c;
            activity3.startActivity(intent);
        } catch (Throwable th) {
            this.f1597a.a(b, th);
        }
    }
}
