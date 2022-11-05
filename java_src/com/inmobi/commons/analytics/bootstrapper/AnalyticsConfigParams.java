package com.inmobi.commons.analytics.bootstrapper;

import com.facebook.common.time.Clock;
import com.inmobi.commons.internal.FileOperations;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.uid.UID;
import com.inmobi.commons.uid.UIDMapConfigParams;
import java.util.Map;
/* loaded from: classes2.dex */
public class AnalyticsConfigParams {

    /* renamed from: a  reason: collision with root package name */
    private static final Long f3722a = null;
    private UIDMapConfigParams b = new UIDMapConfigParams();
    private AnalyticsEndPointsConfig c = new AnalyticsEndPointsConfig();
    private ThinICEConfig d = new ThinICEConfig();
    private Long e = f3722a;
    private int f = 5;
    private int g = 1000;
    private int h = 100;
    private int i = 30;
    private int j = 20;
    private int k = 50;
    private int l = 100;
    private int m = 5;
    private AutomaticCaptureConfig n = new AutomaticCaptureConfig();
    private int o = 100;

    public int getMaxDbEvents() {
        return this.g;
    }

    public int getGetParamsLimit() {
        return this.h;
    }

    public int getMinEventsToCompress() {
        return this.f;
    }

    public int getPingInterval() {
        return this.i * 1000;
    }

    public int getMaxKeyLength() {
        return this.j;
    }

    public int getMaxValLength() {
        return this.k;
    }

    public int getMaxAppIdLength() {
        return this.o;
    }

    public int getMaxRetryBeforeCacheDiscard() {
        return this.m;
    }

    public AutomaticCaptureConfig getAutomaticCapture() {
        return this.n;
    }

    public int getExtraParamsLimit() {
        return this.l;
    }

    public Long getLTVId() {
        this.e = Long.valueOf(FileOperations.getLongPreferences(InternalSDKUtil.getContext(), InternalSDKUtil.IM_PREF, InternalSDKUtil.KEY_LTVID));
        if (0 == this.e.longValue()) {
            return null;
        }
        return this.e;
    }

    public Map<String, Boolean> getDeviceIdMaskMap() {
        return this.b.getMap();
    }

    public AnalyticsEndPointsConfig getEndPoints() {
        return this.c;
    }

    public ThinICEConfig getThinIceConfig() {
        return this.d;
    }

    public void setFromMap(Map<String, Object> map) {
        this.h = InternalSDKUtil.getIntFromMap(map, "elim", 1, 2147483647L);
        this.g = InternalSDKUtil.getIntFromMap(map, "mdb", 1, 2147483647L);
        this.j = InternalSDKUtil.getIntFromMap(map, "mkey", 1, 2147483647L);
        this.k = InternalSDKUtil.getIntFromMap(map, "mval", 1, 2147483647L);
        this.i = InternalSDKUtil.getIntFromMap(map, "pint", 1, 2147483647L);
        this.l = InternalSDKUtil.getIntFromMap(map, "plim", 1, 2147483647L);
        this.e = Long.valueOf(InternalSDKUtil.getLongFromMap(map, InternalSDKUtil.KEY_LTVID, Long.MIN_VALUE, Clock.MAX_TIME));
        UID.getInstance().setLtvId(this.e + "");
        FileOperations.setPreferences(InternalSDKUtil.getContext(), InternalSDKUtil.IM_PREF, InternalSDKUtil.KEY_LTVID, this.e.longValue());
        this.f = InternalSDKUtil.getIntFromMap(map, "mec", 1, 2147483647L);
        this.m = InternalSDKUtil.getIntFromMap(map, "mr", 0, 2147483647L);
        this.o = InternalSDKUtil.getIntFromMap(map, "aidl", 1, 2147483647L);
        this.b.setMap(InternalSDKUtil.getObjectFromMap(map, "ids"));
        this.c.setFromMap((Map) map.get("endpoints"));
        this.d.setFromMap((Map) map.get("tic"));
        this.n.setFromMap((Map) map.get("at"));
    }
}
