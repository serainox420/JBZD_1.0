package com.google.android.gms.internal;

import com.flurry.android.Constants;
import com.google.android.gms.internal.zzbsk;
import java.io.DataInputStream;
import java.io.IOException;
import java.net.SocketTimeoutException;
/* loaded from: classes2.dex */
class zzbsr {
    private zzbsm zzckq;
    private zzbsk.zzb zzcks;
    private DataInputStream zzckp = null;
    private zzbsn zzcjU = null;
    private byte[] zzckr = new byte[112];
    private volatile boolean zzckt = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbsr(zzbsm zzbsmVar) {
        this.zzckq = null;
        this.zzckq = zzbsmVar;
    }

    private int read(byte[] bArr, int i, int i2) throws IOException {
        this.zzckp.readFully(bArr, i, i2);
        return i2;
    }

    private void zzZ(byte[] bArr) {
        if (bArr.length <= 125) {
            this.zzckq.zzY(bArr);
            return;
        }
        throw new zzbso("PING frame too long");
    }

    private void zza(boolean z, byte b, byte[] bArr) {
        if (b == 9) {
            if (!z) {
                throw new zzbso("PING must not fragment across frames");
            }
            zzZ(bArr);
        } else if (this.zzcks != null && b != 0) {
            throw new zzbso("Failed to continue outstanding frame");
        } else {
            if (this.zzcks == null && b == 0) {
                throw new zzbso("Received continuing frame, but there's nothing to continue");
            }
            if (this.zzcks == null) {
                this.zzcks = zzbsk.zzb(b);
            }
            if (!this.zzcks.zzW(bArr)) {
                throw new zzbso("Failed to decode frame");
            }
            if (!z) {
                return;
            }
            zzbsq zzabn = this.zzcks.zzabn();
            this.zzcks = null;
            this.zzcjU.zza(zzabn);
        }
    }

    private void zzc(zzbso zzbsoVar) {
        zzabA();
        this.zzckq.zzb(zzbsoVar);
    }

    private long zze(byte[] bArr, int i) {
        return (bArr[i + 0] << 56) + ((bArr[i + 1] & Constants.UNKNOWN) << 48) + ((bArr[i + 2] & Constants.UNKNOWN) << 40) + ((bArr[i + 3] & Constants.UNKNOWN) << 32) + ((bArr[i + 4] & Constants.UNKNOWN) << 24) + ((bArr[i + 5] & Constants.UNKNOWN) << 16) + ((bArr[i + 6] & Constants.UNKNOWN) << 8) + ((bArr[i + 7] & Constants.UNKNOWN) << 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void run() {
        int read;
        boolean z;
        this.zzcjU = this.zzckq.zzabr();
        while (!this.zzckt) {
            try {
                read = read(this.zzckr, 0, 1) + 0;
                z = (this.zzckr[0] & 128) != 0;
            } catch (zzbso e) {
                zzc(e);
            } catch (SocketTimeoutException e2) {
            } catch (IOException e3) {
                zzc(new zzbso("IO Error", e3));
            }
            if ((this.zzckr[0] & 112) != 0) {
                throw new zzbso("Invalid frame received");
            }
            byte b = (byte) (this.zzckr[0] & 15);
            int read2 = read + read(this.zzckr, read, 1);
            byte b2 = this.zzckr[1];
            long j = 0;
            if (b2 < 126) {
                j = b2;
            } else if (b2 == 126) {
                read(this.zzckr, read2, 2);
                j = ((this.zzckr[2] & Constants.UNKNOWN) << 8) | (this.zzckr[3] & Constants.UNKNOWN);
            } else if (b2 == Byte.MAX_VALUE) {
                j = zze(this.zzckr, (read(this.zzckr, read2, 8) + read2) - 8);
            }
            byte[] bArr = new byte[(int) j];
            read(bArr, 0, (int) j);
            if (b == 8) {
                this.zzckq.zzabs();
            } else if (b == 10) {
                continue;
            } else if (b != 1 && b != 2 && b != 9 && b != 0) {
                throw new zzbso(new StringBuilder(24).append("Unsupported opcode: ").append((int) b).toString());
            } else {
                zza(z, b, bArr);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void zza(DataInputStream dataInputStream) {
        this.zzckp = dataInputStream;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void zzabA() {
        this.zzckt = true;
    }
}
