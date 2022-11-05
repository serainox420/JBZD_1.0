package com.facebook.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.net.Uri;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.Parcel;
import android.os.RemoteException;
import android.util.Log;
import com.facebook.FacebookException;
import com.mopub.common.GpsHelper;
import java.lang.reflect.Method;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes.dex */
public class AttributionIdentifiers {
    private static final String ANDROID_ID_COLUMN_NAME = "androidid";
    private static final String ATTRIBUTION_ID_COLUMN_NAME = "aid";
    private static final String ATTRIBUTION_ID_CONTENT_PROVIDER = "com.facebook.katana.provider.AttributionIdProvider";
    private static final String ATTRIBUTION_ID_CONTENT_PROVIDER_WAKIZASHI = "com.facebook.wakizashi.provider.AttributionIdProvider";
    private static final int CONNECTION_RESULT_SUCCESS = 0;
    private static final long IDENTIFIER_REFRESH_INTERVAL_MILLIS = 3600000;
    private static final String LIMIT_TRACKING_COLUMN_NAME = "limit_tracking";
    private static final String TAG = AttributionIdentifiers.class.getCanonicalName();
    private static AttributionIdentifiers recentlyFetchedIdentifiers;
    private String androidAdvertiserId;
    private String androidInstallerPackage;
    private String attributionId;
    private long fetchTime;
    private boolean limitTracking;

    private static AttributionIdentifiers getAndroidId(Context context) {
        AttributionIdentifiers androidIdViaReflection = getAndroidIdViaReflection(context);
        if (androidIdViaReflection == null) {
            AttributionIdentifiers androidIdViaService = getAndroidIdViaService(context);
            if (androidIdViaService == null) {
                return new AttributionIdentifiers();
            }
            return androidIdViaService;
        }
        return androidIdViaReflection;
    }

    private static AttributionIdentifiers getAndroidIdViaReflection(Context context) {
        Object invokeMethodQuietly;
        try {
            if (Looper.myLooper() == Looper.getMainLooper()) {
                throw new FacebookException("getAndroidId cannot be called on the main thread.");
            }
            Method methodQuietly = Utility.getMethodQuietly("com.google.android.gms.common.GooglePlayServicesUtil", "isGooglePlayServicesAvailable", Context.class);
            if (methodQuietly == null) {
                return null;
            }
            Object invokeMethodQuietly2 = Utility.invokeMethodQuietly(null, methodQuietly, context);
            if (!(invokeMethodQuietly2 instanceof Integer) || ((Integer) invokeMethodQuietly2).intValue() != 0) {
                return null;
            }
            Method methodQuietly2 = Utility.getMethodQuietly("com.google.android.gms.ads.identifier.AdvertisingIdClient", "getAdvertisingIdInfo", Context.class);
            if (methodQuietly2 != null && (invokeMethodQuietly = Utility.invokeMethodQuietly(null, methodQuietly2, context)) != null) {
                Method methodQuietly3 = Utility.getMethodQuietly(invokeMethodQuietly.getClass(), "getId", new Class[0]);
                Method methodQuietly4 = Utility.getMethodQuietly(invokeMethodQuietly.getClass(), GpsHelper.IS_LIMIT_AD_TRACKING_ENABLED_KEY, new Class[0]);
                if (methodQuietly3 == null || methodQuietly4 == null) {
                    return null;
                }
                AttributionIdentifiers attributionIdentifiers = new AttributionIdentifiers();
                attributionIdentifiers.androidAdvertiserId = (String) Utility.invokeMethodQuietly(invokeMethodQuietly, methodQuietly3, new Object[0]);
                attributionIdentifiers.limitTracking = ((Boolean) Utility.invokeMethodQuietly(invokeMethodQuietly, methodQuietly4, new Object[0])).booleanValue();
                return attributionIdentifiers;
            }
            return null;
        } catch (Exception e) {
            Utility.logd("android_id", e);
            return null;
        }
    }

