package com.facebook.ads.internal.view.d.b;

import android.content.Context;
import android.graphics.PorterDuff;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import com.facebook.ads.internal.g.q;
import com.facebook.ads.internal.g.r;
import com.facebook.ads.internal.g.s;
/* loaded from: classes.dex */
public class i extends m {
    private final ProgressBar b;
    private final s<com.facebook.ads.internal.view.d.a.l> c;

    public i(Context context) {
        this(context, null);
    }

    public i(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public i(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.c = new s<com.facebook.ads.internal.view.d.a.l>() { // from class: com.facebook.ads.internal.view.d.b.i.1
            @Override // com.facebook.ads.internal.g.s
            public Class<com.facebook.ads.internal.view.d.a.l> a() {
                return com.facebook.ads.internal.view.d.a.l.class;
            }

            @Override // com.facebook.ads.internal.g.s
            public void a(com.facebook.ads.internal.view.d.a.l lVar) {
                i.this.setVisibility(8);
            }
        };
        int applyDimension = (int) TypedValue.applyDimension(1, 40.0f, getResources().getDisplayMetrics());
        this.b = new ProgressBar(getContext());
        this.b.setIndeterminate(true);
        this.b.getIndeterminateDrawable().setColorFilter(-1, PorterDuff.Mode.SRC_IN);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(applyDimension, applyDimension);
        layoutParams.addRule(13);
        addView(this.b, layoutParams);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.ads.internal.view.d.b.m
    public void a(com.facebook.ads.internal.view.m mVar) {
        setVisibility(0);
        mVar.getEventBus().a((r<s, q>) this.c);
    }
}
