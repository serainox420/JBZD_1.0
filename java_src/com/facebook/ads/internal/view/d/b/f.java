package com.facebook.ads.internal.view.d.b;

import android.content.Context;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.facebook.ads.internal.g.q;
import com.facebook.ads.internal.g.r;
import com.facebook.ads.internal.g.s;
import com.mopub.mobileads.resource.DrawableConstants;
/* loaded from: classes.dex */
public class f extends m {
    private final ImageView b;
    private final s<com.facebook.ads.internal.view.d.a.j> c;
    private final s<com.facebook.ads.internal.view.d.a.b> d;

    public f(Context context) {
        super(context);
        this.c = new s<com.facebook.ads.internal.view.d.a.j>() { // from class: com.facebook.ads.internal.view.d.b.f.1
            @Override // com.facebook.ads.internal.g.s
            public Class<com.facebook.ads.internal.view.d.a.j> a() {
                return com.facebook.ads.internal.view.d.a.j.class;
            }

            @Override // com.facebook.ads.internal.g.s
            public void a(com.facebook.ads.internal.view.d.a.j jVar) {
                f.this.setVisibility(8);
            }
        };
        this.d = new s<com.facebook.ads.internal.view.d.a.b>() { // from class: com.facebook.ads.internal.view.d.b.f.2
            @Override // com.facebook.ads.internal.g.s
            public Class<com.facebook.ads.internal.view.d.a.b> a() {
                return com.facebook.ads.internal.view.d.a.b.class;
            }

            @Override // com.facebook.ads.internal.g.s
            public void a(com.facebook.ads.internal.view.d.a.b bVar) {
                f.this.setVisibility(0);
            }
        };
        this.b = new ImageView(context);
        this.b.setScaleType(ImageView.ScaleType.CENTER_CROP);
        this.b.setBackgroundColor(DrawableConstants.CtaButton.BACKGROUND_COLOR);
        addView(this.b, new RelativeLayout.LayoutParams(-1, -1));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.ads.internal.view.d.b.m
    public void a(com.facebook.ads.internal.view.m mVar) {
        mVar.getEventBus().a((r<s, q>) this.c);
        mVar.getEventBus().a((r<s, q>) this.d);
        super.a(mVar);
    }

    public void setImage(String str) {
        if (str == null) {
            setVisibility(8);
            return;
        }
        setVisibility(0);
        new com.facebook.ads.internal.util.q(this.b).a(str);
    }
}
