package io.fabric.sdk.android.services.common;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AdvertisingInfoServiceStrategy.java */
/* loaded from: classes3.dex */
public class e implements f {

    /* renamed from: a  reason: collision with root package name */
    private final Context f5666a;

    public e(Context context) {
        this.f5666a = context.getApplicationContext();
    }

    @Override // io.fabric.sdk.android.services.common.f
    public io.fabric.sdk.android.services.common.b a() {
        io.fabric.sdk.android.services.common.b bVar = null;
        if (Looper.myLooper() == Looper.getMainLooper()) {
            io.fabric.sdk.android.c.h().a("Fabric", "AdvertisingInfoServiceStrategy cannot be called on the main thread");
        } else {
            try {
                this.f5666a.getPackageManager().getPackageInfo("com.android.vending", 0);
                a aVar = new a();
                Intent intent = new Intent("com.google.android.gms.ads.identifier.service.START");
                intent.setPackage("com.google.android.gms");
                try {
                    if (this.f5666a.bindService(intent, aVar, 1)) {
                        try {
                            b bVar2 = new b(aVar.a());
                            io.fabric.sdk.android.services.common.b bVar3 = new io.fabric.sdk.android.services.common.b(bVar2.a(), bVar2.b());
                            this.f5666a.unbindService(aVar);
                            bVar = bVar3;
                        } catch (Exception e) {
                            io.fabric.sdk.android.c.h().d("Fabric", "Exception in binding to Google Play Service to capture AdvertisingId", e);
                            this.f5666a.unbindService(aVar);
                        }
                    } else {
                        io.fabric.sdk.android.c.h().a("Fabric", "Could not bind to Google Play Service to capture AdvertisingId");
                    }
                } catch (Throwable th) {
                    io.fabric.sdk.android.c.h().a("Fabric", "Could not bind to Google Play Service to capture AdvertisingId", th);
                }
            } catch (PackageManager.NameNotFoundException e2) {
                io.fabric.sdk.android.c.h().a("Fabric", "Unable to find Google Play Services package name");
            } catch (Exception e3) {
                io.fabric.sdk.android.c.h().a("Fabric", "Unable to determine if Google Play Services is available", e3);
            }
        }
        return bVar;
    }

    /* compiled from: AdvertisingInfoServiceStrategy.java */
    /* loaded from: classes3.dex */
    private static final class a implements ServiceConnection {

        /* renamed from: a  reason: collision with root package name */
        private boolean f5667a;
        private final LinkedBlockingQueue<IBinder> b;

        private a() {
            this.f5667a = false;
            this.b = new LinkedBlockingQueue<>(1);
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            try {
                this.b.put(iBinder);
            } catch (InterruptedException e) {
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            this.b.clear();
        }

        public IBinder a() {
            if (this.f5667a) {
                io.fabric.sdk.android.c.h().e("Fabric", "getBinder already called");
            }
            this.f5667a = true;
            try {
                return this.b.poll(200L, TimeUnit.MILLISECONDS);
            } catch (InterruptedException e) {
                return null;
            }
        }
    }

    /* compiled from: AdvertisingInfoServiceStrategy.java */
    /* loaded from: classes3.dex */
    private static final class b implements IInterface {

        /* renamed from: a  reason: collision with root package name */
        private final IBinder f5668a;

        public b(IBinder iBinder) {
            this.f5668a = iBinder;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this.f5668a;
        }

        public String a() throws RemoteException {
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            String str = null;
            try {
                obtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                this.f5668a.transact(1, obtain, obtain2, 0);
                obtain2.readException();
                str = obtain2.readString();
            } catch (Exception e) {
                io.fabric.sdk.android.c.h().a("Fabric", "Could not get parcel from Google Play Service to capture AdvertisingId");
            } finally {
                obtain2.recycle();
                obtain.recycle();
            }
            return str;
        }

        public boolean b() throws RemoteException {
            boolean z = true;
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            try {
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                    obtain.writeInt(1);
                    this.f5668a.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                    if (obtain2.readInt() == 0) {
                        z = false;
                    }
                    obtain2.recycle();
                    obtain.recycle();
                    return z;
                } catch (Exception e) {
                    io.fabric.sdk.android.c.h().a("Fabric", "Could not get parcel from Google Play Service to capture Advertising limitAdTracking");
                    obtain2.recycle();
                    obtain.recycle();
                    return false;
                }
            } catch (Throwable th) {
                obtain2.recycle();
                obtain.recycle();
                throw th;
            }
        }
    }
}
