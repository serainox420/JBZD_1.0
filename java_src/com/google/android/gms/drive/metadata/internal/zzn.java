package com.google.android.gms.drive.metadata.internal;

import android.os.Bundle;
import android.os.Parcelable;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.metadata.SearchableCollectionMetadataField;
import com.google.android.gms.drive.metadata.internal.zzf;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
/* loaded from: classes2.dex */
public class zzn extends zzk<DriveId> implements SearchableCollectionMetadataField<DriveId> {
    public static final zzf.zza zzaOW = new zzf.zza() { // from class: com.google.android.gms.drive.metadata.internal.zzn.1
        @Override // com.google.android.gms.drive.metadata.internal.zzf.zza
        public String zzBw() {
            return "parentsExtraHolder";
        }

        @Override // com.google.android.gms.drive.metadata.internal.zzf.zza
        public void zzb(DataHolder dataHolder) {
            zzn.zzd(dataHolder);
        }
    };

    public zzn(int i) {
        super("parents", Collections.emptySet(), Arrays.asList("parentsExtra", "dbInstanceId", "parentsExtraHolder"), i);
    }

    private void zzc(DataHolder dataHolder) {
        synchronized (dataHolder) {
            DataHolder dataHolder2 = (DataHolder) dataHolder.zzxf().getParcelable("parentsExtraHolder");
            if (dataHolder2 == null) {
                return;
            }
            int count = dataHolder.getCount();
            ArrayList<? extends Parcelable> arrayList = new ArrayList<>(count);
            HashMap hashMap = new HashMap(count);
            for (int i = 0; i < count; i++) {
                int zzcI = dataHolder.zzcI(i);
                ParentDriveIdSet parentDriveIdSet = new ParentDriveIdSet();
                arrayList.add(parentDriveIdSet);
                hashMap.put(Long.valueOf(dataHolder.zzb("sqlId", i, zzcI)), parentDriveIdSet);
            }
            Bundle zzxf = dataHolder2.zzxf();
            String string = zzxf.getString("childSqlIdColumn");
            String string2 = zzxf.getString("parentSqlIdColumn");
            String string3 = zzxf.getString("parentResIdColumn");
            int count2 = dataHolder2.getCount();
            for (int i2 = 0; i2 < count2; i2++) {
                int zzcI2 = dataHolder2.zzcI(i2);
                ((ParentDriveIdSet) hashMap.get(Long.valueOf(dataHolder2.zzb(string, i2, zzcI2)))).zza(new zzo(dataHolder2.zzd(string3, i2, zzcI2), dataHolder2.zzb(string2, i2, zzcI2), 1));
            }
            dataHolder.zzxf().putParcelableArrayList("parentsExtra", arrayList);
            dataHolder2.close();
            dataHolder.zzxf().remove("parentsExtraHolder");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void zzd(DataHolder dataHolder) {
        Bundle zzxf = dataHolder.zzxf();
        if (zzxf == null) {
            return;
        }
        synchronized (dataHolder) {
            DataHolder dataHolder2 = (DataHolder) zzxf.getParcelable("parentsExtraHolder");
            if (dataHolder2 != null) {
                dataHolder2.close();
                zzxf.remove("parentsExtraHolder");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.drive.metadata.zzb, com.google.android.gms.drive.metadata.zza
    /* renamed from: zzd */
    public Collection<DriveId> zzc(DataHolder dataHolder, int i, int i2) {
        Bundle zzxf = dataHolder.zzxf();
        ArrayList parcelableArrayList = zzxf.getParcelableArrayList("parentsExtra");
        if (parcelableArrayList == null) {
            if (zzxf.getParcelable("parentsExtraHolder") != null) {
                zzc(dataHolder);
                parcelableArrayList = zzxf.getParcelableArrayList("parentsExtra");
            }
            if (parcelableArrayList == null) {
                return null;
            }
        }
        return ((ParentDriveIdSet) parcelableArrayList.get(i)).zzL(zzxf.getLong("dbInstanceId"));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.drive.metadata.internal.zzk, com.google.android.gms.drive.metadata.zza
    /* renamed from: zzy */
    public Collection<DriveId> zzt(Bundle bundle) {
        Collection zzt = super.zzt(bundle);
        if (zzt == null) {
            return null;
        }
        return new HashSet(zzt);
    }
}
