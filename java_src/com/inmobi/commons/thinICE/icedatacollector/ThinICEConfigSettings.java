package com.inmobi.commons.thinICE.icedatacollector;
/* loaded from: classes2.dex */
public class ThinICEConfigSettings {
    public static final int CELL_OP_FLAG_DISABLE_CURRENT_DETAILS = 2;
    public static final int CELL_OP_FLAG_DISABLE_SIM_DETAILS = 1;
    public static final int WIFI_FLAG_DISABLE_NOMAP_EXCLUSION = 2;
    public static final int WIFI_FLAG_DISABLE_SSID_COLLECTION = 1;

    /* renamed from: a  reason: collision with root package name */
    private boolean f3821a;
    private boolean b;
    private boolean c;
    private boolean d;
    private boolean e;
    private boolean f;
    private boolean g;
    private long h;
    private long i;
    private int j;
    private int k;
    private int l;

    public ThinICEConfigSettings() {
        this.f3821a = true;
        this.b = true;
        this.c = true;
        this.d = true;
        this.e = true;
        this.f = true;
        this.g = true;
        this.h = 60000L;
        this.i = 3000L;
        this.j = 50;
        this.k = 0;
        this.l = 0;
    }

    public ThinICEConfigSettings(ThinICEConfigSettings thinICEConfigSettings) {
        this.f3821a = true;
        this.b = true;
        this.c = true;
        this.d = true;
        this.e = true;
        this.f = true;
        this.g = true;
        this.h = 60000L;
        this.i = 3000L;
        this.j = 50;
        this.k = 0;
        this.l = 0;
        this.f3821a = thinICEConfigSettings.f3821a;
        this.b = thinICEConfigSettings.b;
        this.c = thinICEConfigSettings.c;
        this.d = thinICEConfigSettings.d;
        this.e = thinICEConfigSettings.e;
        this.f = thinICEConfigSettings.f;
        this.g = thinICEConfigSettings.g;
        this.h = thinICEConfigSettings.h;
        this.i = thinICEConfigSettings.i;
        this.j = thinICEConfigSettings.j;
        this.k = thinICEConfigSettings.k;
        this.l = thinICEConfigSettings.l;
    }

    public boolean isEnabled() {
        return this.f3821a;
    }

    public ThinICEConfigSettings setEnabled(boolean z) {
        this.f3821a = z;
        return this;
    }

    public boolean isSampleCellOperatorEnabled() {
        return this.b;
    }

    public ThinICEConfigSettings setSampleCellOperatorEnabled(boolean z) {
        this.b = z;
        return this;
    }

    public boolean isSampleCellEnabled() {
        return this.c;
    }

    public ThinICEConfigSettings setSampleCellEnabled(boolean z) {
        this.c = z;
        return this;
    }

    public boolean isSampleConnectedWifiEnabled() {
        return this.d;
    }

    public ThinICEConfigSettings setSampleConnectedWifiEnabled(boolean z) {
        this.d = z;
        return this;
    }

    public boolean isSampleLocationEnabled() {
        return this.e;
    }

    public ThinICEConfigSettings setSampleLocationEnabled(boolean z) {
        this.e = z;
        return this;
    }

    public boolean isSampleVisibleWifiEnabled() {
        return this.f;
    }

    public boolean isSampleVisibleCellTowerEnabled() {
        return this.g;
    }

    public ThinICEConfigSettings setSampleVisibleWifiEnabled(boolean z) {
        this.f = z;
        return this;
    }

    public ThinICEConfigSettings setSampleVisibleCellTowerEnabled(boolean z) {
        this.g = z;
        return this;
    }

    public long getSampleInterval() {
        return this.h;
    }

    public ThinICEConfigSettings setSampleInterval(long j) {
        if (j <= 0) {
            throw new IllegalArgumentException("Sample interval must be greater than 0");
        }
        this.h = j;
        return this;
    }

    public long getStopRequestTimeout() {
        return this.i;
    }

    public ThinICEConfigSettings setStopRequestTimeout(long j) {
        if (j <= 0) {
            throw new IllegalArgumentException("Stop request timeout must be greater than 0");
        }
        this.i = j;
        return this;
    }

    public int getSampleHistorySize() {
        return this.j;
    }

    public ThinICEConfigSettings setSampleHistorySize(int i) {
        if (i <= 0) {
            throw new IllegalArgumentException("Sample history size must be greater than 0");
        }
        this.j = i;
        return this;
    }

    public int getWifiFlags() {
        return this.k;
    }

    public ThinICEConfigSettings setWifiFlags(int i) {
        this.k = i;
        return this;
    }

    public int getCellOpFlags() {
        return this.l;
    }

    public ThinICEConfigSettings setCellOpFlags(int i) {
        this.l = i;
        return this;
    }

    public static boolean bitTest(int i, int i2) {
        return (i & i2) == i2;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName()).append("[");
        sb.append("mEnabled=").append(this.f3821a).append(", ");
        sb.append("mSampleCellOperatorEnabled=").append(this.b).append(", ");
        sb.append("mSampleCellEnabled=").append(this.c).append(", ");
        sb.append("mSampleConnectedWifiEnabled=").append(this.d).append(", ");
        sb.append("mSampleLocationEnabled=").append(this.e).append(", ");
        sb.append("mSampleVisibleWifiEnabled=").append(this.f).append(", ");
        sb.append("mSampleVisibleCellTowerEnabled=").append(this.g).append(", ");
        sb.append("mSampleInterval=").append(this.h).append(", ");
        sb.append("mStopRequestTimeout=").append(this.i).append(", ");
        sb.append("mWifiFlags=").append(Integer.toBinaryString(this.k)).append(", ");
        sb.append("mCellOpFlags=").append(Integer.toBinaryString(this.l));
        sb.append("]");
        return sb.toString();
    }
}
