package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.zzaa;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public abstract class zzacs {

    /* loaded from: classes2.dex */
    public static class zza<I, O> extends com.google.android.gms.common.internal.safeparcel.zza {
        public static final zzacu CREATOR = new zzacu();
        protected final int zzaGX;
        protected final boolean zzaGY;
        protected final int zzaGZ;
        protected final boolean zzaHa;
        protected final String zzaHb;
        protected final int zzaHc;
        protected final Class<? extends zzacs> zzaHd;
        protected final String zzaHe;
        private zzacw zzaHf;
        private zzb<I, O> zzaHg;
        private final int zzaiI;

        /* JADX INFO: Access modifiers changed from: package-private */
        public zza(int i, int i2, boolean z, int i3, boolean z2, String str, int i4, String str2, zzacn zzacnVar) {
            this.zzaiI = i;
            this.zzaGX = i2;
            this.zzaGY = z;
            this.zzaGZ = i3;
            this.zzaHa = z2;
            this.zzaHb = str;
            this.zzaHc = i4;
            if (str2 == null) {
                this.zzaHd = null;
                this.zzaHe = null;
            } else {
                this.zzaHd = zzacz.class;
                this.zzaHe = str2;
            }
            if (zzacnVar == null) {
                this.zzaHg = null;
            } else {
                this.zzaHg = (zzb<I, O>) zzacnVar.zzyp();
            }
        }

        protected zza(int i, boolean z, int i2, boolean z2, String str, int i3, Class<? extends zzacs> cls, zzb<I, O> zzbVar) {
            this.zzaiI = 1;
            this.zzaGX = i;
            this.zzaGY = z;
            this.zzaGZ = i2;
            this.zzaHa = z2;
            this.zzaHb = str;
            this.zzaHc = i3;
            this.zzaHd = cls;
            if (cls == null) {
                this.zzaHe = null;
            } else {
                this.zzaHe = cls.getCanonicalName();
            }
            this.zzaHg = zzbVar;
        }

        public static zza zza(String str, int i, zzb<?, ?> zzbVar, boolean z) {
            return new zza(7, z, 0, false, str, i, null, zzbVar);
        }

        public static <T extends zzacs> zza<T, T> zza(String str, int i, Class<T> cls) {
            return new zza<>(11, false, 11, false, str, i, cls, null);
        }

        public static <T extends zzacs> zza<ArrayList<T>, ArrayList<T>> zzb(String str, int i, Class<T> cls) {
            return new zza<>(11, true, 11, true, str, i, cls, null);
        }

        public static zza<Integer, Integer> zzk(String str, int i) {
            return new zza<>(0, false, 0, false, str, i, null, null);
        }

        public static zza<Boolean, Boolean> zzl(String str, int i) {
            return new zza<>(6, false, 6, false, str, i, null, null);
        }

        public static zza<String, String> zzm(String str, int i) {
            return new zza<>(7, false, 7, false, str, i, null, null);
        }

        public I convertBack(O o) {
            return this.zzaHg.convertBack(o);
        }

        public int getVersionCode() {
            return this.zzaiI;
        }

        public String toString() {
            zzaa.zza zzg = com.google.android.gms.common.internal.zzaa.zzv(this).zzg("versionCode", Integer.valueOf(this.zzaiI)).zzg("typeIn", Integer.valueOf(this.zzaGX)).zzg("typeInArray", Boolean.valueOf(this.zzaGY)).zzg("typeOut", Integer.valueOf(this.zzaGZ)).zzg("typeOutArray", Boolean.valueOf(this.zzaHa)).zzg("outputFieldName", this.zzaHb).zzg("safeParcelFieldId", Integer.valueOf(this.zzaHc)).zzg("concreteTypeName", zzyz());
            Class<? extends zzacs> zzyy = zzyy();
            if (zzyy != null) {
                zzg.zzg("concreteType.class", zzyy.getCanonicalName());
            }
            if (this.zzaHg != null) {
                zzg.zzg("converterName", this.zzaHg.getClass().getCanonicalName());
            }
            return zzg.toString();
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            zzacu.zza(this, parcel, i);
        }

        public void zza(zzacw zzacwVar) {
            this.zzaHf = zzacwVar;
        }

        public boolean zzyA() {
            return this.zzaHg != null;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public zzacn zzyB() {
            if (this.zzaHg == null) {
                return null;
            }
            return zzacn.zza(this.zzaHg);
        }

        public Map<String, zza<?, ?>> zzyC() {
            com.google.android.gms.common.internal.zzac.zzw(this.zzaHe);
            com.google.android.gms.common.internal.zzac.zzw(this.zzaHf);
            return this.zzaHf.zzdw(this.zzaHe);
        }

        public int zzys() {
            return this.zzaGX;
        }

        public boolean zzyt() {
            return this.zzaGY;
        }

        public int zzyu() {
            return this.zzaGZ;
        }

        public boolean zzyv() {
            return this.zzaHa;
        }

        public String zzyw() {
            return this.zzaHb;
        }

        public int zzyx() {
            return this.zzaHc;
        }

        public Class<? extends zzacs> zzyy() {
            return this.zzaHd;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public String zzyz() {
            if (this.zzaHe == null) {
                return null;
            }
            return this.zzaHe;
        }
    }

    /* loaded from: classes2.dex */
    public interface zzb<I, O> {
        I convertBack(O o);
    }

    private void zza(StringBuilder sb, zza zzaVar, Object obj) {
        if (zzaVar.zzys() == 11) {
            sb.append(zzaVar.zzyy().cast(obj).toString());
        } else if (zzaVar.zzys() != 7) {
            sb.append(obj);
        } else {
            sb.append("\"");
            sb.append(com.google.android.gms.common.util.zzq.zzdy((String) obj));
            sb.append("\"");
        }
    }

    private void zza(StringBuilder sb, zza zzaVar, ArrayList<Object> arrayList) {
        sb.append("[");
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            if (i > 0) {
                sb.append(",");
            }
            Object obj = arrayList.get(i);
            if (obj != null) {
                zza(sb, zzaVar, obj);
            }
        }
        sb.append("]");
    }

    public String toString() {
        Map<String, zza<?, ?>> zzyr = zzyr();
        StringBuilder sb = new StringBuilder(100);
        for (String str : zzyr.keySet()) {
            zza<?, ?> zzaVar = zzyr.get(str);
            if (zza(zzaVar)) {
                Object zza2 = zza(zzaVar, zzb(zzaVar));
                if (sb.length() == 0) {
                    sb.append("{");
                } else {
                    sb.append(",");
                }
                sb.append("\"").append(str).append("\":");
                if (zza2 == null) {
                    sb.append("null");
                } else {
                    switch (zzaVar.zzyu()) {
                        case 8:
                            sb.append("\"").append(com.google.android.gms.common.util.zzc.zzq((byte[]) zza2)).append("\"");
                            continue;
                        case 9:
                            sb.append("\"").append(com.google.android.gms.common.util.zzc.zzr((byte[]) zza2)).append("\"");
                            continue;
                        case 10:
                            com.google.android.gms.common.util.zzr.zza(sb, (HashMap) zza2);
                            continue;
                        default:
                            if (zzaVar.zzyt()) {
                                zza(sb, (zza) zzaVar, (ArrayList) zza2);
                                break;
                            } else {
                                zza(sb, zzaVar, zza2);
                                continue;
                            }
                    }
                }
            }
        }
        if (sb.length() > 0) {
            sb.append("}");
        } else {
            sb.append("{}");
        }
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Multi-variable type inference failed */
    public <O, I> I zza(zza<I, O> zzaVar, Object obj) {
        return ((zza) zzaVar).zzaHg != null ? zzaVar.convertBack(obj) : obj;
    }

    protected boolean zza(zza zzaVar) {
        return zzaVar.zzyu() == 11 ? zzaVar.zzyv() ? zzdv(zzaVar.zzyw()) : zzdu(zzaVar.zzyw()) : zzdt(zzaVar.zzyw());
    }

    protected Object zzb(zza zzaVar) {
        String zzyw = zzaVar.zzyw();
        if (zzaVar.zzyy() != null) {
            zzds(zzaVar.zzyw());
            com.google.android.gms.common.internal.zzac.zza(true, "Concrete field shouldn't be value object: %s", zzaVar.zzyw());
            zzaVar.zzyv();
            try {
                char upperCase = Character.toUpperCase(zzyw.charAt(0));
                String valueOf = String.valueOf(zzyw.substring(1));
                return getClass().getMethod(new StringBuilder(String.valueOf(valueOf).length() + 4).append("get").append(upperCase).append(valueOf).toString(), new Class[0]).invoke(this, new Object[0]);
            } catch (Exception e) {
                throw new RuntimeException(e);
            }
        }
        return zzds(zzaVar.zzyw());
    }

    protected abstract Object zzds(String str);

    protected abstract boolean zzdt(String str);

    protected boolean zzdu(String str) {
        throw new UnsupportedOperationException("Concrete types not supported");
    }

    protected boolean zzdv(String str) {
        throw new UnsupportedOperationException("Concrete type arrays not supported");
    }

    public abstract Map<String, zza<?, ?>> zzyr();
}
