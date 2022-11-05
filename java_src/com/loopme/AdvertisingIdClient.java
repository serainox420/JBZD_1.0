package com.loopme;

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
import java.io.IOException;
import java.util.concurrent.LinkedBlockingQueue;
/* loaded from: classes2.dex */
public final class AdvertisingIdClient {

    /* loaded from: classes2.dex */
    public static final class AdInfo {
        private final String mAdvertisingId;
        private final boolean mLimitAdTrackingEnabled;

        AdInfo(String str, boolean z) {
            this.mAdvertisingId = str;
            this.mLimitAdTrackingEnabled = z;
        }

        public String getId() {
            return this.mAdvertisingId;
        }

        public boolean isLimitAdTrackingEnabled() {
            return this.mLimitAdTrackingEnabled;
        }
    }

    public static AdInfo getAdvertisingIdInfo(Context context) throws Exception {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            throw new IllegalStateException("Cannot be called from the main thread");
        }
        try {
            context.getPackageManager().getPackageInfo("com.android.vending", 0);
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
        }
        AdvertisingConnection advertisingConnection = new AdvertisingConnection();
        Intent intent = new Intent("com.google.android.gms.ads.identifier.service.START");
        intent.setPackage("com.google.android.gms");
        try {
            if (context.bindService(intent, advertisingConnection, 1)) {
                try {
                    AdvertisingInterface advertisingInterface = new AdvertisingInterface(advertisingConnection.getBinder());
                    return new AdInfo(advertisingInterface.getId(), advertisingInterface.isLimitAdTrackingEnabled(true));
                } catch (Exception e2) {
                    throw e2;
                }
            }
            throw new IOException("Google Play connection failed");
        } finally {
            context.unbindService(advertisingConnection);
        }
    }

    /* loaded from: classes2.dex */
    private static final class AdvertisingConnection implements ServiceConnection {
        private final LinkedBlockingQueue<IBinder> mQueue;
        boolean mRetrieved;

        private AdvertisingConnection() {
            this.mRetrieved = false;
            this.mQueue = new LinkedBlockingQueue<>(1);
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            try {
                this.mQueue.put(iBinder);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
        }

        public IBinder getBinder() throws InterruptedException {
            if (this.mRetrieved) {
                throw new IllegalStateException();
            }
            this.mRetrieved = true;
            return this.mQueue.take();
        }
    }

    /* loaded from: classes2.dex */
    private static final class AdvertisingInterface implements IInterface {
        private IBinder mBinder;

        public AdvertisingInterface(IBinder iBinder) {
            this.mBinder = iBinder;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this.mBinder;
        }

        public String getId() throws RemoteException {
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            try {
                obtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                this.mBinder.transact(1, obtain, obtain2, 0);
                obtain2.readException();
                return obtain2.readString();
            } finally {
                obtain2.recycle();
                obtain.recycle();
            }
        }

        public boolean isLimitAdTrackingEnabled(boolean z) throws RemoteException {
            boolean z2 = true;
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            try {
                obtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                obtain.writeInt(z ? 1 : 0);
                this.mBinder.transact(2, obtain, obtain2, 0);
                obtain2.readException();
                if (obtain2.readInt() == 0) {
                    z2 = false;
                }
                return z2;
            } finally {
                obtain2.recycle();
                obtain.recycle();
            }
        }
    }
}
