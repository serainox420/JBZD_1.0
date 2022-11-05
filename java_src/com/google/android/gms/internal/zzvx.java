package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.awareness.state.BeaconState;
import com.google.android.gms.internal.zzbwo;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes2.dex */
public final class zzvx extends com.google.android.gms.common.internal.safeparcel.zza implements BeaconState {
    public static final Parcelable.Creator<zzvx> CREATOR = new zzvy();
    private final ArrayList<zza> zzamb;

    /* loaded from: classes2.dex */
    public static final class zza extends com.google.android.gms.common.internal.safeparcel.zza implements BeaconState.BeaconInfo {
        public static final Parcelable.Creator<zza> CREATOR = new zzvw();
        private final String zzUA;
        private final String zzamc;
        private final byte[] zzamd;

        public zza(String str, String str2, byte[] bArr) {
            this.zzamc = com.google.android.gms.common.internal.zzac.zzdr(str);
            this.zzUA = com.google.android.gms.common.internal.zzac.zzdr(str2);
            this.zzamd = bArr;
        }

        @Override // com.google.android.gms.awareness.state.BeaconState.BeaconInfo
        public byte[] getContent() {
            return this.zzamd;
        }

        @Override // com.google.android.gms.awareness.state.BeaconState.BeaconInfo
        public String getNamespace() {
            return this.zzamc;
        }

        @Override // com.google.android.gms.awareness.state.BeaconState.BeaconInfo
        public String getType() {
            return this.zzUA;
        }

        public String toString() {
            String str = this.zzamd == null ? "<null>" : new String(this.zzamd);
            String str2 = this.zzamc;
            String str3 = this.zzUA;
            return new StringBuilder(String.valueOf(str2).length() + 6 + String.valueOf(str3).length() + String.valueOf(str).length()).append("(").append(str2).append(", ").append(str3).append(", ").append(str).append(")").toString();
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            zzvw.zza(this, parcel, i);
        }
    }

    /* loaded from: classes2.dex */
    public static class zzb extends BeaconState.TypeFilter {
        public static final Parcelable.Creator<zzb> CREATOR = new zzws();
        private final zzbwo.zza zzame;

        public zzb(String str, String str2) {
            this.zzame = new zzbwo.zza();
            this.zzame.zzaGP = com.google.android.gms.common.internal.zzac.zzdr(str);
            this.zzame.type = com.google.android.gms.common.internal.zzac.zzdr(str2);
        }

        public zzb(String str, String str2, byte[] bArr) {
            this.zzame = new zzbwo.zza();
            this.zzame.zzaGP = com.google.android.gms.common.internal.zzac.zzdr(str);
            this.zzame.type = com.google.android.gms.common.internal.zzac.zzdr(str2);
            this.zzame.content = (byte[]) com.google.android.gms.common.internal.zzac.zzw(bArr);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public zzb(byte[] bArr) {
            zzbwo.zza zzaVar = null;
            try {
                zzaVar = zzbwo.zza.zzab(bArr);
            } catch (zzbxs e) {
                zzcf.zzd("BeaconStateImpl", "Could not deserialize BeaconFence.BeaconTypeFilter");
            }
            this.zzame = zzaVar;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof zzb)) {
                return false;
            }
            zzb zzbVar = (zzb) obj;
            return TextUtils.equals(getNamespace(), zzbVar.getNamespace()) && TextUtils.equals(getType(), zzbVar.getType()) && Arrays.equals(getContent(), zzbVar.getContent());
        }

        public byte[] getContent() {
            if (this.zzame == null || this.zzame.content == null || this.zzame.content.length == 0) {
                return null;
            }
            return this.zzame.content;
        }

        public String getNamespace() {
            if (this.zzame == null) {
                return null;
            }
            return this.zzame.zzaGP;
        }

        public String getType() {
            if (this.zzame == null) {
                return null;
            }
            return this.zzame.type;
        }

        public int hashCode() {
            int i = 0;
            Object[] objArr = new Object[3];
            objArr[0] = getNamespace();
            objArr[1] = getType();
            if (getContent() != null) {
                i = Arrays.hashCode(getContent());
            }
            objArr[2] = Integer.valueOf(i);
            return com.google.android.gms.common.internal.zzaa.hashCode(objArr);
        }

        public String toString() {
            String valueOf = String.valueOf(getNamespace());
            String valueOf2 = String.valueOf(getType());
            String str = getContent() == null ? "null" : new String(getContent());
            return new StringBuilder(String.valueOf(valueOf).length() + 4 + String.valueOf(valueOf2).length() + String.valueOf(str).length()).append("(").append(valueOf).append(",").append(valueOf2).append(",").append(str).append(")").toString();
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            zzws.zza(this, parcel, i);
        }

        public zzbwo.zza zzrK() {
            return this.zzame;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public byte[] zzrL() {
            return zzbxt.zzf(this.zzame);
        }
    }

    public zzvx(ArrayList<zza> arrayList) {
        this.zzamb = arrayList;
    }

    @Override // com.google.android.gms.awareness.state.BeaconState
    public List<BeaconState.BeaconInfo> getBeaconInfo() {
        return this.zzamb;
    }

    public String toString() {
        if (this.zzamb == null || this.zzamb.isEmpty()) {
            return "BeaconState: empty";
        }
        StringBuilder sb = new StringBuilder();
        sb.append("BeaconState: ");
        Iterator<zza> it = this.zzamb.iterator();
        while (it.hasNext()) {
            sb.append(it.next());
        }
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzvy.zza(this, parcel, i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ArrayList<zza> zzrJ() {
        return this.zzamb;
    }
}
