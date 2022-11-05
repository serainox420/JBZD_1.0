package com.google.android.gms.internal;

import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.channels.Channels;
import java.nio.channels.WritableByteChannel;
import java.util.Random;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
/* loaded from: classes2.dex */
class zzbss {
    private zzbsm zzckq;
    private BlockingQueue<ByteBuffer> zzcku;
    private WritableByteChannel zzckw;
    private final Random zzcdt = new Random();
    private volatile boolean zzckt = false;
    private boolean zzckv = false;
    private final Thread zzcjZ = zzbsm.getThreadFactory().newThread(new Runnable() { // from class: com.google.android.gms.internal.zzbss.1
        @Override // java.lang.Runnable
        public void run() {
            zzbss.this.zzabE();
        }
    });

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbss(zzbsm zzbsmVar, String str, int i) {
        zzbsm.zzabq().zza(zzabx(), new StringBuilder(String.valueOf(str).length() + 18).append(str).append("Writer-").append(i).toString());
        this.zzckq = zzbsmVar;
        this.zzcku = new LinkedBlockingQueue();
    }

    private ByteBuffer zza(byte b, boolean z, byte[] bArr) throws IOException {
        int i = 2;
        if (z) {
            i = 6;
        }
        int length = bArr.length;
        if (length >= 126) {
            i = length <= 65535 ? i + 2 : i + 8;
        }
        ByteBuffer allocate = ByteBuffer.allocate(i + bArr.length);
        allocate.put((byte) (b | Byte.MIN_VALUE));
        if (length < 126) {
            allocate.put((byte) (z ? length | 128 : length));
        } else if (length <= 65535) {
            allocate.put((byte) (z ? 254 : 126));
            allocate.putShort((short) length);
        } else {
            int i2 = 127;
            if (z) {
                i2 = 255;
            }
            allocate.put((byte) i2);
            allocate.putInt(0);
            allocate.putInt(length);
        }
        if (z) {
            byte[] zzabB = zzabB();
            allocate.put(zzabB);
            for (int i3 = 0; i3 < bArr.length; i3++) {
                allocate.put((byte) (bArr[i3] ^ zzabB[i3 % 4]));
            }
        }
        allocate.flip();
        return allocate;
    }

    private byte[] zzabB() {
        byte[] bArr = new byte[4];
        this.zzcdt.nextBytes(bArr);
        return bArr;
    }

    private void zzabC() throws InterruptedException, IOException {
        this.zzckw.write(this.zzcku.take());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzabE() {
        while (!this.zzckt && !Thread.interrupted()) {
            try {
                zzabC();
            } catch (IOException e) {
                zzc(new zzbso("IO Exception", e));
                return;
            } catch (InterruptedException e2) {
                return;
            }
        }
        for (int i = 0; i < this.zzcku.size(); i++) {
            zzabC();
        }
    }

    private void zzc(zzbso zzbsoVar) {
        this.zzckq.zzb(zzbsoVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void zzabD() {
        this.zzckt = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Thread zzabx() {
        return this.zzcjZ;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void zzb(byte b, boolean z, byte[] bArr) throws IOException {
        ByteBuffer zza = zza(b, z, bArr);
        if (this.zzckt && (this.zzckv || b != 8)) {
            throw new zzbso("Shouldn't be sending");
        }
        if (b == 8) {
            this.zzckv = true;
        }
        this.zzcku.add(zza);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void zzb(OutputStream outputStream) {
        this.zzckw = Channels.newChannel(outputStream);
    }
}
