package com.google.android.gms.games.snapshot;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.common.util.zzp;
import com.google.android.gms.drive.zzc;
import com.google.android.gms.games.internal.GamesAbstractSafeParcelable;
import com.google.android.gms.games.internal.GamesLog;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.channels.FileChannel;
/* loaded from: classes2.dex */
public final class SnapshotContentsEntity extends GamesAbstractSafeParcelable implements SnapshotContents {
    private zzc zzaNe;
    private static final Object zzbfi = new Object();
    public static final Parcelable.Creator<SnapshotContentsEntity> CREATOR = new SnapshotContentsEntityCreator();

    public SnapshotContentsEntity(zzc zzcVar) {
        this.zzaNe = zzcVar;
    }

    private boolean zza(int i, byte[] bArr, int i2, int i3, boolean z) {
        zzac.zza(!isClosed(), "Must provide a previously opened SnapshotContents");
        synchronized (zzbfi) {
            FileOutputStream fileOutputStream = new FileOutputStream(this.zzaNe.getParcelFileDescriptor().getFileDescriptor());
            BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(fileOutputStream);
            try {
                FileChannel channel = fileOutputStream.getChannel();
                channel.position(i);
                bufferedOutputStream.write(bArr, i2, i3);
                if (z) {
                    channel.truncate(bArr.length);
                }
                bufferedOutputStream.flush();
            } catch (IOException e) {
                GamesLog.zzb("SnapshotContentsEntity", "Failed to write snapshot data", e);
                return false;
            }
        }
        return true;
    }

    @Override // com.google.android.gms.games.snapshot.SnapshotContents
    public void close() {
        this.zzaNe = null;
    }

    @Override // com.google.android.gms.games.snapshot.SnapshotContents
    public ParcelFileDescriptor getParcelFileDescriptor() {
        zzac.zza(!isClosed(), "Cannot mutate closed contents!");
        return this.zzaNe.getParcelFileDescriptor();
    }

    @Override // com.google.android.gms.games.snapshot.SnapshotContents
    public boolean isClosed() {
        return this.zzaNe == null;
    }

    @Override // com.google.android.gms.games.snapshot.SnapshotContents
    public boolean modifyBytes(int i, byte[] bArr, int i2, int i3) {
        return zza(i, bArr, i2, bArr.length, false);
    }

    @Override // com.google.android.gms.games.snapshot.SnapshotContents
    public byte[] readFully() throws IOException {
        byte[] zza;
        boolean z = false;
        if (!isClosed()) {
            z = true;
        }
        zzac.zza(z, "Must provide a previously opened Snapshot");
        synchronized (zzbfi) {
            FileInputStream fileInputStream = new FileInputStream(this.zzaNe.getParcelFileDescriptor().getFileDescriptor());
            BufferedInputStream bufferedInputStream = new BufferedInputStream(fileInputStream);
            try {
                fileInputStream.getChannel().position(0L);
                zza = zzp.zza((InputStream) bufferedInputStream, false);
                fileInputStream.getChannel().position(0L);
            } catch (IOException e) {
                GamesLog.zzc("SnapshotContentsEntity", "Failed to read snapshot data", e);
                throw e;
            }
        }
        return zza;
    }

    @Override // com.google.android.gms.games.snapshot.SnapshotContents
    public boolean writeBytes(byte[] bArr) {
        return zza(0, bArr, 0, bArr.length, true);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        SnapshotContentsEntityCreator.zza(this, parcel, i);
    }

    @Override // com.google.android.gms.games.snapshot.SnapshotContents
    public zzc zzAq() {
        return this.zzaNe;
    }
}
