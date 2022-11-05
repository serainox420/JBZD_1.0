package com.applovin.impl.adview;

import android.content.Context;
import android.view.View;
import com.applovin.sdk.AppLovinSdk;
/* loaded from: classes.dex */
public abstract class u extends View {

    /* renamed from: a  reason: collision with root package name */
    protected final AppLovinSdk f1567a;
    protected final Context b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public u(AppLovinSdk appLovinSdk, Context context) {
        super(context);
        this.b = context;
        this.f1567a = appLovinSdk;
    }

    public static u a(AppLovinSdk appLovinSdk, Context context, v vVar) {
        return vVar.equals(v.WhiteXOnTransparentGrey) ? new an(appLovinSdk, context) : new ao(appLovinSdk, context);
    }

    public abstract void a(int i);
}
