package com.google.android.gms.nearby.messages.internal;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.internal.ReflectedParcelable;
/* loaded from: classes2.dex */
public final class ClientAppContext extends com.google.android.gms.common.internal.safeparcel.zza implements ReflectedParcelable {
    public static final Parcelable.Creator<ClientAppContext> CREATOR = new zzd();
    final int versionCode;
    public final String zzbAH;
    public final String zzbAI;
    public final int zzbAJ;
    public final boolean zzbzJ;
    public final String zzbzL;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ClientAppContext(int i, String str, String str2, boolean z, int i2, String str3) {
        this.versionCode = i;
        this.zzbAH = str;
        if (str2 != null && !str2.isEmpty() && !str2.startsWith("0p:")) {
            Log.w("NearbyMessages", String.format("ClientAppContext: 0P identifier(%s) without 0P prefix(%s)", str2, "0p:"));
            String valueOf = String.valueOf("0p:");
            String valueOf2 = String.valueOf(str2);
            str2 = valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
        }
        this.zzbAI = str2;
        this.zzbzJ = z;
        this.zzbAJ = i2;
        this.zzbzL = str3;
    }

    public ClientAppContext(String str, String str2, boolean z) {
        this(str, str2, z, null, 0);
    }

    public ClientAppContext(String str, String str2, boolean z, String str3, int i) {
        this(1, str, str2, z, i, str3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final ClientAppContext zza(ClientAppContext clientAppContext, String str, String str2, boolean z) {
        if (clientAppContext != null) {
            return clientAppContext;
        }
        if (str != null || str2 != null) {
            return new ClientAppContext(str, str2, z);
        }
        return null;
    }

    private static boolean zzai(String str, String str2) {
        return TextUtils.isEmpty(str) ? TextUtils.isEmpty(str2) : str.equals(str2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ClientAppContext)) {
            return false;
        }
        ClientAppContext clientAppContext = (ClientAppContext) obj;
        return zzai(this.zzbAH, clientAppContext.zzbAH) && zzai(this.zzbAI, clientAppContext.zzbAI) && this.zzbzJ == clientAppContext.zzbzJ && zzai(this.zzbzL, clientAppContext.zzbzL) && this.zzbAJ == clientAppContext.zzbAJ;
    }

    public int hashCode() {
        return com.google.android.gms.common.internal.zzaa.hashCode(this.zzbAH, this.zzbAI, Boolean.valueOf(this.zzbzJ), this.zzbzL, Integer.valueOf(this.zzbAJ));
    }

    public String toString() {
        return String.format("{realClientPackageName: %s, zeroPartyIdentifier: %s, useRealClientApiKey: %b, apiKey: %s, callingContext: %d}", this.zzbAH, this.zzbAI, Boolean.valueOf(this.zzbzJ), this.zzbzL, Integer.valueOf(this.zzbAJ));
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzd.zza(this, parcel, i);
    }
}
