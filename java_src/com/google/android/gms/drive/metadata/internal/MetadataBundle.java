package com.google.android.gms.drive.metadata.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.data.BitmapTeleporter;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.drive.metadata.MetadataField;
import com.google.android.gms.internal.zzaic;
import com.google.android.gms.internal.zzalu;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
/* loaded from: classes2.dex */
public final class MetadataBundle extends com.google.android.gms.common.internal.safeparcel.zza implements ReflectedParcelable {
    public static final Parcelable.Creator<MetadataBundle> CREATOR = new zzi();
    final Bundle zzaOT;
    final int zzaiI;

    /* JADX INFO: Access modifiers changed from: package-private */
    public MetadataBundle(int i, Bundle bundle) {
        this.zzaiI = i;
        this.zzaOT = (Bundle) zzac.zzw(bundle);
        this.zzaOT.setClassLoader(getClass().getClassLoader());
        ArrayList<String> arrayList = new ArrayList();
        for (String str : this.zzaOT.keySet()) {
            if (zzf.zzdJ(str) == null) {
                arrayList.add(str);
                String valueOf = String.valueOf(str);
                zzaic.zzF("MetadataBundle", valueOf.length() != 0 ? "Ignored unknown metadata field in bundle: ".concat(valueOf) : new String("Ignored unknown metadata field in bundle: "));
            }
        }
        for (String str2 : arrayList) {
            this.zzaOT.remove(str2);
        }
    }

    private MetadataBundle(Bundle bundle) {
        this(1, bundle);
    }

    public static MetadataBundle zzBx() {
        return new MetadataBundle(new Bundle());
    }

    public static <T> MetadataBundle zzb(MetadataField<T> metadataField, T t) {
        MetadataBundle zzBx = zzBx();
        zzBx.zzc(metadataField, t);
        return zzBx;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MetadataBundle)) {
            return false;
        }
        MetadataBundle metadataBundle = (MetadataBundle) obj;
        Set<String> keySet = this.zzaOT.keySet();
        if (!keySet.equals(metadataBundle.zzaOT.keySet())) {
            return false;
        }
        for (String str : keySet) {
            if (!zzaa.equal(this.zzaOT.get(str), metadataBundle.zzaOT.get(str))) {
                return false;
            }
        }
        return true;
    }

    public int hashCode() {
        int i = 1;
        Iterator<String> it = this.zzaOT.keySet().iterator();
        while (true) {
            int i2 = i;
            if (it.hasNext()) {
                i = this.zzaOT.get(it.next()).hashCode() + (i2 * 31);
            } else {
                return i2;
            }
        }
    }

    public void setContext(Context context) {
        BitmapTeleporter bitmapTeleporter = (BitmapTeleporter) zza(zzalu.zzaPC);
        if (bitmapTeleporter != null) {
            bitmapTeleporter.zzd(context.getCacheDir());
        }
    }

    public String toString() {
        String valueOf = String.valueOf(this.zzaOT);
        return new StringBuilder(String.valueOf(valueOf).length() + 24).append("MetadataBundle [values=").append(valueOf).append("]").toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzi.zza(this, parcel, i);
    }

    public MetadataBundle zzBy() {
        return new MetadataBundle(new Bundle(this.zzaOT));
    }

    public Set<MetadataField<?>> zzBz() {
        HashSet hashSet = new HashSet();
        for (String str : this.zzaOT.keySet()) {
            hashSet.add(zzf.zzdJ(str));
        }
        return hashSet;
    }

    public <T> T zza(MetadataField<T> metadataField) {
        return metadataField.zzs(this.zzaOT);
    }

    public <T> void zzc(MetadataField<T> metadataField, T t) {
        if (zzf.zzdJ(metadataField.getName()) == null) {
            String valueOf = String.valueOf(metadataField.getName());
            throw new IllegalArgumentException(valueOf.length() != 0 ? "Unregistered field: ".concat(valueOf) : new String("Unregistered field: "));
        } else {
            metadataField.zza(t, this.zzaOT);
        }
    }

    public boolean zzc(MetadataField<?> metadataField) {
        return this.zzaOT.containsKey(metadataField.getName());
    }
}
