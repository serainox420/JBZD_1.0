package com.google.android.gms.location.places;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.common.internal.zzac;
/* loaded from: classes2.dex */
public class PlaceReport extends com.google.android.gms.common.internal.safeparcel.zza implements ReflectedParcelable {
    public static final Parcelable.Creator<PlaceReport> CREATOR = new zzl();
    private final String mTag;
    private final String zzacO;
    final int zzaiI;
    private final String zzblE;

    /* JADX INFO: Access modifiers changed from: package-private */
    public PlaceReport(int i, String str, String str2, String str3) {
        this.zzaiI = i;
        this.zzblE = str;
        this.mTag = str2;
        this.zzacO = str3;
    }

    public static PlaceReport create(String str, String str2) {
        return zzj(str, str2, "unknown");
    }

    private static boolean zzeU(String str) {
        char c = 65535;
        switch (str.hashCode()) {
            case -1436706272:
                if (str.equals("inferredGeofencing")) {
                    c = 2;
                    break;
                }
                break;
            case -1194968642:
                if (str.equals("userReported")) {
                    c = 1;
                    break;
                }
                break;
            case -284840886:
                if (str.equals("unknown")) {
                    c = 0;
                    break;
                }
                break;
            case -262743844:
                if (str.equals("inferredReverseGeocoding")) {
                    c = 4;
                    break;
                }
                break;
            case 1164924125:
                if (str.equals("inferredSnappedToRoad")) {
                    c = 5;
                    break;
                }
                break;
            case 1287171955:
                if (str.equals("inferredRadioSignals")) {
                    c = 3;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
                return true;
            default:
                return false;
        }
    }

    public static PlaceReport zzj(String str, String str2, String str3) {
        zzac.zzw(str);
        zzac.zzdr(str2);
        zzac.zzdr(str3);
        zzac.zzb(zzeU(str3), "Invalid source");
        return new PlaceReport(1, str, str2, str3);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof PlaceReport)) {
            return false;
        }
        PlaceReport placeReport = (PlaceReport) obj;
        return zzaa.equal(this.zzblE, placeReport.zzblE) && zzaa.equal(this.mTag, placeReport.mTag) && zzaa.equal(this.zzacO, placeReport.zzacO);
    }

    public String getPlaceId() {
        return this.zzblE;
    }

    public String getSource() {
        return this.zzacO;
    }

    public String getTag() {
        return this.mTag;
    }

    public int hashCode() {
        return zzaa.hashCode(this.zzblE, this.mTag, this.zzacO);
    }

    public String toString() {
        zzaa.zza zzv = zzaa.zzv(this);
        zzv.zzg("placeId", this.zzblE);
        zzv.zzg("tag", this.mTag);
        if (!"unknown".equals(this.zzacO)) {
            zzv.zzg("source", this.zzacO);
        }
        return zzv.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzl.zza(this, parcel, i);
    }
}
