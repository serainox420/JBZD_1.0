package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.Parcelable;
import android.support.v4.f.f;
import android.util.SparseArray;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.drive.metadata.CustomPropertyKey;
import com.google.android.gms.drive.metadata.internal.AppVisibleCustomProperties;
import com.google.android.gms.drive.metadata.internal.zzf;
import java.util.Arrays;
/* loaded from: classes2.dex */
public class zzalv extends com.google.android.gms.drive.metadata.internal.zzl<AppVisibleCustomProperties> {
    public static final zzf.zza zzaPO = new zzf.zza() { // from class: com.google.android.gms.internal.zzalv.1
        @Override // com.google.android.gms.drive.metadata.internal.zzf.zza
        public String zzBw() {
            return "customPropertiesExtraHolder";
        }

        @Override // com.google.android.gms.drive.metadata.internal.zzf.zza
        public void zzb(DataHolder dataHolder) {
            zzalv.zzd(dataHolder);
        }
    };

    public zzalv(int i) {
        super("customProperties", Arrays.asList("hasCustomProperties", "sqlId"), Arrays.asList("customPropertiesExtra", "customPropertiesExtraHolder"), i);
    }

    private static void zzc(DataHolder dataHolder) {
        synchronized (dataHolder) {
            DataHolder dataHolder2 = (DataHolder) dataHolder.zzxf().getParcelable("customPropertiesExtraHolder");
            if (dataHolder2 == null) {
                return;
            }
            f<AppVisibleCustomProperties.zza> zzf = zzf(dataHolder2);
            SparseArray<? extends Parcelable> sparseArray = new SparseArray<>();
            for (int i = 0; i < dataHolder.getCount(); i++) {
                AppVisibleCustomProperties.zza a2 = zzf.a(dataHolder.zzb("sqlId", i, dataHolder.zzcI(i)));
                if (a2 != null) {
                    sparseArray.append(i, a2.zzBt());
                }
            }
            dataHolder.zzxf().putSparseParcelableArray("customPropertiesExtra", sparseArray);
            dataHolder2.close();
            dataHolder.zzxf().remove("customPropertiesExtraHolder");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void zzd(DataHolder dataHolder) {
        Bundle zzxf = dataHolder.zzxf();
        if (zzxf == null) {
            return;
        }
        synchronized (dataHolder) {
            DataHolder dataHolder2 = (DataHolder) zzxf.getParcelable("customPropertiesExtraHolder");
            if (dataHolder2 != null) {
                dataHolder2.close();
                zzxf.remove("customPropertiesExtraHolder");
            }
        }
    }

    private static f<AppVisibleCustomProperties.zza> zzf(DataHolder dataHolder) {
        Bundle zzxf = dataHolder.zzxf();
        String string = zzxf.getString("entryIdColumn");
        String string2 = zzxf.getString("keyColumn");
        String string3 = zzxf.getString("visibilityColumn");
        String string4 = zzxf.getString("valueColumn");
        f<AppVisibleCustomProperties.zza> fVar = new f<>();
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < dataHolder.getCount()) {
                int zzcI = dataHolder.zzcI(i2);
                long zzb = dataHolder.zzb(string, i2, zzcI);
                String zzd = dataHolder.zzd(string2, i2, zzcI);
                int zzc = dataHolder.zzc(string3, i2, zzcI);
                com.google.android.gms.drive.metadata.internal.zzc zzcVar = new com.google.android.gms.drive.metadata.internal.zzc(new CustomPropertyKey(zzd, zzc), dataHolder.zzd(string4, i2, zzcI));
                AppVisibleCustomProperties.zza a2 = fVar.a(zzb);
                if (a2 == null) {
                    a2 = new AppVisibleCustomProperties.zza();
                    fVar.b(zzb, a2);
                }
                a2.zza(zzcVar);
                i = i2 + 1;
            } else {
                return fVar;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.drive.metadata.zza
    /* renamed from: zzl */
    public AppVisibleCustomProperties zzc(DataHolder dataHolder, int i, int i2) {
        Bundle zzxf = dataHolder.zzxf();
        SparseArray sparseParcelableArray = zzxf.getSparseParcelableArray("customPropertiesExtra");
        if (sparseParcelableArray == null) {
            if (zzxf.getParcelable("customPropertiesExtraHolder") != null) {
                zzc(dataHolder);
                sparseParcelableArray = zzxf.getSparseParcelableArray("customPropertiesExtra");
            }
            if (sparseParcelableArray == null) {
                return AppVisibleCustomProperties.zzaON;
            }
        }
        return (AppVisibleCustomProperties) sparseParcelableArray.get(i, AppVisibleCustomProperties.zzaON);
    }
}
