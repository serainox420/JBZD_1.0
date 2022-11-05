package com.applovin.impl.adview;

import android.util.Log;
import android.view.View;
/* loaded from: classes.dex */
class q implements View.OnLongClickListener {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ o f1564a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public q(o oVar) {
        this.f1564a = oVar;
    }

    @Override // android.view.View.OnLongClickListener
    public boolean onLongClick(View view) {
        Log.d("AdWebView", "Received a LongClick event.");
        return true;
    }
}
