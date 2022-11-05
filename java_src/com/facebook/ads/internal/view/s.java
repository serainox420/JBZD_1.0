package com.facebook.ads.internal.view;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
/* loaded from: classes.dex */
public class s extends View {

    /* renamed from: a  reason: collision with root package name */
    private r f2362a;

    public s(Context context, r rVar) {
        super(context);
        this.f2362a = rVar;
        setLayoutParams(new ViewGroup.LayoutParams(0, 0));
    }

    @Override // android.view.View
    public void onWindowVisibilityChanged(int i) {
        if (this.f2362a != null) {
            this.f2362a.a(i);
        }
    }
}
