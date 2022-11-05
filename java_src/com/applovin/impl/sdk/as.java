package com.applovin.impl.sdk;

import android.app.Activity;
import android.app.AlertDialog;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class as implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ ar f1599a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public as(ar arVar) {
        this.f1599a = arVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        Activity activity;
        AppLovinSdkImpl appLovinSdkImpl;
        AppLovinSdkImpl appLovinSdkImpl2;
        AppLovinSdkImpl appLovinSdkImpl3;
        AppLovinSdkImpl appLovinSdkImpl4;
        activity = this.f1599a.c;
        AlertDialog.Builder builder = new AlertDialog.Builder(activity);
        appLovinSdkImpl = this.f1599a.f1598a;
        builder.setTitle((CharSequence) appLovinSdkImpl.a(bx.K));
        appLovinSdkImpl2 = this.f1599a.f1598a;
        builder.setMessage((CharSequence) appLovinSdkImpl2.a(bx.L));
        builder.setCancelable(false);
        appLovinSdkImpl3 = this.f1599a.f1598a;
        builder.setPositiveButton((CharSequence) appLovinSdkImpl3.a(bx.M), new at(this));
        appLovinSdkImpl4 = this.f1599a.f1598a;
        builder.setNegativeButton((CharSequence) appLovinSdkImpl4.a(bx.N), new aw(this));
        builder.show();
    }
}
