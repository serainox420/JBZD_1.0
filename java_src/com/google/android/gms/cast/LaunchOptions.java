package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.internal.zzyr;
import java.util.Locale;
/* loaded from: classes2.dex */
public class LaunchOptions extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<LaunchOptions> CREATOR = new zzh();
    private String zzacX;
    private boolean zzaof;

    /* loaded from: classes2.dex */
    public static final class Builder {
        private LaunchOptions zzaog = new LaunchOptions();

        public LaunchOptions build() {
            return this.zzaog;
        }

        public Builder setLocale(Locale locale) {
            this.zzaog.setLanguage(zzyr.zzb(locale));
            return this;
        }

        public Builder setRelaunchIfRunning(boolean z) {
            this.zzaog.setRelaunchIfRunning(z);
            return this;
        }
    }

    public LaunchOptions() {
        this(false, zzyr.zzb(Locale.getDefault()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public LaunchOptions(boolean z, String str) {
        this.zzaof = z;
        this.zzacX = str;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof LaunchOptions)) {
            return false;
        }
        LaunchOptions launchOptions = (LaunchOptions) obj;
        return this.zzaof == launchOptions.zzaof && zzyr.zza(this.zzacX, launchOptions.zzacX);
    }

    public String getLanguage() {
        return this.zzacX;
    }

    public boolean getRelaunchIfRunning() {
        return this.zzaof;
    }

    public int hashCode() {
        return zzaa.hashCode(Boolean.valueOf(this.zzaof), this.zzacX);
    }

    public void setLanguage(String str) {
        this.zzacX = str;
    }

    public void setRelaunchIfRunning(boolean z) {
        this.zzaof = z;
    }

    public String toString() {
        return String.format("LaunchOptions(relaunchIfRunning=%b, language=%s)", Boolean.valueOf(this.zzaof), this.zzacX);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzh.zza(this, parcel, i);
    }
}
