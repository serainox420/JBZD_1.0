package com.revmob.a;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.revmob.internal.u;
import com.revmob.internal.w;
import java.util.concurrent.LinkedBlockingQueue;
/* loaded from: classes3.dex */
final class c implements ServiceConnection {

    /* renamed from: a  reason: collision with root package name */
    private boolean f4736a;
    private final LinkedBlockingQueue b;

    private c() {
        this.f4736a = false;
        this.b = new LinkedBlockingQueue(1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ c(byte b) {
        this();
    }

    public final IBinder a() {
        if (this.f4736a) {
            throw new IllegalStateException();
        }
        this.f4736a = true;
        return (IBinder) this.b.take();
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        try {
            this.b.put(iBinder);
        } catch (InterruptedException e) {
            u.a(e, null, w.c, null, "AdvertisingConnection");
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
    }
}
