package com.google.android.gms.nearby.connection;

import android.os.ParcelFileDescriptor;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.drive.DriveFile;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.util.UUID;
/* loaded from: classes2.dex */
public class zzg {
    private final long id;
    private final int type;
    private final byte[] zzbxZ;
    private final zza zzbya;
    private final zzb zzbyb;

    /* loaded from: classes2.dex */
    public static class zza {
        private final File zzbyc;
        private final ParcelFileDescriptor zzbyd;
        private final long zzbye;

        private zza(File file, ParcelFileDescriptor parcelFileDescriptor, long j) {
            this.zzbyc = file;
            this.zzbyd = parcelFileDescriptor;
            this.zzbye = j;
        }

        public static zza zza(File file, long j) throws FileNotFoundException {
            zzac.zzb(file, "Cannot create Payload.File from null java.io.File.");
            return new zza(file, ParcelFileDescriptor.open(file, DriveFile.MODE_READ_ONLY), j);
        }

        public static zza zzb(ParcelFileDescriptor parcelFileDescriptor) {
            return new zza(null, (ParcelFileDescriptor) zzac.zzb(parcelFileDescriptor, "Cannot create Payload.File from null ParcelFileDescriptor."), parcelFileDescriptor.getStatSize());
        }

        public long getSize() {
            return this.zzbye;
        }

        public File zzNY() {
            return this.zzbyc;
        }

        public ParcelFileDescriptor zzNZ() {
            return this.zzbyd;
        }
    }

    /* loaded from: classes2.dex */
    public static class zzb {
        private final ParcelFileDescriptor zzbyd;
        private final InputStream zzbyf;

        private zzb(ParcelFileDescriptor parcelFileDescriptor, InputStream inputStream) {
            this.zzbyd = parcelFileDescriptor;
            this.zzbyf = inputStream;
        }

        public static zzb zzc(ParcelFileDescriptor parcelFileDescriptor) {
            zzac.zzb(parcelFileDescriptor, "Cannot create Payload.Stream from null ParcelFileDescriptor.");
            return new zzb(parcelFileDescriptor, new ParcelFileDescriptor.AutoCloseInputStream(parcelFileDescriptor));
        }

        public InputStream zzOa() {
            return this.zzbyf;
        }
    }

    private zzg(long j, int i, byte[] bArr, zza zzaVar, zzb zzbVar) {
        this.id = j;
        this.type = i;
        this.zzbxZ = bArr;
        this.zzbya = zzaVar;
        this.zzbyb = zzbVar;
    }

    public static zzg zzB(byte[] bArr) {
        zzac.zzb(bArr, "Cannot create a Payload from null bytes.");
        return zzb(bArr, zzNU());
    }

    public static long zzNU() {
        return UUID.randomUUID().getLeastSignificantBits();
    }

    public static zzg zza(zza zzaVar, long j) {
        return new zzg(j, 2, null, zzaVar, null);
    }

    public static zzg zza(zzb zzbVar, long j) {
        return new zzg(j, 3, null, null, zzbVar);
    }

    public static zzg zzb(byte[] bArr, long j) {
        return new zzg(j, 1, bArr, null, null);
    }

    public long getId() {
        return this.id;
    }

    public int getType() {
        return this.type;
    }

    public byte[] zzNV() {
        return this.zzbxZ;
    }

    public zza zzNW() {
        return this.zzbya;
    }

    public zzb zzNX() {
        return this.zzbyb;
    }
}
