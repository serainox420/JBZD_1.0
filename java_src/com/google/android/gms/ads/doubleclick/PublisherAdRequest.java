package com.google.android.gms.ads.doubleclick;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.ads.mediation.MediationAdapter;
import com.google.android.gms.ads.mediation.NetworkExtras;
import com.google.android.gms.ads.mediation.customevent.CustomEvent;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.internal.zzfe;
import java.util.Date;
import java.util.List;
import java.util.Set;
/* loaded from: classes.dex */
public final class PublisherAdRequest {
    public static final String DEVICE_ID_EMULATOR = "B3EEABB8EE11C2BE770B684D95219ECB";
    public static final int ERROR_CODE_INTERNAL_ERROR = 0;
    public static final int ERROR_CODE_INVALID_REQUEST = 1;
    public static final int ERROR_CODE_NETWORK_ERROR = 2;
    public static final int ERROR_CODE_NO_FILL = 3;
    public static final int GENDER_FEMALE = 2;
    public static final int GENDER_MALE = 1;
    public static final int GENDER_UNKNOWN = 0;
    private final zzfe zzrz;

    /* loaded from: classes.dex */
    public static final class Builder {
        private final zzfe.zza zzrA = new zzfe.zza();

        public Builder addCategoryExclusion(String str) {
            this.zzrA.zzR(str);
            return this;
        }

        public Builder addCustomEventExtrasBundle(Class<? extends CustomEvent> cls, Bundle bundle) {
            this.zzrA.zzb(cls, bundle);
            return this;
        }

        public Builder addCustomTargeting(String str, String str2) {
            this.zzrA.zzf(str, str2);
            return this;
        }

        public Builder addCustomTargeting(String str, List<String> list) {
            if (list != null) {
                this.zzrA.zzf(str, TextUtils.join(",", list));
            }
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
            return this;
        }

        public Builder addTestDevice(String str) {
            this.zzrA.zzM(str);
            return this;
        }

        public PublisherAdRequest build() {
            return new PublisherAdRequest(this);
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

        @Deprecated
        public Builder setManualImpressionsEnabled(boolean z) {
            this.zzrA.setManualImpressionsEnabled(z);
            return this;
        }

        public Builder setPublisherProvidedId(String str) {
            this.zzrA.zzP(str);
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

    private PublisherAdRequest(Builder builder) {
        this.zzrz = new zzfe(builder.zzrA);
    }

    public static void updateCorrelator() {
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

    public Bundle getCustomTargeting() {
        return this.zzrz.getCustomTargeting();
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

    public boolean getManualImpressionsEnabled() {
        return this.zzrz.getManualImpressionsEnabled();
    }

    @Deprecated
    public <T extends NetworkExtras> T getNetworkExtras(Class<T> cls) {
        return (T) this.zzrz.getNetworkExtras(cls);
    }

    public <T extends MediationAdapter> Bundle getNetworkExtrasBundle(Class<T> cls) {
        return this.zzrz.getNetworkExtrasBundle(cls);
    }

    public String getPublisherProvidedId() {
        return this.zzrz.getPublisherProvidedId();
    }

    public boolean isTestDevice(Context context) {
        return this.zzrz.isTestDevice(context);
    }

    public zzfe zzbp() {
        return this.zzrz;
    }
}
