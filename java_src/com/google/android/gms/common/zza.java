package com.google.android.gms.common;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.google.android.gms.common.internal.zzac;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* loaded from: classes2.dex */
public class zza implements ServiceConnection {
    boolean zzayh = false;
    private final BlockingQueue<IBinder> zzayi = new LinkedBlockingQueue();

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        this.zzayi.add(iBinder);
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
    }

    public IBinder zza(long j, TimeUnit timeUnit) throws InterruptedException, TimeoutException {
        zzac.zzdk("BlockingServiceConnection.getServiceWithTimeout() called on main thread");
        if (this.zzayh) {
            throw new IllegalStateException("Cannot call get on this connection more than once");
        }
        this.zzayh = true;
        IBinder poll = this.zzayi.poll(j, timeUnit);
        if (poll != null) {
            return poll;
        }
        throw new TimeoutException("Timed out waiting for the service connection");
    }

    public IBinder zzuX() throws InterruptedException {
        zzac.zzdk("BlockingServiceConnection.getService() called on main thread");
        if (this.zzayh) {
            throw new IllegalStateException("Cannot call get on this connection more than once");
        }
        this.zzayh = true;
        return this.zzayi.take();
    }
}
