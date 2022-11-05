package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.zzub;
/* loaded from: classes2.dex */
public class zztt extends com.google.android.gms.common.internal.safeparcel.zza {
    public final String zzahm;
    final zzub zzahn;
    public final int zzaho;
    public final byte[] zzahp;
    public static final int zzahk = Integer.parseInt("-1");
    public static final Parcelable.Creator<zztt> CREATOR = new zztu();
    private static final zzub zzahl = new zzub.zza("SsbContext").zzZ(true).zzcn("blob").zzqH();

    public zztt(String str, zzub zzubVar) {
        this(str, zzubVar, zzahk, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zztt(String str, zzub zzubVar, int i, byte[] bArr) {
        com.google.android.gms.common.internal.zzac.zzb(i == zzahk || zzua.zzaP(i) != null, new StringBuilder(32).append("Invalid section type ").append(i).toString());
        this.zzahm = str;
        this.zzahn = zzubVar;
        this.zzaho = i;
        this.zzahp = bArr;
        String zzqF = zzqF();
        if (zzqF != null) {
            throw new IllegalArgumentException(zzqF);
        }
    }

    public zztt(String str, zzub zzubVar, String str2) {
        this(str, zzubVar, zzua.zzcm(str2), null);
    }

    public zztt(byte[] bArr, zzub zzubVar) {
        this(null, zzubVar, zzahk, bArr);
    }

    public static zztt zzl(byte[] bArr) {
        return new zztt(bArr, zzahl);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zztu.zza(this, parcel, i);
    }

    public String zzqF() {
        if (this.zzaho != zzahk && zzua.zzaP(this.zzaho) == null) {
            return new StringBuilder(32).append("Invalid section type ").append(this.zzaho).toString();
        } else if (this.zzahm != null && this.zzahp != null) {
            return "Both content and blobContent set";
        } else {
            return null;
        }
    }
}
