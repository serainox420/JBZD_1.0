package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.games.GamesActivityResultCodes;
import com.google.android.gms.internal.zzvx;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes2.dex */
public class zzwn extends com.google.android.gms.common.internal.safeparcel.zza {
    private final int zzamB;
    private final ArrayList<zzvx.zzb> zzamC;
    private static final int[] zzamA = {GamesActivityResultCodes.RESULT_SIGN_IN_FAILED, GamesActivityResultCodes.RESULT_LICENSE_FAILED, GamesActivityResultCodes.RESULT_APP_MISCONFIGURED, GamesActivityResultCodes.RESULT_LEFT_ROOM, GamesActivityResultCodes.RESULT_NETWORK_FAILURE, GamesActivityResultCodes.RESULT_SEND_REQUEST_FAILED, GamesActivityResultCodes.RESULT_INVALID_ROOM};
    public static final Parcelable.Creator<zzwn> CREATOR = new zzwo();

    public zzwn(int i, ArrayList<zzvx.zzb> arrayList) {
        this.zzamB = i;
        this.zzamC = arrayList;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzwn)) {
            return false;
        }
        zzwn zzwnVar = (zzwn) obj;
        if (this.zzamB != zzwnVar.zzrZ()) {
            return false;
        }
        if ((this.zzamC == null) ^ (zzwnVar.zzsa() == null)) {
            return false;
        }
        if (this.zzamC != null) {
            if (this.zzamC.size() != zzwnVar.zzsa().size()) {
                return false;
            }
            Iterator<zzvx.zzb> it = this.zzamC.iterator();
            while (it.hasNext()) {
                if (!zzwnVar.zzsa().contains(it.next())) {
                    return false;
                }
            }
        }
        return true;
    }

    public int hashCode() {
        int i;
        if (this.zzamC != null) {
            Iterator<zzvx.zzb> it = this.zzamC.iterator();
            i = 0;
            while (it.hasNext()) {
                i = (it.next().hashCode() * 13) + i;
            }
        } else {
            i = 0;
        }
        return com.google.android.gms.common.internal.zzaa.hashCode(Integer.valueOf(this.zzamB), Integer.valueOf(i));
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzwo.zza(this, parcel, i);
    }

    public int zzrZ() {
        return this.zzamB;
    }

    public ArrayList<zzvx.zzb> zzsa() {
        return this.zzamC;
    }
}
