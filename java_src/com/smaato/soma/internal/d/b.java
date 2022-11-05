package com.smaato.soma.internal.d;

import android.content.Context;
import android.os.Build;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.mopub.mobileads.resource.DrawableConstants;
import com.smaato.soma.exception.CloseButtonViewInitFailed;
import com.smaato.soma.internal.c.d;
import com.smaato.soma.l;
/* compiled from: SkipAdButtonView.java */
/* loaded from: classes3.dex */
public class b extends ImageView {
    public b(Context context, final boolean z) {
        super(context);
        new l<Void>() { // from class: com.smaato.soma.internal.d.b.1
            @Override // com.smaato.soma.l
            /* renamed from: a */
            public Void b() throws Exception {
                b.this.a(z);
                return null;
            }
        }.c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(boolean z) throws CloseButtonViewInitFailed {
        int i;
        int i2 = 0;
        try {
            com.smaato.soma.debug.a.a(new Object() { // from class: com.smaato.soma.internal.d.b.2
            });
            if (Build.VERSION.SDK_INT < 8) {
                i = 0;
            } else if (z) {
                setImageBitmap(com.smaato.soma.b.a.a().a(getResources(), getContext()).getBitmap());
                i2 = d.a().a(getContext(), 40);
                i = i2;
            } else {
                setImageBitmap(com.smaato.soma.b.a.a().h(getResources(), getContext()).getBitmap());
                i = d.a().a(getContext(), DrawableConstants.CtaButton.WIDTH_DIPS);
                i2 = d.a().a(getContext(), 50);
            }
            setLayoutParams(new RelativeLayout.LayoutParams(i, i2));
            ((RelativeLayout.LayoutParams) getLayoutParams()).addRule(11);
            ((RelativeLayout.LayoutParams) getLayoutParams()).addRule(10);
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
            throw new CloseButtonViewInitFailed(e2);
        }
    }
}
