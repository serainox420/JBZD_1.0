package com.inmobi.monetization.internal.configs;

import com.inmobi.commons.internal.InternalSDKUtil;
import java.util.Map;
/* loaded from: classes2.dex */
public class PlayableAdsConfigParams {

    /* renamed from: a  reason: collision with root package name */
    String f3885a = "3b3941b6-4683-400a-a542-6ccd3d13abe6";
    String b = "f1478eab-8535-4c85-8ab7-5bdf3f2f7706";

    public String getSecretKey() {
        return this.b;
    }

    public String getSecretToken() {
        return this.f3885a;
    }

    public void setFromMap(Map<String, Object> map) {
        this.f3885a = InternalSDKUtil.getStringFromMap(map, "st");
        this.b = InternalSDKUtil.getStringFromMap(map, "sk");
    }
}
