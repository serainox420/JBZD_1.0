package com.pubmatic.sdk.common;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.SharedPreferences;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.Parcel;
import android.os.RemoteException;
import java.io.IOException;
import java.util.concurrent.LinkedBlockingQueue;
/* loaded from: classes3.dex */
public final class AdvertisingIdClient {
    private static final String PM_AID_KEY = "aid_key";
    private static final String PM_AID_STORAGE = "aid_shared_preference";
    private static final String PM_LIMITED_TRACKING_AD_KEY = "limited_tracking_ad_key";

    /* loaded from: classes3.dex */
    public static final class AdInfo {
        private final String advertisingId;
        private final boolean limitAdTrackingEnabled;

        AdInfo(String str, boolean z) {
            this.advertisingId = str;
            this.limitAdTrackingEnabled = z;
        }

        public String getId() {
            return this.advertisingId;
        }

        public boolean isLimitAdTrackingEnabled() {
            return this.limitAdTrackingEnabled;
        }
    }

    public static AdInfo refreshAdvertisingInfo(final Context context) {
        new Thread(new Runnable() { // from class: com.pubmatic.sdk.common.AdvertisingIdClient.1
            @Override // java.lang.Runnable
            public void run() {
                if (Looper.myLooper() == Looper.getMainLooper()) {
                    throw new IllegalStateException("Cannot be called from the main thread");
                }
                AdvertisingConnection advertisingConnection = new AdvertisingConnection();
                Intent intent = new Intent("com.google.android.gms.ads.identifier.service.START");
                intent.setPackage("com.google.android.gms");
                if (context.bindService(intent, advertisingConnection, 1)) {
                    try {
                        AdvertisingInterface advertisingInterface = new AdvertisingInterface(advertisingConnection.getBinder());
                        AdvertisingIdClient.saveAndroidAid(context, advertisingInterface.getId());
                        AdvertisingIdClient.saveLimitedAdTrackingState(context, advertisingInterface.isLimitAdTrackingEnabled(true));
                    } catch (Exception e) {
                    } finally {
                        context.unbindService(advertisingConnection);
                    }
                }
            }
        }).start();
        return new AdInfo(getAndroidAid(context, null), getLimitedAdTrackingState(context, true));
    }

    public static AdInfo getAdvertisingIdInfo(Context context) throws Exception {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            throw new IllegalStateException("Cannot be called from the main thread");
        }
        try {
            context.getPackageManager().getPackageInfo("com.android.vending", 0);
            AdvertisingConnection advertisingConnection = new AdvertisingConnection();
            Intent intent = new Intent("com.google.android.gms.ads.identifier.service.START");
            intent.setPackage("com.google.android.gms");
            try {
                if (context.bindService(intent, advertisingConnection, 1)) {
                    try {
                        AdvertisingInterface advertisingInterface = new AdvertisingInterface(advertisingConnection.getBinder());
                        saveAndroidAid(context, advertisingInterface.getId());
                        saveLimitedAdTrackingState(context, advertisingInterface.isLimitAdTrackingEnabled(true));
                        return new AdInfo(advertisingInterface.getId(), advertisingInterface.isLimitAdTrackingEnabled(true));
                    } catch (Exception e) {
                        throw e;
                    }
                }
                throw new IOException("Google Play connection failed");
            } finally {
                context.unbindService(advertisingConnection);
            }
        } catch (Exception e2) {
            throw e2;
        }
    }

    public static void saveAndroidAid(Context context, String str) {
        SharedPreferences.Editor edit = context.getSharedPreferences(PM_AID_STORAGE, 0).edit();
        if (edit != null) {
            edit.putString(PM_AID_KEY, str);
            edit.commit();
        }
    }

    public static String getAndroidAid(Context context, String str) {
        if (context != null) {
            return context.getSharedPreferences(PM_AID_STORAGE, 0).getString(PM_AID_KEY, str);
        }
        return str;
    }

    public static void saveLimitedAdTrackingState(Context context, boolean z) {
        SharedPreferences.Editor edit = context.getSharedPreferences(PM_AID_STORAGE, 0).edit();
        if (edit != null) {
            edit.putBoolean(PM_LIMITED_TRACKING_AD_KEY, z);
            edit.commit();
        }
    }

    public static boolean getLimitedAdTrackingState(Context context, boolean z) {
        if (context != null) {
            return context.getSharedPreferences(PM_AID_STORAGE, 0).getBoolean(PM_LIMITED_TRACKING_AD_KEY, z);
        }
        return z;
    }

    /* loaded from: classes3.dex */
    private static final class AdvertisingConnection implements ServiceConnection {
        private final LinkedBlockingQueue<IBinder> queue;
        boolean retrieved;

        private AdvertisingConnection() {
            this.retrieved = false;
            this.queue = new LinkedBlockingQueue<>(1);
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            try {
                this.queue.put(iBinder);
            } catch (InterruptedException e) {
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
        }

        public IBinder getBinder() throws InterruptedException {
            if (this.retrieved) {
                throw new IllegalStateException();
            }
            this.retrieved = true;
            return this.queue.take();
        }
    }

    /* loaded from: classes3.dex */
    private static final class AdvertisingInterface implements IInterface {
        private IBinder binder;

        public AdvertisingInterface(IBinder iBinder) {
            this.binder = iBinder;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this.binder;
        }

        public String getId() throws RemoteException {
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            try {
                obtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                this.binder.transact(1, obtain, obtain2, 0);
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
                this.binder.transact(2, obtain, obtain2, 0);
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
