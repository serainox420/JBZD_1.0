package com.google.android.gms.internal;

import com.google.android.gms.common.data.BitmapTeleporter;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.DriveSpace;
import com.google.android.gms.drive.metadata.MetadataField;
import com.google.android.gms.drive.metadata.SearchableMetadataField;
import com.google.android.gms.drive.metadata.SortableMetadataField;
import com.google.android.gms.drive.metadata.internal.AppVisibleCustomProperties;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
/* loaded from: classes2.dex */
public class zzalu {
    public static final MetadataField<DriveId> zzaOX = zzalx.zzaPV;
    public static final MetadataField<String> zzaOY = new com.google.android.gms.drive.metadata.internal.zzr("alternateLink", 4300000);
    public static final zza zzaOZ = new zza(5000000);
    public static final MetadataField<String> zzaPa = new com.google.android.gms.drive.metadata.internal.zzr("description", 4300000);
    public static final MetadataField<String> zzaPb = new com.google.android.gms.drive.metadata.internal.zzr("embedLink", 4300000);
    public static final MetadataField<String> zzaPc = new com.google.android.gms.drive.metadata.internal.zzr("fileExtension", 4300000);
    public static final MetadataField<Long> zzaPd = new com.google.android.gms.drive.metadata.internal.zzh("fileSize", 4300000);
    public static final MetadataField<String> zzaPe = new com.google.android.gms.drive.metadata.internal.zzr("folderColorRgb", 7500000);
    public static final MetadataField<Boolean> zzaPf = new com.google.android.gms.drive.metadata.internal.zzb("hasThumbnail", 4300000);
    public static final MetadataField<String> zzaPg = new com.google.android.gms.drive.metadata.internal.zzr("indexableText", 4300000);
    public static final MetadataField<Boolean> zzaPh = new com.google.android.gms.drive.metadata.internal.zzb("isAppData", 4300000);
    public static final MetadataField<Boolean> zzaPi = new com.google.android.gms.drive.metadata.internal.zzb("isCopyable", 4300000);
    public static final MetadataField<Boolean> zzaPj = new com.google.android.gms.drive.metadata.internal.zzb("isEditable", 4100000);
    public static final MetadataField<Boolean> zzaPk = new com.google.android.gms.drive.metadata.internal.zzb("isExplicitlyTrashed", Collections.singleton("trashed"), Collections.emptySet(), 7000000) { // from class: com.google.android.gms.internal.zzalu.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.drive.metadata.internal.zzb, com.google.android.gms.drive.metadata.zza
        /* renamed from: zze */
        public Boolean zzc(DataHolder dataHolder, int i, int i2) {
            return Boolean.valueOf(dataHolder.zzc("trashed", i, i2) == 2);
        }
    };
    public static final MetadataField<Boolean> zzaPl = new com.google.android.gms.drive.metadata.internal.zzb("isLocalContentUpToDate", 7800000);
    public static final zzb zzaPm = new zzb("isPinned", 4100000);
    public static final MetadataField<Boolean> zzaPn = new com.google.android.gms.drive.metadata.internal.zzb("isOpenable", 7200000);
    public static final MetadataField<Boolean> zzaPo = new com.google.android.gms.drive.metadata.internal.zzb("isRestricted", 4300000);
    public static final MetadataField<Boolean> zzaPp = new com.google.android.gms.drive.metadata.internal.zzb("isShared", 4300000);
    public static final MetadataField<Boolean> zzaPq = new com.google.android.gms.drive.metadata.internal.zzb("isGooglePhotosFolder", 7000000);
    public static final MetadataField<Boolean> zzaPr = new com.google.android.gms.drive.metadata.internal.zzb("isGooglePhotosRootFolder", 7000000);
    public static final MetadataField<Boolean> zzaPs = new com.google.android.gms.drive.metadata.internal.zzb("isTrashable", 4400000);
    public static final MetadataField<Boolean> zzaPt = new com.google.android.gms.drive.metadata.internal.zzb("isViewed", 4300000);
    public static final zzc zzaPu = new zzc(4100000);
    public static final MetadataField<String> zzaPv = new com.google.android.gms.drive.metadata.internal.zzr("originalFilename", 4300000);
    public static final com.google.android.gms.drive.metadata.zzb<String> zzaPw = new com.google.android.gms.drive.metadata.internal.zzq("ownerNames", 4300000);
    public static final com.google.android.gms.drive.metadata.internal.zzs zzaPx = new com.google.android.gms.drive.metadata.internal.zzs("lastModifyingUser", 6000000);
    public static final com.google.android.gms.drive.metadata.internal.zzs zzaPy = new com.google.android.gms.drive.metadata.internal.zzs("sharingUser", 6000000);
    public static final com.google.android.gms.drive.metadata.internal.zzn zzaPz = new com.google.android.gms.drive.metadata.internal.zzn(4100000);
    public static final zzd zzaPA = new zzd("quotaBytesUsed", 4300000);
    public static final zzf zzaPB = new zzf("starred", 4100000);
    public static final MetadataField<BitmapTeleporter> zzaPC = new com.google.android.gms.drive.metadata.internal.zzl<BitmapTeleporter>("thumbnail", Collections.emptySet(), Collections.emptySet(), 4400000) { // from class: com.google.android.gms.internal.zzalu.2
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.drive.metadata.zza
        /* renamed from: zzk */
        public BitmapTeleporter zzc(DataHolder dataHolder, int i, int i2) {
            throw new IllegalStateException("Thumbnail field is write only");
        }
    };
    public static final zzg zzaPD = new zzg("title", 4100000);
    public static final zzh zzaPE = new zzh("trashed", 4100000);
    public static final MetadataField<String> zzaPF = new com.google.android.gms.drive.metadata.internal.zzr("webContentLink", 4300000);
    public static final MetadataField<String> zzaPG = new com.google.android.gms.drive.metadata.internal.zzr("webViewLink", 4300000);
    public static final MetadataField<String> zzaPH = new com.google.android.gms.drive.metadata.internal.zzr("uniqueIdentifier", 5000000);
    public static final com.google.android.gms.drive.metadata.internal.zzb zzaPI = new com.google.android.gms.drive.metadata.internal.zzb("writersCanShare", 6000000);
    public static final MetadataField<String> zzaPJ = new com.google.android.gms.drive.metadata.internal.zzr("role", 6000000);
    public static final MetadataField<String> zzaPK = new com.google.android.gms.drive.metadata.internal.zzr("md5Checksum", 7000000);
    public static final zze zzaPL = new zze(7000000);
    public static final MetadataField<String> zzaPM = new com.google.android.gms.drive.metadata.internal.zzr("recencyReason", 8000000);
    public static final MetadataField<Boolean> zzaPN = new com.google.android.gms.drive.metadata.internal.zzb("subscribed", 8000000);

