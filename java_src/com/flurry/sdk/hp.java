package com.flurry.sdk;

import android.content.Context;
import java.lang.ref.WeakReference;
/* loaded from: classes2.dex */
public class hp {

    /* renamed from: a  reason: collision with root package name */
    private hk f2809a;
    private cn c;
    private a d;
    private WeakReference<Context> b = new WeakReference<>(null);
    private final String e = hp.class.getSimpleName();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public enum a {
        NONE,
        LOADING,
        PREPARED,
        READY
    }

    public final void a() {
        km.a(3, this.e, "clearing webviews");
        this.d = null;
        this.b = new WeakReference<>(null);
        this.f2809a = null;
    }

    public final void b() {
        this.f2809a.loadUrl("javascript:var closeButtonDiv =  document.getElementById('flurry_interstitial_close');if (typeof(closeButtonDiv) == 'undefined' || closeButtonDiv == null){var newdiv = document.createElement('div');var divIdName = 'flurry_interstitial_close';newdiv.setAttribute('id',divIdName);newdiv.innerHTML = '<a href=\"flurry://flurrycall?event=adWillClose\"><div id=\"rtb_close\"><img src=\"http://cdn.flurry.com/adSpaceStyles.dev/images/bttn-close-bw.png\" alt=\"close advertisement\" /></div></a></div>';document.body.appendChild(newdiv);}");
    }

    private synchronized void a(a aVar) {
        if (aVar == null) {
            aVar = a.NONE;
        }
        km.a(3, this.e, "Setting FlurryWebViewState from " + this.d + " to " + aVar + " for mContext: " + this.b);
        this.d = aVar;
    }

    public final hk c() {
        if (this.f2809a == null || a.NONE.equals(this.d)) {
            if (this.b != null) {
                this.f2809a = new hk(this.b.get(), this.c);
                a(a.LOADING);
            } else {
                km.a(3, this.e, "mContext is null");
                return null;
            }
        } else if (this.f2809a != null && !a.NONE.equals(this.d)) {
            km.a(3, this.e, "fWebView is not null");
        } else {
            km.a(3, this.e, "fWebView is null");
            return null;
        }
        return this.f2809a;
    }

    public final void a(Context context, cn cnVar) {
        if (context == null) {
            return;
        }
        km.a(3, this.e, "setting mContext");
        this.b = new WeakReference<>(context);
        if (cnVar != null) {
            this.c = cnVar;
        }
    }
}
