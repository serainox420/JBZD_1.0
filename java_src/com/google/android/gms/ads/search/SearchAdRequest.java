package com.google.android.gms.ads.search;

import android.content.Context;
import android.graphics.Color;
import android.location.Location;
import android.os.Bundle;
import com.google.android.gms.ads.mediation.MediationAdapter;
import com.google.android.gms.ads.mediation.NetworkExtras;
import com.google.android.gms.ads.mediation.customevent.CustomEvent;
import com.google.android.gms.internal.zzfe;
/* loaded from: classes.dex */
public final class SearchAdRequest {
    public static final int BORDER_TYPE_DASHED = 1;
    public static final int BORDER_TYPE_DOTTED = 2;
    public static final int BORDER_TYPE_NONE = 0;
    public static final int BORDER_TYPE_SOLID = 3;
    public static final int CALL_BUTTON_COLOR_DARK = 2;
    public static final int CALL_BUTTON_COLOR_LIGHT = 0;
    public static final int CALL_BUTTON_COLOR_MEDIUM = 1;
    public static final String DEVICE_ID_EMULATOR = "B3EEABB8EE11C2BE770B684D95219ECB";
    public static final int ERROR_CODE_INTERNAL_ERROR = 0;
    public static final int ERROR_CODE_INVALID_REQUEST = 1;
    public static final int ERROR_CODE_NETWORK_ERROR = 2;
    public static final int ERROR_CODE_NO_FILL = 3;
    private final int mBackgroundColor;
    private final int zzabb;
    private final int zzabc;
    private final int zzabd;
    private final int zzabe;
    private final int zzabf;
    private final int zzabg;
    private final int zzabh;
    private final String zzabi;
    private final int zzabj;
    private final String zzabk;
    private final int zzabl;
    private final int zzabm;
    private final zzfe zzrz;
    private final String zzuB;

    /* loaded from: classes2.dex */
    public static final class Builder {
        private int mBackgroundColor;
        private int zzabb;
        private int zzabc;
        private int zzabd;
        private int zzabe;
        private int zzabf;
        private int zzabh;
        private String zzabi;
        private int zzabj;
        private String zzabk;
        private int zzabl;
        private int zzabm;
        private String zzuB;
        private final zzfe.zza zzrA = new zzfe.zza();
        private int zzabg = 0;

        public Builder addCustomEventExtrasBundle(Class<? extends CustomEvent> cls, Bundle bundle) {
            this.zzrA.zzb(cls, bundle);
            return this;
        }

        public Builder addNetworkExtras(NetworkExtras networkExtras) {
            this.zzrA.zza(networkExtras);
            return this;
        }

        public Builder addNetworkExtrasBundle(Class<? extends MediationAdapter> cls, Bundle bundle) {
            this.zzrA.zza(cls, bundle);
            return this;
        }

        public Builder addTestDevice(String str) {
            this.zzrA.zzM(str);
            return this;
        }

        public SearchAdRequest build() {
            return new SearchAdRequest(this);
        }

        public Builder setAnchorTextColor(int i) {
            this.zzabb = i;
            return this;
        }

        public Builder setBackgroundColor(int i) {
            this.mBackgroundColor = i;
            this.zzabc = Color.argb(0, 0, 0, 0);
            this.zzabd = Color.argb(0, 0, 0, 0);
            return this;
        }

        public Builder setBackgroundGradient(int i, int i2) {
            this.mBackgroundColor = Color.argb(0, 0, 0, 0);
            this.zzabc = i2;
            this.zzabd = i;
            return this;
        }

        public Builder setBorderColor(int i) {
            this.zzabe = i;
            return this;
        }

        public Builder setBorderThickness(int i) {
            this.zzabf = i;
            return this;
        }

        public Builder setBorderType(int i) {
            this.zzabg = i;
            return this;
        }

        public Builder setCallButtonColor(int i) {
            this.zzabh = i;
            return this;
        }

        public Builder setCustomChannels(String str) {
            this.zzabi = str;
            return this;
        }

        public Builder setDescriptionTextColor(int i) {
            this.zzabj = i;
            return this;
        }

        public Builder setFontFace(String str) {
            this.zzabk = str;
            return this;
        }

        public Builder setHeaderTextColor(int i) {
            this.zzabl = i;
            return this;
        }

        public Builder setHeaderTextSize(int i) {
            this.zzabm = i;
            return this;
        }

        public Builder setLocation(Location location) {
            this.zzrA.zzb(location);
            return this;
        }

        public Builder setQuery(String str) {
            this.zzuB = str;
            return this;
        }

        public Builder setRequestAgent(String str) {
            this.zzrA.zzQ(str);
            return this;
        }

        public Builder tagForChildDirectedTreatment(boolean z) {
            this.zzrA.zzo(z);
            return this;
        }
    }

    private SearchAdRequest(Builder builder) {
        this.zzabb = builder.zzabb;
        this.mBackgroundColor = builder.mBackgroundColor;
        this.zzabc = builder.zzabc;
        this.zzabd = builder.zzabd;
        this.zzabe = builder.zzabe;
        this.zzabf = builder.zzabf;
        this.zzabg = builder.zzabg;
        this.zzabh = builder.zzabh;
        this.zzabi = builder.zzabi;
        this.zzabj = builder.zzabj;
        this.zzabk = builder.zzabk;
        this.zzabl = builder.zzabl;
        this.zzabm = builder.zzabm;
        this.zzuB = builder.zzuB;
        this.zzrz = new zzfe(builder.zzrA, this);
    }

    public int getAnchorTextColor() {
        return this.zzabb;
    }

    public int getBackgroundColor() {
        return this.mBackgroundColor;
    }

    public int getBackgroundGradientBottom() {
        return this.zzabc;
    }

    public int getBackgroundGradientTop() {
        return this.zzabd;
    }

    public int getBorderColor() {
        return this.zzabe;
    }

    public int getBorderThickness() {
        return this.zzabf;
    }

    public int getBorderType() {
        return this.zzabg;
    }

    public int getCallButtonColor() {
        return this.zzabh;
    }

    public String getCustomChannels() {
        return this.zzabi;
    }

    public <T extends CustomEvent> Bundle getCustomEventExtrasBundle(Class<T> cls) {
        return this.zzrz.getCustomEventExtrasBundle(cls);
    }

    public int getDescriptionTextColor() {
        return this.zzabj;
    }

    public String getFontFace() {
        return this.zzabk;
    }

    public int getHeaderTextColor() {
        return this.zzabl;
    }

    public int getHeaderTextSize() {
        return this.zzabm;
    }

    public Location getLocation() {
        return this.zzrz.getLocation();
    }

    @Deprecated
    public <T extends NetworkExtras> T getNetworkExtras(Class<T> cls) {
        return (T) this.zzrz.getNetworkExtras(cls);
    }

    public <T extends MediationAdapter> Bundle getNetworkExtrasBundle(Class<T> cls) {
        return this.zzrz.getNetworkExtrasBundle(cls);
    }

    public String getQuery() {
        return this.zzuB;
    }

    public boolean isTestDevice(Context context) {
        return this.zzrz.isTestDevice(context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfe zzbp() {
        return this.zzrz;
    }
}
