package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseArray;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.internal.zzacs;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
/* loaded from: classes2.dex */
public class zzacz extends zzact {
    public static final Parcelable.Creator<zzacz> CREATOR = new zzada();
    private final String mClassName;
    private final zzacw zzaHf;
    private final Parcel zzaHm;
    private final int zzaHn = 2;
    private int zzaHo;
    private int zzaHp;
    private final int zzaiI;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzacz(int i, Parcel parcel, zzacw zzacwVar) {
        this.zzaiI = i;
        this.zzaHm = (Parcel) com.google.android.gms.common.internal.zzac.zzw(parcel);
        this.zzaHf = zzacwVar;
        if (this.zzaHf == null) {
            this.mClassName = null;
        } else {
            this.mClassName = this.zzaHf.zzyF();
        }
        this.zzaHo = 2;
    }

    private static SparseArray<Map.Entry<String, zzacs.zza<?, ?>>> zzY(Map<String, zzacs.zza<?, ?>> map) {
        SparseArray<Map.Entry<String, zzacs.zza<?, ?>>> sparseArray = new SparseArray<>();
        for (Map.Entry<String, zzacs.zza<?, ?>> entry : map.entrySet()) {
            sparseArray.put(entry.getValue().zzyx(), entry);
        }
        return sparseArray;
    }

