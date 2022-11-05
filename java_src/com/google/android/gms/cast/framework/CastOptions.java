package com.google.android.gms.cast.framework;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.cast.LaunchOptions;
import com.google.android.gms.cast.framework.media.CastMediaOptions;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes2.dex */
public class CastOptions extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<CastOptions> CREATOR = new zzb();
    private final LaunchOptions zzaog;
    private final String zzaqc;
    private final List<String> zzaqd;
    private final boolean zzaqe;
    private final boolean zzaqf;
    private final CastMediaOptions zzaqg;
    private final boolean zzaqh;
    private final double zzaqi;

    /* loaded from: classes2.dex */
    public static final class Builder {
        private String zzaqc;
        private boolean zzaqe;
        private List<String> zzaqd = new ArrayList();
        private LaunchOptions zzaog = new LaunchOptions();
        private boolean zzaqf = true;
        private CastMediaOptions zzaqg = new CastMediaOptions.Builder().build();
        private boolean zzaqh = true;
        private double zzaqi = 0.05000000074505806d;

        public CastOptions build() {
            return new CastOptions(this.zzaqc, this.zzaqd, this.zzaqe, this.zzaog, this.zzaqf, this.zzaqg, this.zzaqh, this.zzaqi);
        }

        public Builder setCastMediaOptions(CastMediaOptions castMediaOptions) {
            this.zzaqg = castMediaOptions;
            return this;
        }

        public Builder setEnableReconnectionService(boolean z) {
            this.zzaqh = z;
            return this;
        }

        public Builder setLaunchOptions(LaunchOptions launchOptions) {
            this.zzaog = launchOptions;
            return this;
        }

        public Builder setReceiverApplicationId(String str) {
            this.zzaqc = str;
            return this;
        }

        public Builder setResumeSavedSession(boolean z) {
            this.zzaqf = z;
            return this;
        }

        public Builder setStopReceiverApplicationWhenEndingSession(boolean z) {
            this.zzaqe = z;
            return this;
        }

        public Builder setSupportedNamespaces(List<String> list) {
            this.zzaqd = list;
            return this;
        }

        public Builder setVolumeDeltaBeforeIceCreamSandwich(double d) throws IllegalArgumentException {
            if (d <= 0.0d || d > 0.5d) {
                throw new IllegalArgumentException("volumeDelta must be greater than 0 and less or equal to 0.5");
            }
            this.zzaqi = d;
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public CastOptions(String str, List<String> list, boolean z, LaunchOptions launchOptions, boolean z2, CastMediaOptions castMediaOptions, boolean z3, double d) {
        this.zzaqc = TextUtils.isEmpty(str) ? "" : str;
        int size = list == null ? 0 : list.size();
        this.zzaqd = new ArrayList(size);
        if (size > 0) {
            this.zzaqd.addAll(list);
        }
        this.zzaqe = z;
        this.zzaog = launchOptions == null ? new LaunchOptions() : launchOptions;
        this.zzaqf = z2;
        this.zzaqg = castMediaOptions;
        this.zzaqh = z3;
        this.zzaqi = d;
    }

    public CastMediaOptions getCastMediaOptions() {
        return this.zzaqg;
    }

    public boolean getEnableReconnectionService() {
        return this.zzaqh;
    }

    public LaunchOptions getLaunchOptions() {
        return this.zzaog;
    }

    public String getReceiverApplicationId() {
        return this.zzaqc;
    }

    public boolean getResumeSavedSession() {
        return this.zzaqf;
    }

    public boolean getStopReceiverApplicationWhenEndingSession() {
        return this.zzaqe;
    }

    public List<String> getSupportedNamespaces() {
        return Collections.unmodifiableList(this.zzaqd);
    }

    public double getVolumeDeltaBeforeIceCreamSandwich() {
        return this.zzaqi;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzb.zza(this, parcel, i);
    }
}
