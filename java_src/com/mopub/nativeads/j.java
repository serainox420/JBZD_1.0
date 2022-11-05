package com.mopub.nativeads;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
/* compiled from: StaticNativeViewHolder.java */
/* loaded from: classes3.dex */
class j {
    @VisibleForTesting
    static final j h = new j();

    /* renamed from: a  reason: collision with root package name */
    View f4639a;
    TextView b;
    TextView c;
    TextView d;
    ImageView e;
    ImageView f;
    ImageView g;

    private j() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static j a(View view, ViewBinder viewBinder) {
        j jVar = new j();
        jVar.f4639a = view;
        try {
            jVar.b = (TextView) view.findViewById(viewBinder.b);
            jVar.c = (TextView) view.findViewById(viewBinder.c);
            jVar.d = (TextView) view.findViewById(viewBinder.d);
            jVar.e = (ImageView) view.findViewById(viewBinder.e);
            jVar.f = (ImageView) view.findViewById(viewBinder.f);
            jVar.g = (ImageView) view.findViewById(viewBinder.g);
            return jVar;
        } catch (ClassCastException e) {
            MoPubLog.w("Could not cast from id in ViewBinder to expected View type", e);
            return h;
        }
    }
}
