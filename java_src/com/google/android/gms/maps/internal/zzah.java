package com.google.android.gms.maps.internal;

import android.os.Bundle;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public final class zzah {
    private zzah() {
    }

    public static void zza(Bundle bundle, String str, Parcelable parcelable) {
        bundle.setClassLoader(zzah.class.getClassLoader());
        Bundle bundle2 = bundle.getBundle("map_state");
        if (bundle2 == null) {
            bundle2 = new Bundle();
        }
        bundle2.setClassLoader(zzah.class.getClassLoader());
        bundle2.putParcelable(str, parcelable);
        bundle.putBundle("map_state", bundle2);
    }

    public static void zzd(Bundle bundle, Bundle bundle2) {
        if (bundle == null || bundle2 == null) {
            return;
        }
        Parcelable zzh = zzh(bundle, "MapOptions");
        if (zzh != null) {
            zza(bundle2, "MapOptions", zzh);
        }
        Parcelable zzh2 = zzh(bundle, "StreetViewPanoramaOptions");
        if (zzh2 != null) {
            zza(bundle2, "StreetViewPanoramaOptions", zzh2);
        }
        Parcelable zzh3 = zzh(bundle, "camera");
        if (zzh3 != null) {
            zza(bundle2, "camera", zzh3);
        }
        if (bundle.containsKey("position")) {
            bundle2.putString("position", bundle.getString("position"));
        }
        if (!bundle.containsKey("com.google.android.wearable.compat.extra.LOWBIT_AMBIENT")) {
            return;
        }
        bundle2.putBoolean("com.google.android.wearable.compat.extra.LOWBIT_AMBIENT", bundle.getBoolean("com.google.android.wearable.compat.extra.LOWBIT_AMBIENT", false));
    }

    public static <T extends Parcelable> T zzh(Bundle bundle, String str) {
        if (bundle == null) {
            return null;
        }
        bundle.setClassLoader(zzah.class.getClassLoader());
        Bundle bundle2 = bundle.getBundle("map_state");
        if (bundle2 == null) {
            return null;
        }
        bundle2.setClassLoader(zzah.class.getClassLoader());
        return (T) bundle2.getParcelable(str);
    }
}
