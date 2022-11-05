package com.smaato.soma.mediation;

import android.view.View;
import android.view.ViewGroup;
/* compiled from: Views.java */
/* loaded from: classes3.dex */
public class t {
    public static void a(View view) {
        if (view != null && view.getParent() != null && (view.getParent() instanceof ViewGroup)) {
            ((ViewGroup) view.getParent()).removeView(view);
        }
    }
}
