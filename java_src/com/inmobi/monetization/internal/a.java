package com.inmobi.monetization.internal;

import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import com.inmobi.commons.network.ErrorCode;
import com.inmobi.commons.network.Response;
import com.inmobi.commons.network.ServiceProvider;
import com.inmobi.commons.network.abstraction.INetworkListener;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AdController.java */
/* loaded from: classes2.dex */
public class a {
    private static a c = null;

    /* renamed from: a  reason: collision with root package name */
    private ServiceProvider f3866a = ServiceProvider.getInstance();
    private INetworkListener b;

    private a() {
    }

    public static a a() {
        if (c == null) {
            c = new a();
        }
        return c;
    }

    public void a(String str, c cVar, INetworkListener iNetworkListener) {
        this.b = iNetworkListener;
        if (InternalSDKUtil.checkNetworkAvailibility(InternalSDKUtil.getContext())) {
            Log.internal(Constants.LOG_TAG, "Fetching  Ads");
            this.f3866a.executeTask(cVar, iNetworkListener);
        } else if (this.b != null) {
            this.b.onRequestFailed(cVar, new Response(ErrorCode.NETWORK_ERROR));
        }
    }
}
