package com.google.android.gms.internal;

import android.util.Log;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes2.dex */
public class zzbtu {
    private static final Runtime zzcoB = Runtime.getRuntime();
    private byte[] buffer;
    private final InputStream zzcoC;
    private int zzcoD = 0;
    private boolean zzcoF = true;
    private boolean zzcoE = false;

    public zzbtu(InputStream inputStream, int i) {
        this.zzcoC = inputStream;
        this.buffer = new byte[i];
    }

    private int zzqQ(int i) {
        int max = Math.max(this.buffer.length * 2, i);
        if (!this.zzcoF || 262144 + max >= zzcoB.freeMemory()) {
            Log.w("AdaptiveStreamBuffer", "Turning off adaptive buffer resizing to conserve memory.");
        } else {
            try {
                byte[] bArr = new byte[max];
                System.arraycopy(this.buffer, 0, bArr, 0, this.zzcoD);
                this.buffer = bArr;
            } catch (OutOfMemoryError e) {
                Log.w("AdaptiveStreamBuffer", "Turning off adaptive buffer resizing due to low memory.");
                this.zzcoF = false;
            }
        }
        return this.buffer.length;
    }

    public int available() {
        return this.zzcoD;
    }

    public void close() throws IOException {
        this.zzcoC.close();
    }

    public boolean isFinished() {
        return this.zzcoE;
    }

    public byte[] zzacV() {
        return this.buffer;
    }

    public int zzqO(int i) throws IOException {
        if (i <= this.zzcoD) {
            this.zzcoD -= i;
            System.arraycopy(this.buffer, i, this.buffer, 0, this.zzcoD);
            return i;
        }
        this.zzcoD = 0;
        int i2 = this.zzcoD;
        while (i2 < i) {
            long skip = this.zzcoC.skip(i - i2);
            if (skip > 0) {
                i2 = (int) (i2 + skip);
            } else if (skip != 0) {
                continue;
            } else if (this.zzcoC.read() == -1) {
                return i2;
            } else {
                i2++;
            }
        }
        return i2;
    }

    public int zzqP(int i) throws IOException {
        if (i > this.buffer.length) {
            i = Math.min(i, zzqQ(i));
        }
        while (true) {
            if (this.zzcoD >= i) {
                break;
            }
            int read = this.zzcoC.read(this.buffer, this.zzcoD, i - this.zzcoD);
            if (read == -1) {
                this.zzcoE = true;
                break;
            }
            this.zzcoD = read + this.zzcoD;
        }
        return this.zzcoD;
    }
}
