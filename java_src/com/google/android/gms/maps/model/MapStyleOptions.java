package com.google.android.gms.maps.model;

import android.content.Context;
import android.content.res.Resources;
import android.os.Parcel;
import android.os.Parcelable;
import java.io.IOException;
/* loaded from: classes2.dex */
public final class MapStyleOptions extends com.google.android.gms.common.internal.safeparcel.zza {
    private String zzbpA;
    private static final String TAG = MapStyleOptions.class.getSimpleName();
    public static final Parcelable.Creator<MapStyleOptions> CREATOR = new zzg();

    public MapStyleOptions(String str) {
        this.zzbpA = str;
    }

    public static MapStyleOptions loadRawResourceStyle(Context context, int i) throws Resources.NotFoundException {
        try {
            return new MapStyleOptions(new String(com.google.android.gms.common.util.zzp.zzj(context.getResources().openRawResource(i)), "UTF-8"));
        } catch (IOException e) {
            String valueOf = String.valueOf(e);
            throw new Resources.NotFoundException(new StringBuilder(String.valueOf(valueOf).length() + 37).append("Failed to read resource ").append(i).append(": ").append(valueOf).toString());
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzg.zza(this, parcel, i);
    }

    public String zzJL() {
        return this.zzbpA;
    }
}
