package com.google.android.gms.internal;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.drive.DriveFolder;
import com.google.android.gms.drive.DriveId;
import java.util.Arrays;
/* loaded from: classes2.dex */
public class zzalx extends com.google.android.gms.drive.metadata.internal.zzl<DriveId> {
    public static final zzalx zzaPV = new zzalx();

    private zzalx() {
        super("driveId", Arrays.asList("sqlId", "resourceId", "mimeType"), Arrays.asList("dbInstanceId"), 4100000);
    }

    @Override // com.google.android.gms.drive.metadata.zza
    protected boolean zzb(DataHolder dataHolder, int i, int i2) {
        for (String str : zzBr()) {
            if (!dataHolder.zzdf(str)) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.drive.metadata.zza
    /* renamed from: zzm */
    public DriveId zzc(DataHolder dataHolder, int i, int i2) {
        long j = dataHolder.zzxf().getLong("dbInstanceId");
        int i3 = DriveFolder.MIME_TYPE.equals(dataHolder.zzd(zzalu.zzaPu.getName(), i, i2)) ? 1 : 0;
        String zzd = dataHolder.zzd("resourceId", i, i2);
        Long valueOf = Long.valueOf(dataHolder.zzb("sqlId", i, i2));
        if ("generated-android-null".equals(zzd)) {
            zzd = null;
        }
        return new DriveId(zzd, valueOf.longValue(), j, i3);
    }
}
