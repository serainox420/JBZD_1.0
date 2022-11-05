package com.inmobi.commons.analytics.bootstrapper;

import com.facebook.common.time.Clock;
import com.inmobi.commons.internal.InternalSDKUtil;
import java.util.Map;
/* loaded from: classes2.dex */
public class ThinICEConfig {
    public static final int CELL_OP_FLAGS_DEFAULT = 0;
    public static final boolean ENABLED_DEFAULT = true;
    public static final String END_POINT_DEFAULT = "https://sdkm.w.inmobi.com/user/e.asm";
    public static final long MAX_RETRY_DEFAULT = 3;
    public static final long RETRY_INTERVAL = 3;
    public static final boolean SAMPLE_CELL_CONNECTED_WIFI_ENABLED_DEFAULT = true;
    public static final boolean SAMPLE_CELL_ENABLED_DEFAULT = true;
    public static final boolean SAMPLE_CELL_OPERATOR_ENABLED_DEFAULT = true;
    public static final boolean SAMPLE_CELL_VISIBLE_CELL_TOWER_ENABLED_DEFAULT = true;
    public static final boolean SAMPLE_CELL_VISIBLE_WIFI_ENABLED_DEFAULT = true;
    public static final int SAMPLE_HISTORY_SIZE_DEFAULT = 50;
    public static final long SAMPLE_INTERVAL_DEFAULT = 60;
    public static final long STOP_REQUEST_TIMEOUT_DEFAULT = 3;
    public static final int WIFI_FLAGS_DEFAULT = 0;

    /* renamed from: a  reason: collision with root package name */
    private long f3726a = 60;
    private long b = 3;
    private long c = 3;
    private long d = 3;
    private int e = 50;
    private int f = 0;
    private int g = 0;
    private String h = END_POINT_DEFAULT;
    private boolean i = true;
    private boolean j = true;
    private boolean k = true;
    private boolean l = true;
    private boolean m = true;
    private boolean n = true;
    private boolean o = false;
    private long p = 180;
    private long q = 50;

    public long getSampleInterval() {
        return this.f3726a;
    }

    public long getStopRequestTimeout() {
        return this.b;
    }

    public long getRetryInterval() {
        return this.c;
    }

    public long getMaxRetry() {
        return this.d;
    }

    public int getSampleHistorySize() {
        return this.e;
    }

    public int getWifiFlags() {
        return this.f;
    }

    public int getCellOpsFlag() {
        return this.g;
    }

    public boolean isEnabled() {
        return this.i;
    }

    public boolean isOperatorEnabled() {
        return this.j;
    }

    public boolean isCellEnabled() {
        return this.k;
    }

    public boolean isConnectedWifiEnabled() {
        return this.l;
    }

    public boolean isVisibleWifiEnabled() {
        return this.m;
    }

    public boolean isVisibleCellTowerEnabled() {
        return this.n;
    }

    public String getEndpointUrl() {
        return this.h;
    }

    public boolean isActivityDetectionEnabled() {
        return this.o;
    }

    public long getActivityDetectionInterval() {
        return this.p * 1000;
    }

    public long getActivityDetectionMaxSize() {
        return this.q;
    }

    public final void setFromMap(Map<String, Object> map) {
        this.f3726a = InternalSDKUtil.getLongFromMap(map, "si", 1L, Clock.MAX_TIME);
        this.b = InternalSDKUtil.getLongFromMap(map, "srt", 1L, Clock.MAX_TIME);
        this.e = InternalSDKUtil.getIntFromMap(map, "shs", 1, 2147483647L);
        this.f = InternalSDKUtil.getIntFromMap(map, "wfd", 0, 15L);
        this.g = InternalSDKUtil.getIntFromMap(map, "cof", 0, 15L);
        this.i = InternalSDKUtil.getBooleanFromMap(map, "e");
        this.l = InternalSDKUtil.getBooleanFromMap(map, "sccw");
        this.k = InternalSDKUtil.getBooleanFromMap(map, "sced");
        this.j = InternalSDKUtil.getBooleanFromMap(map, "scoe");
        this.m = InternalSDKUtil.getBooleanFromMap(map, "scvw");
        this.n = InternalSDKUtil.getBooleanFromMap(map, "scvc");
        this.h = InternalSDKUtil.getStringFromMap(map, "ep");
        this.d = InternalSDKUtil.getLongFromMap(map, "mr", 0L, Clock.MAX_TIME);
        this.c = InternalSDKUtil.getLongFromMap(map, "ri", 1L, Clock.MAX_TIME);
        this.o = InternalSDKUtil.getBooleanFromMap(map, "as");
        this.p = InternalSDKUtil.getLongFromMap(map, "assi", 1L, Clock.MAX_TIME);
        this.q = InternalSDKUtil.getLongFromMap(map, "asm", 1L, Clock.MAX_TIME);
    }
}