    private void zza(StringBuilder sb, int i, Object obj) {
        switch (i) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
                sb.append(obj);
                return;
            case 7:
                sb.append("\"").append(com.google.android.gms.common.util.zzq.zzdy(obj.toString())).append("\"");
                return;
            case 8:
                sb.append("\"").append(com.google.android.gms.common.util.zzc.zzq((byte[]) obj)).append("\"");
                return;
            case 9:
                sb.append("\"").append(com.google.android.gms.common.util.zzc.zzr((byte[]) obj));
                sb.append("\"");
                return;
            case 10:
                com.google.android.gms.common.util.zzr.zza(sb, (HashMap) obj);
                return;
            case 11:
                throw new IllegalArgumentException("Method does not accept concrete type.");
            default:
                throw new IllegalArgumentException(new StringBuilder(26).append("Unknown type = ").append(i).toString());
        }
    }

    private void zza(StringBuilder sb, zzacs.zza<?, ?> zzaVar, Parcel parcel, int i) {
        switch (zzaVar.zzyu()) {
            case 0:
                zzb(sb, zzaVar, zza(zzaVar, Integer.valueOf(com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, i))));
                return;
            case 1:
                zzb(sb, zzaVar, zza(zzaVar, com.google.android.gms.common.internal.safeparcel.zzb.zzk(parcel, i)));
                return;
            case 2:
                zzb(sb, zzaVar, zza(zzaVar, Long.valueOf(com.google.android.gms.common.internal.safeparcel.zzb.zzi(parcel, i))));
                return;
            case 3:
                zzb(sb, zzaVar, zza(zzaVar, Float.valueOf(com.google.android.gms.common.internal.safeparcel.zzb.zzl(parcel, i))));
                return;
            case 4:
                zzb(sb, zzaVar, zza(zzaVar, Double.valueOf(com.google.android.gms.common.internal.safeparcel.zzb.zzn(parcel, i))));
                return;
            case 5:
                zzb(sb, zzaVar, zza(zzaVar, com.google.android.gms.common.internal.safeparcel.zzb.zzp(parcel, i)));
                return;
            case 6:
                zzb(sb, zzaVar, zza(zzaVar, Boolean.valueOf(com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, i))));
                return;
            case 7:
                zzb(sb, zzaVar, zza(zzaVar, com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, i)));
                return;
            case 8:
            case 9:
                zzb(sb, zzaVar, zza(zzaVar, com.google.android.gms.common.internal.safeparcel.zzb.zzt(parcel, i)));
                return;
            case 10:
                zzb(sb, zzaVar, zza(zzaVar, zzr(com.google.android.gms.common.internal.safeparcel.zzb.zzs(parcel, i))));
                return;
            case 11:
                throw new IllegalArgumentException("Method does not accept concrete type.");
            default:
                throw new IllegalArgumentException(new StringBuilder(36).append("Unknown field out type = ").append(zzaVar.zzyu()).toString());
        }
    }

    private void zza(StringBuilder sb, String str, zzacs.zza<?, ?> zzaVar, Parcel parcel, int i) {
        sb.append("\"").append(str).append("\":");
        if (zzaVar.zzyA()) {
            zza(sb, zzaVar, parcel, i);
        } else {
            zzb(sb, zzaVar, parcel, i);
        }
    }

    private void zza(StringBuilder sb, Map<String, zzacs.zza<?, ?>> map, Parcel parcel) {
        SparseArray<Map.Entry<String, zzacs.zza<?, ?>>> zzY = zzY(map);
        sb.append('{');
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        boolean z = false;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            Map.Entry<String, zzacs.zza<?, ?>> entry = zzY.get(com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX));
            if (entry != null) {
                if (z) {
                    sb.append(",");
                }
                zza(sb, entry.getKey(), entry.getValue(), parcel, zzaX);
                z = true;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        sb.append('}');
    }

    private void zzb(StringBuilder sb, zzacs.zza<?, ?> zzaVar, Parcel parcel, int i) {
        if (zzaVar.zzyv()) {
            sb.append("[");
            switch (zzaVar.zzyu()) {
                case 0:
                    com.google.android.gms.common.util.zzb.zza(sb, com.google.android.gms.common.internal.safeparcel.zzb.zzw(parcel, i));
                    break;
                case 1:
                    com.google.android.gms.common.util.zzb.zza(sb, com.google.android.gms.common.internal.safeparcel.zzb.zzy(parcel, i));
                    break;
                case 2:
                    com.google.android.gms.common.util.zzb.zza(sb, com.google.android.gms.common.internal.safeparcel.zzb.zzx(parcel, i));
                    break;
                case 3:
                    com.google.android.gms.common.util.zzb.zza(sb, com.google.android.gms.common.internal.safeparcel.zzb.zzz(parcel, i));
                    break;
                case 4:
                    com.google.android.gms.common.util.zzb.zza(sb, com.google.android.gms.common.internal.safeparcel.zzb.zzA(parcel, i));
                    break;
                case 5:
                    com.google.android.gms.common.util.zzb.zza(sb, com.google.android.gms.common.internal.safeparcel.zzb.zzB(parcel, i));
                    break;
                case 6:
                    com.google.android.gms.common.util.zzb.zza(sb, com.google.android.gms.common.internal.safeparcel.zzb.zzv(parcel, i));
                    break;
                case 7:
                    com.google.android.gms.common.util.zzb.zza(sb, com.google.android.gms.common.internal.safeparcel.zzb.zzC(parcel, i));
                    break;
                case 8:
                case 9:
                case 10:
                    throw new UnsupportedOperationException("List of type BASE64, BASE64_URL_SAFE, or STRING_MAP is not supported");
                case 11:
                    Parcel[] zzG = com.google.android.gms.common.internal.safeparcel.zzb.zzG(parcel, i);
                    int length = zzG.length;
                    for (int i2 = 0; i2 < length; i2++) {
                        if (i2 > 0) {
                            sb.append(",");
                        }
                        zzG[i2].setDataPosition(0);
                        zza(sb, zzaVar.zzyC(), zzG[i2]);
                    }
                    break;
                default:
                    throw new IllegalStateException("Unknown field type out.");
            }
            sb.append("]");
            return;
        }
        switch (zzaVar.zzyu()) {
            case 0:
                sb.append(com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, i));
                return;
            case 1:
                sb.append(com.google.android.gms.common.internal.safeparcel.zzb.zzk(parcel, i));
                return;
            case 2:
                sb.append(com.google.android.gms.common.internal.safeparcel.zzb.zzi(parcel, i));
                return;
            case 3:
                sb.append(com.google.android.gms.common.internal.safeparcel.zzb.zzl(parcel, i));
                return;
            case 4:
                sb.append(com.google.android.gms.common.internal.safeparcel.zzb.zzn(parcel, i));
                return;
            case 5:
                sb.append(com.google.android.gms.common.internal.safeparcel.zzb.zzp(parcel, i));
                return;
            case 6:
                sb.append(com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, i));
                return;
            case 7:
                sb.append("\"").append(com.google.android.gms.common.util.zzq.zzdy(com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, i))).append("\"");
                return;
            case 8:
                sb.append("\"").append(com.google.android.gms.common.util.zzc.zzq(com.google.android.gms.common.internal.safeparcel.zzb.zzt(parcel, i))).append("\"");
                return;
            case 9:
                sb.append("\"").append(com.google.android.gms.common.util.zzc.zzr(com.google.android.gms.common.internal.safeparcel.zzb.zzt(parcel, i)));
                sb.append("\"");
                return;
            case 10:
                Bundle zzs = com.google.android.gms.common.internal.safeparcel.zzb.zzs(parcel, i);
                Set<String> keySet = zzs.keySet();
                keySet.size();
                sb.append("{");
                boolean z = true;
                for (String str : keySet) {
                    if (!z) {
                        sb.append(",");
                    }
                    sb.append("\"").append(str).append("\"");
                    sb.append(":");
                    sb.append("\"").append(com.google.android.gms.common.util.zzq.zzdy(zzs.getString(str))).append("\"");
                    z = false;
                }
                sb.append("}");
                return;
            case 11:
                Parcel zzF = com.google.android.gms.common.internal.safeparcel.zzb.zzF(parcel, i);
                zzF.setDataPosition(0);
                zza(sb, zzaVar.zzyC(), zzF);
                return;
            default:
                throw new IllegalStateException("Unknown field type out");
        }
    }

    private void zzb(StringBuilder sb, zzacs.zza<?, ?> zzaVar, Object obj) {
        if (zzaVar.zzyt()) {
            zzb(sb, zzaVar, (ArrayList) obj);
        } else {
            zza(sb, zzaVar.zzys(), obj);
        }
    }

    private void zzb(StringBuilder sb, zzacs.zza<?, ?> zzaVar, ArrayList<?> arrayList) {
        sb.append("[");
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            if (i != 0) {
                sb.append(",");
            }
            zza(sb, zzaVar.zzys(), arrayList.get(i));
        }
        sb.append("]");
    }

    public static HashMap<String, String> zzr(Bundle bundle) {
        HashMap<String, String> hashMap = new HashMap<>();
        for (String str : bundle.keySet()) {
            hashMap.put(str, bundle.getString(str));
        }
        return hashMap;
    }

    public int getVersionCode() {
        return this.zzaiI;
    }

    @Override // com.google.android.gms.internal.zzacs
    public String toString() {
        com.google.android.gms.common.internal.zzac.zzb(this.zzaHf, "Cannot convert to JSON on client side.");
        Parcel zzyH = zzyH();
        zzyH.setDataPosition(0);
        StringBuilder sb = new StringBuilder(100);
        zza(sb, this.zzaHf.zzdw(this.mClassName), zzyH);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzada.zza(this, parcel, i);
    }

    @Override // com.google.android.gms.internal.zzact, com.google.android.gms.internal.zzacs
    public Object zzds(String str) {
        throw new UnsupportedOperationException("Converting to JSON does not require this method.");
    }

    @Override // com.google.android.gms.internal.zzact, com.google.android.gms.internal.zzacs
    public boolean zzdt(String str) {
        throw new UnsupportedOperationException("Converting to JSON does not require this method.");
    }

    public Parcel zzyH() {
        switch (this.zzaHo) {
            case 0:
                this.zzaHp = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(this.zzaHm);
                com.google.android.gms.common.internal.safeparcel.zzc.zzJ(this.zzaHm, this.zzaHp);
                this.zzaHo = 2;
                break;
            case 1:
                com.google.android.gms.common.internal.safeparcel.zzc.zzJ(this.zzaHm, this.zzaHp);
                this.zzaHo = 2;
                break;
        }
        return this.zzaHm;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzacw zzyI() {
        switch (this.zzaHn) {
            case 0:
                return null;
            case 1:
                return this.zzaHf;
            case 2:
                return this.zzaHf;
            default:
                throw new IllegalStateException(new StringBuilder(34).append("Invalid creation type: ").append(this.zzaHn).toString());
        }
    }

    @Override // com.google.android.gms.internal.zzacs
    public Map<String, zzacs.zza<?, ?>> zzyr() {
        if (this.zzaHf == null) {
            return null;
        }
        return this.zzaHf.zzdw(this.mClassName);
    }
}
