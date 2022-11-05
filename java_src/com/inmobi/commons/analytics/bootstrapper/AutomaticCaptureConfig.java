package com.inmobi.commons.analytics.bootstrapper;

import com.google.android.gms.analytics.ecommerce.ProductAction;
import com.google.firebase.a.a;
import com.inmobi.commons.internal.InternalSDKUtil;
import java.util.Map;
/* loaded from: classes2.dex */
public class AutomaticCaptureConfig {

    /* renamed from: a  reason: collision with root package name */
    private boolean f3725a = true;
    private boolean b = false;
    private boolean c = false;

    public boolean isAutoPurchaseCaptureEnabled() {
        return this.b;
    }

    public boolean isAutoSessionCaptureEnabled() {
        return this.f3725a;
    }

    public boolean isAutoLocationCaptureEnabled() {
        return this.c;
    }

    public void setFromMap(Map<String, Object> map) {
        this.f3725a = InternalSDKUtil.getBooleanFromMap(map, "session");
        this.b = InternalSDKUtil.getBooleanFromMap(map, ProductAction.ACTION_PURCHASE);
        this.c = InternalSDKUtil.getBooleanFromMap(map, a.b.LOCATION);
    }
}
