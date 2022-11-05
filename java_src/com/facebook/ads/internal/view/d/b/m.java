package com.facebook.ads.internal.view.d.b;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.RelativeLayout;
/* loaded from: classes.dex */
public abstract class m extends RelativeLayout {

    /* renamed from: a  reason: collision with root package name */
    static final /* synthetic */ boolean f2315a;
    private com.facebook.ads.internal.view.m b;

    static {
        f2315a = !m.class.desiredAssertionStatus();
    }

    public m(Context context) {
        super(context);
    }

    public m(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(com.facebook.ads.internal.view.m mVar) {
    }

    public void b(com.facebook.ads.internal.view.m mVar) {
        this.b = mVar;
        a(mVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public com.facebook.ads.internal.view.m getVideoView() {
        if (f2315a || this.b != null) {
            return this.b;
        }
        throw new AssertionError();
    }
}
