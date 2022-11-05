package com.smaato.soma.b;

import android.content.Context;
import android.os.Build;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.smaato.soma.exception.CloseButtonViewInitFailed;
import com.smaato.soma.internal.c.d;
import com.smaato.soma.l;
/* compiled from: CloseButtonView.java */
/* loaded from: classes3.dex */
public class b extends ImageView {
    public b(Context context) {
        super(context);
        new l<Void>() { // from class: com.smaato.soma.b.b.1
            @Override // com.smaato.soma.l
            /* renamed from: a */
            public Void b() throws Exception {
                b.this.a();
                return null;
            }
        }.c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() throws CloseButtonViewInitFailed {
        try {
            com.smaato.soma.debug.a.a(new Object() { // from class: com.smaato.soma.b.b.2
            });
            if (Build.VERSION.SDK_INT >= 8) {
                setImageBitmap(a.a().a(getResources(), getContext()).getBitmap());
            }
            int a2 = d.a().a(getContext(), 30);
            setLayoutParams(new RelativeLayout.LayoutParams(a2, a2));
            ((RelativeLayout.LayoutParams) getLayoutParams()).addRule(11);
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
            throw new CloseButtonViewInitFailed(e2);
        }
    }
}