    private static AttributionIdentifiers getAndroidIdViaService(Context context) {
        GoogleAdServiceConnection googleAdServiceConnection = new GoogleAdServiceConnection();
        Intent intent = new Intent("com.google.android.gms.ads.identifier.service.START");
        intent.setPackage("com.google.android.gms");
        try {
            if (context.bindService(intent, googleAdServiceConnection, 1)) {
                GoogleAdInfo googleAdInfo = new GoogleAdInfo(googleAdServiceConnection.getBinder());
                AttributionIdentifiers attributionIdentifiers = new AttributionIdentifiers();
                attributionIdentifiers.androidAdvertiserId = googleAdInfo.getAdvertiserId();
                attributionIdentifiers.limitTracking = googleAdInfo.isTrackingLimited();
                return attributionIdentifiers;
            }
        } catch (Exception e) {
            Utility.logd("android_id", e);
        } finally {
            context.unbindService(googleAdServiceConnection);
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00fe  */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v17 */
    /* JADX WARN: Type inference failed for: r1v18 */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v4, types: [android.database.Cursor] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static AttributionIdentifiers getAttributionIdentifiers(Context context) {
        Cursor cursor;
        Cursor cursor2 = null;
        Looper myLooper = Looper.myLooper();
        Looper mainLooper = Looper.getMainLooper();
        ?? r1 = mainLooper;
        if (myLooper == mainLooper) {
            String str = "getAttributionIdentifiers should not be called from the main thread";
            Log.e(TAG, str);
            r1 = str;
        }
        if (recentlyFetchedIdentifiers == null || System.currentTimeMillis() - recentlyFetchedIdentifiers.fetchTime >= IDENTIFIER_REFRESH_INTERVAL_MILLIS) {
            AttributionIdentifiers androidId = getAndroidId(context);
            try {
                try {
                    String[] strArr = {"aid", "androidid", LIMIT_TRACKING_COLUMN_NAME};
                    Uri parse = context.getPackageManager().resolveContentProvider(ATTRIBUTION_ID_CONTENT_PROVIDER, 0) != null ? Uri.parse("content://com.facebook.katana.provider.AttributionIdProvider") : context.getPackageManager().resolveContentProvider(ATTRIBUTION_ID_CONTENT_PROVIDER_WAKIZASHI, 0) != null ? Uri.parse("content://com.facebook.wakizashi.provider.AttributionIdProvider") : null;
                    String installerPackageName = getInstallerPackageName(context);
                    if (installerPackageName != null) {
                        androidId.androidInstallerPackage = installerPackageName;
                    }
                    if (parse == null) {
                        AttributionIdentifiers cacheAndReturnIdentifiers = cacheAndReturnIdentifiers(androidId);
                        if (0 == 0) {
                            return cacheAndReturnIdentifiers;
                        }
                        cursor2.close();
                        return cacheAndReturnIdentifiers;
                    }
                    cursor = context.getContentResolver().query(parse, strArr, null, null, null);
                    if (cursor != null) {
                        try {
                            if (cursor.moveToFirst()) {
                                int columnIndex = cursor.getColumnIndex("aid");
                                int columnIndex2 = cursor.getColumnIndex("androidid");
                                int columnIndex3 = cursor.getColumnIndex(LIMIT_TRACKING_COLUMN_NAME);
                                androidId.attributionId = cursor.getString(columnIndex);
                                if (columnIndex2 > 0 && columnIndex3 > 0 && androidId.getAndroidAdvertiserId() == null) {
                                    androidId.androidAdvertiserId = cursor.getString(columnIndex2);
                                    androidId.limitTracking = Boolean.parseBoolean(cursor.getString(columnIndex3));
                                }
                                if (cursor != null) {
                                    cursor.close();
                                }
                                return cacheAndReturnIdentifiers(androidId);
                            }
                        } catch (Exception e) {
                            e = e;
                            Log.d(TAG, "Caught unexpected exception in getAttributionId(): " + e.toString());
                            if (cursor != null) {
                                cursor.close();
                            }
                            return null;
                        }
                    }
                    AttributionIdentifiers cacheAndReturnIdentifiers2 = cacheAndReturnIdentifiers(androidId);
                    if (cursor == null) {
                        return cacheAndReturnIdentifiers2;
                    }
                    cursor.close();
                    return cacheAndReturnIdentifiers2;
                } catch (Throwable th) {
                    th = th;
                    if (r1 != 0) {
                        r1.close();
                    }
                    throw th;
                }
            } catch (Exception e2) {
                e = e2;
                cursor = null;
            } catch (Throwable th2) {
                th = th2;
                r1 = 0;
                if (r1 != 0) {
                }
                throw th;
            }
        } else {
            return recentlyFetchedIdentifiers;
        }
    }

    private static AttributionIdentifiers cacheAndReturnIdentifiers(AttributionIdentifiers attributionIdentifiers) {
        attributionIdentifiers.fetchTime = System.currentTimeMillis();
        recentlyFetchedIdentifiers = attributionIdentifiers;
        return attributionIdentifiers;
    }

    public String getAttributionId() {
        return this.attributionId;
    }

    public String getAndroidAdvertiserId() {
        return this.androidAdvertiserId;
    }

    public String getAndroidInstallerPackage() {
        return this.androidInstallerPackage;
    }

    public boolean isTrackingLimited() {
        return this.limitTracking;
    }

    private static String getInstallerPackageName(Context context) {
        PackageManager packageManager = context.getPackageManager();
        if (packageManager != null) {
            return packageManager.getInstallerPackageName(context.getPackageName());
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class GoogleAdServiceConnection implements ServiceConnection {
        private AtomicBoolean consumed;
        private final BlockingQueue<IBinder> queue;

        private GoogleAdServiceConnection() {
            this.consumed = new AtomicBoolean(false);
            this.queue = new LinkedBlockingDeque();
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
            if (this.consumed.compareAndSet(true, true)) {
                throw new IllegalStateException("Binder already consumed");
            }
            return this.queue.take();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class GoogleAdInfo implements IInterface {
        private static final int FIRST_TRANSACTION_CODE = 1;
        private static final int SECOND_TRANSACTION_CODE = 2;
        private IBinder binder;

        GoogleAdInfo(IBinder iBinder) {
            this.binder = iBinder;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this.binder;
        }

        public String getAdvertiserId() throws RemoteException {
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

        public boolean isTrackingLimited() throws RemoteException {
            boolean z = true;
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            try {
                obtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                obtain.writeInt(1);
                this.binder.transact(2, obtain, obtain2, 0);
                obtain2.readException();
                if (obtain2.readInt() == 0) {
                    z = false;
                }
                return z;
            } finally {
                obtain2.recycle();
                obtain.recycle();
            }
        }
    }
}