    /* loaded from: classes2.dex */
    public static class zza extends zzalv implements SearchableMetadataField<AppVisibleCustomProperties> {
        public zza(int i) {
            super(i);
        }
    }

    /* loaded from: classes2.dex */
    public static class zzb extends com.google.android.gms.drive.metadata.internal.zzb implements SearchableMetadataField<Boolean> {
        public zzb(String str, int i) {
            super(str, i);
        }
    }

    /* loaded from: classes2.dex */
    public static class zzc extends com.google.android.gms.drive.metadata.internal.zzr implements SearchableMetadataField<String> {
        public zzc(int i) {
            super("mimeType", i);
        }
    }

    /* loaded from: classes2.dex */
    public static class zzd extends com.google.android.gms.drive.metadata.internal.zzh implements SortableMetadataField<Long> {
        public zzd(String str, int i) {
            super(str, i);
        }
    }

    /* loaded from: classes2.dex */
    public static class zze extends com.google.android.gms.drive.metadata.internal.zzk<DriveSpace> {
        public zze(int i) {
            super("spaces", Arrays.asList("inDriveSpace", "isAppData", "inGooglePhotosSpace"), Collections.emptySet(), i);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.drive.metadata.zzb, com.google.android.gms.drive.metadata.zza
        /* renamed from: zzd */
        public Collection<DriveSpace> zzc(DataHolder dataHolder, int i, int i2) {
            ArrayList arrayList = new ArrayList();
            if (dataHolder.zze("inDriveSpace", i, i2)) {
                arrayList.add(DriveSpace.zzaKW);
            }
            if (dataHolder.zze("isAppData", i, i2)) {
                arrayList.add(DriveSpace.zzaKX);
            }
            if (dataHolder.zze("inGooglePhotosSpace", i, i2)) {
                arrayList.add(DriveSpace.zzaKY);
            }
            return arrayList;
        }
    }

    /* loaded from: classes2.dex */
    public static class zzf extends com.google.android.gms.drive.metadata.internal.zzb implements SearchableMetadataField<Boolean> {
        public zzf(String str, int i) {
            super(str, i);
        }
    }

    /* loaded from: classes2.dex */
    public static class zzg extends com.google.android.gms.drive.metadata.internal.zzr implements SearchableMetadataField<String>, SortableMetadataField<String> {
        public zzg(String str, int i) {
            super(str, i);
        }
    }

    /* loaded from: classes2.dex */
    public static class zzh extends com.google.android.gms.drive.metadata.internal.zzb implements SearchableMetadataField<Boolean> {
        public zzh(String str, int i) {
            super(str, i);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.drive.metadata.internal.zzb, com.google.android.gms.drive.metadata.zza
        /* renamed from: zze */
        public Boolean zzc(DataHolder dataHolder, int i, int i2) {
            return Boolean.valueOf(dataHolder.zzc(getName(), i, i2) != 0);
        }
    }
}
