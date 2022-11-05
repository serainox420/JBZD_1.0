package com.google.android.gms.wearable;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.zzaa;
/* loaded from: classes2.dex */
public class ConnectionConfiguration extends com.google.android.gms.common.internal.safeparcel.zza implements ReflectedParcelable {
    public static final Parcelable.Creator<ConnectionConfiguration> CREATOR = new zzg();
    private final String mName;
    private final int zzaLu;
    private final String zzaSq;
    private boolean zzagx;
    private final int zzakD;
    private final boolean zzbSP;
    private String zzbSQ;
    private boolean zzbSR;
    private String zzbSS;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ConnectionConfiguration(String str, String str2, int i, int i2, boolean z, boolean z2, String str3, boolean z3, String str4) {
        this.mName = str;
        this.zzaSq = str2;
        this.zzakD = i;
        this.zzaLu = i2;
        this.zzbSP = z;
        this.zzagx = z2;
        this.zzbSQ = str3;
        this.zzbSR = z3;
        this.zzbSS = str4;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof ConnectionConfiguration)) {
            return false;
        }
        ConnectionConfiguration connectionConfiguration = (ConnectionConfiguration) obj;
        return zzaa.equal(this.mName, connectionConfiguration.mName) && zzaa.equal(this.zzaSq, connectionConfiguration.zzaSq) && zzaa.equal(Integer.valueOf(this.zzakD), Integer.valueOf(connectionConfiguration.zzakD)) && zzaa.equal(Integer.valueOf(this.zzaLu), Integer.valueOf(connectionConfiguration.zzaLu)) && zzaa.equal(Boolean.valueOf(this.zzbSP), Boolean.valueOf(connectionConfiguration.zzbSP)) && zzaa.equal(Boolean.valueOf(this.zzbSR), Boolean.valueOf(connectionConfiguration.zzbSR));
    }

    public String getAddress() {
        return this.zzaSq;
    }

    public String getName() {
        return this.mName;
    }

    public String getNodeId() {
        return this.zzbSS;
    }

    public int getRole() {
        return this.zzaLu;
    }

    public int getType() {
        return this.zzakD;
    }

    public int hashCode() {
        return zzaa.hashCode(this.mName, this.zzaSq, Integer.valueOf(this.zzakD), Integer.valueOf(this.zzaLu), Boolean.valueOf(this.zzbSP), Boolean.valueOf(this.zzbSR));
    }

    public boolean isConnected() {
        return this.zzagx;
    }

    public boolean isEnabled() {
        return this.zzbSP;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("ConnectionConfiguration[ ");
        String valueOf = String.valueOf(this.mName);
        sb.append(valueOf.length() != 0 ? "mName=".concat(valueOf) : new String("mName="));
        String valueOf2 = String.valueOf(this.zzaSq);
        sb.append(valueOf2.length() != 0 ? ", mAddress=".concat(valueOf2) : new String(", mAddress="));
        sb.append(new StringBuilder(19).append(", mType=").append(this.zzakD).toString());
        sb.append(new StringBuilder(19).append(", mRole=").append(this.zzaLu).toString());
        sb.append(new StringBuilder(16).append(", mEnabled=").append(this.zzbSP).toString());
        sb.append(new StringBuilder(20).append(", mIsConnected=").append(this.zzagx).toString());
        String valueOf3 = String.valueOf(this.zzbSQ);
        sb.append(valueOf3.length() != 0 ? ", mPeerNodeId=".concat(valueOf3) : new String(", mPeerNodeId="));
        sb.append(new StringBuilder(21).append(", mBtlePriority=").append(this.zzbSR).toString());
        String valueOf4 = String.valueOf(this.zzbSS);
        sb.append(valueOf4.length() != 0 ? ", mNodeId=".concat(valueOf4) : new String(", mNodeId="));
        sb.append("]");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzg.zza(this, parcel, i);
    }

    public String zzUe() {
        return this.zzbSQ;
    }

    public boolean zzUf() {
        return this.zzbSR;
    }
}
