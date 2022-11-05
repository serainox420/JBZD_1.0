package com.applovin.impl.sdk;

import android.app.Activity;
import java.util.TimerTask;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class au extends TimerTask {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ at f1601a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public au(at atVar) {
        this.f1601a = atVar;
    }

    @Override // java.util.TimerTask, java.lang.Runnable
    public void run() {
        Activity activity;
        activity = this.f1601a.f1600a.f1599a.c;
        activity.runOnUiThread(new av(this));
    }
}
