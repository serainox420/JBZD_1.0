package com.flurry.sdk;

import android.widget.Button;
/* loaded from: classes2.dex */
public final class n extends kg {

    /* renamed from: a  reason: collision with root package name */
    public Button f3064a;
    public int b;
    public a c;

    /* loaded from: classes2.dex */
    public enum a {
        CALL_TO_ACTION(0),
        CLICK_TO_CALL(1);
        
        public int c;

        a(int i) {
            this.c = i;
        }
    }

    public n(a aVar) {
        super("com.flurry.android.impl.ads.RegisterCTAViewEvent");
        this.c = aVar;
    }
}
