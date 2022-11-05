package com.google.android.gms.internal;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class zzbxq implements Cloneable {
    private Object value;
    private zzbxo<?, ?> zzcuO;
    private List<zzbxv> zzcuP = new ArrayList();

    private byte[] toByteArray() throws IOException {
        byte[] bArr = new byte[zzu()];
        zza(zzbxm.zzag(bArr));
        return bArr;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzbxq)) {
            return false;
        }
        zzbxq zzbxqVar = (zzbxq) obj;
        if (this.value != null && zzbxqVar.value != null) {
            if (this.zzcuO != zzbxqVar.zzcuO) {
                return false;
            }
            return !this.zzcuO.zzckM.isArray() ? this.value.equals(zzbxqVar.value) : this.value instanceof byte[] ? Arrays.equals((byte[]) this.value, (byte[]) zzbxqVar.value) : this.value instanceof int[] ? Arrays.equals((int[]) this.value, (int[]) zzbxqVar.value) : this.value instanceof long[] ? Arrays.equals((long[]) this.value, (long[]) zzbxqVar.value) : this.value instanceof float[] ? Arrays.equals((float[]) this.value, (float[]) zzbxqVar.value) : this.value instanceof double[] ? Arrays.equals((double[]) this.value, (double[]) zzbxqVar.value) : this.value instanceof boolean[] ? Arrays.equals((boolean[]) this.value, (boolean[]) zzbxqVar.value) : Arrays.deepEquals((Object[]) this.value, (Object[]) zzbxqVar.value);
        } else if (this.zzcuP != null && zzbxqVar.zzcuP != null) {
            return this.zzcuP.equals(zzbxqVar.zzcuP);
        } else {
            try {
                return Arrays.equals(toByteArray(), zzbxqVar.toByteArray());
            } catch (IOException e) {
                throw new IllegalStateException(e);
            }
        }
    }

    public int hashCode() {
        try {
            return Arrays.hashCode(toByteArray()) + 527;
        } catch (IOException e) {
            throw new IllegalStateException(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void zza(zzbxm zzbxmVar) throws IOException {
        if (this.value != null) {
            this.zzcuO.zza(this.value, zzbxmVar);
            return;
        }
        for (zzbxv zzbxvVar : this.zzcuP) {
            zzbxvVar.zza(zzbxmVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void zza(zzbxv zzbxvVar) {
        this.zzcuP.add(zzbxvVar);
    }

    /* renamed from: zzaeK */
    public final zzbxq clone() {
        int i = 0;
        zzbxq zzbxqVar = new zzbxq();
        try {
            zzbxqVar.zzcuO = this.zzcuO;
            if (this.zzcuP == null) {
                zzbxqVar.zzcuP = null;
            } else {
                zzbxqVar.zzcuP.addAll(this.zzcuP);
            }
            if (this.value != null) {
                if (this.value instanceof zzbxt) {
                    zzbxqVar.value = (zzbxt) ((zzbxt) this.value).clone();
                } else if (this.value instanceof byte[]) {
                    zzbxqVar.value = ((byte[]) this.value).clone();
                } else if (this.value instanceof byte[][]) {
                    byte[][] bArr = (byte[][]) this.value;
                    byte[][] bArr2 = new byte[bArr.length];
                    zzbxqVar.value = bArr2;
                    for (int i2 = 0; i2 < bArr.length; i2++) {
                        bArr2[i2] = (byte[]) bArr[i2].clone();
                    }
                } else if (this.value instanceof boolean[]) {
                    zzbxqVar.value = ((boolean[]) this.value).clone();
                } else if (this.value instanceof int[]) {
                    zzbxqVar.value = ((int[]) this.value).clone();
                } else if (this.value instanceof long[]) {
                    zzbxqVar.value = ((long[]) this.value).clone();
                } else if (this.value instanceof float[]) {
                    zzbxqVar.value = ((float[]) this.value).clone();
                } else if (this.value instanceof double[]) {
                    zzbxqVar.value = ((double[]) this.value).clone();
                } else if (this.value instanceof zzbxt[]) {
                    zzbxt[] zzbxtVarArr = (zzbxt[]) this.value;
                    zzbxt[] zzbxtVarArr2 = new zzbxt[zzbxtVarArr.length];
                    zzbxqVar.value = zzbxtVarArr2;
                    while (true) {
                        int i3 = i;
                        if (i3 >= zzbxtVarArr.length) {
                            break;
                        }
                        zzbxtVarArr2[i3] = (zzbxt) zzbxtVarArr[i3].clone();
                        i = i3 + 1;
                    }
                }
            }
            return zzbxqVar;
        } catch (CloneNotSupportedException e) {
            throw new AssertionError(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    public <T> T zzb(zzbxo<?, T> zzbxoVar) {
        if (this.value == null) {
            this.zzcuO = zzbxoVar;
            this.value = zzbxoVar.zzac(this.zzcuP);
            this.zzcuP = null;
        } else if (!this.zzcuO.equals(zzbxoVar)) {
            throw new IllegalStateException("Tried to getExtension with a different Extension.");
        }
        return (T) this.value;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int zzu() {
        int i = 0;
        if (this.value != null) {
            return this.zzcuO.zzaU(this.value);
        }
        Iterator<zzbxv> it = this.zzcuP.iterator();
        while (true) {
            int i2 = i;
            if (!it.hasNext()) {
                return i2;
            }
            i = it.next().zzu() + i2;
        }
    }
}
