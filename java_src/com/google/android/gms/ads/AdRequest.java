package com.google.android.gms.ads;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.mediation.MediationAdapter;
import com.google.android.gms.ads.mediation.NetworkExtras;
import com.google.android.gms.ads.mediation.customevent.CustomEvent;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.internal.zzfe;
import java.util.Date;
import java.util.Set;
/* loaded from: classes.dex */
public final class AdRequest {
    public static final String DEVICE_ID_EMULATOR = "B3EEABB8EE11C2BE770B684D95219ECB";
    public static final int ERROR_CODE_INTERNAL_ERROR = 0;
    public static final int ERROR_CODE_INVALID_REQUEST = 1;
    public static final int ERROR_CODE_NETWORK_ERROR = 2;
    public static final int ERROR_CODE_NO_FILL = 3;
    public static final int GENDER_FEMALE = 2;
    public static final int GENDER_MALE = 1;
    public static final int GENDER_UNKNOWN = 0;
    public static final int MAX_CONTENT_URL_LENGTH = 512;
    private final zzfe zzrz;

    /* loaded from: classes2.dex */
    public static final class Builder {
        private final zzfe.zza zzrA = new zzfe.zza();

        public Builder() {
            this.zzrA.zzM("B3EEABB8EE11C2BE770B684D95219ECB");
        }

        public Builder addCustomEventExtrasBundle(Class<? extends CustomEvent> cls, Bundle bundle) {
            this.zzrA.zzb(cls, bundle);
            return this;
        }

        public Builder addKeyword(String str) {
            this.zzrA.zzL(str);
            return this;
        }

        public Builder addNetworkExtras(NetworkExtras networkExtras) {
            this.zzrA.zza(networkExtras);
            return this;
        }

        public Builder addNetworkExtrasBundle(Class<? extends MediationAdapter> cls, Bundle bundle) {
            this.zzrA.zza(cls, bundle);
            if (cls.equals(AdMobAdapter.class) && bundle.getBoolean("_emulatorLiveAds")) {
                this.zzrA.zzN("B3EEABB8EE11C2BE770B684D95219ECB");
            }
            return this;
        }

        public Builder addTestDevice(String str) {
            this.zzrA.zzM(str);
            return this;
        }

        public AdRequest build() {
            return new AdRequest(this);
        }

        public Builder setBirthday(Date date) {
            this.zzrA.zza(date);
            return this;
        }

        public Builder setContentUrl(String str) {
            zzac.zzb(str, "Content URL must be non-null.");
            zzac.zzh(str, "Content URL must be non-empty.");
            zzac.zzb(str.length() <= 512, "Content URL must not exceed %d in length.  Provided length was %d.", 512, Integer.valueOf(str.length()));
            this.zzrA.zzO(str);
            return this;
        }

        public Builder setGender(int i) {
            this.zzrA.zzy(i);
            return this;
        }

        public Builder setIsDesignedForFamilies(boolean z) {
            this.zzrA.zzp(z);
            return this;
        }

        public Builder setLocation(Location location) {
            this.zzrA.zzb(location);
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

    private AdRequest(Builder builder) {
        this.zzrz = new zzfe(builder.zzrA);
    }

    public Date getBirthday() {
        return this.zzrz.getBirthday();
    }

    public String getContentUrl() {
        return this.zzrz.getContentUrl();
    }

    public <T extends CustomEvent> Bundle getCustomEventExtrasBundle(Class<T> cls) {
        return this.zzrz.getCustomEventExtrasBundle(cls);
    }

    public int getGender() {
        return this.zzrz.getGender();
    }

    public Set<String> getKeywords() {
        return this.zzrz.getKeywords();
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

    public boolean isTestDevice(Context context) {
        return this.zzrz.isTestDevice(context);
    }

    public zzfe zzbp() {
        return this.zzrz;
    }
}
