package com.mopub.common;

import android.content.Context;
import android.os.AsyncTask;
import com.mopub.common.factories.MethodBuilderFactory;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.AsyncTasks;
import com.mopub.common.util.Reflection;
import java.lang.ref.WeakReference;
/* loaded from: classes.dex */
public class GpsHelper {
    public static final String ADVERTISING_ID_KEY = "advertisingId";
    public static final int GOOGLE_PLAY_SUCCESS_CODE = 0;
    public static final String IS_LIMIT_AD_TRACKING_ENABLED_KEY = "isLimitAdTrackingEnabled";

    /* renamed from: a  reason: collision with root package name */
    private static String f4338a = "com.google.android.gms.common.GooglePlayServicesUtil";
    private static String b = "com.google.android.gms.ads.identifier.AdvertisingIdClient";

    /* loaded from: classes3.dex */
    public interface GpsHelperListener {
        void onFetchAdInfoCompleted();
    }

    /* loaded from: classes3.dex */
    public static class AdvertisingInfo {
        public final String advertisingId;
        public final boolean limitAdTracking;

        public AdvertisingInfo(String str, boolean z) {
            this.advertisingId = str;
            this.limitAdTracking = z;
        }
    }

    public static boolean isPlayServicesAvailable(Context context) {
        try {
            Object execute = MethodBuilderFactory.create(null, "isGooglePlayServicesAvailable").setStatic(Class.forName(f4338a)).addParam(Context.class, context).execute();
            if (execute != null) {
                if (((Integer) execute).intValue() == 0) {
                    return true;
                }
            }
            return false;
        } catch (Exception e) {
            return false;
        }
    }

    public static boolean isLimitAdTrackingEnabled(Context context) {
        if (isPlayServicesAvailable(context)) {
            return SharedPreferencesHelper.getSharedPreferences(context).getBoolean(IS_LIMIT_AD_TRACKING_ENABLED_KEY, false);
        }
        return false;
    }

    static boolean a(Context context) {
        return ClientMetadata.getInstance(context).isAdvertisingInfoSet();
    }

    public static void fetchAdvertisingInfoAsync(Context context, GpsHelperListener gpsHelperListener) {
        boolean isPlayServicesAvailable = isPlayServicesAvailable(context);
        if (isPlayServicesAvailable && !a(context)) {
            a(context, gpsHelperListener);
            return;
        }
        if (gpsHelperListener != null) {
            gpsHelperListener.onFetchAdInfoCompleted();
        }
        if (isPlayServicesAvailable) {
            a(context, (GpsHelperListener) null);
        }
    }

    public static AdvertisingInfo fetchAdvertisingInfoSync(Context context) {
        if (context == null) {
            return null;
        }
        try {
            Object execute = MethodBuilderFactory.create(null, "getAdvertisingIdInfo").setStatic(Class.forName(b)).addParam(Context.class, context).execute();
            return new AdvertisingInfo(a(execute, (String) null), a(execute, false));
        } catch (Exception e) {
            MoPubLog.d("Unable to obtain Google AdvertisingIdClient.Info via reflection.");
            return null;
        }
    }

    private static void a(Context context, GpsHelperListener gpsHelperListener) {
        if (!Reflection.classFound(b)) {
            if (gpsHelperListener != null) {
                gpsHelperListener.onFetchAdInfoCompleted();
                return;
            }
            return;
        }
        try {
            AsyncTasks.safeExecuteOnExecutor(new a(context, gpsHelperListener), new Void[0]);
        } catch (Exception e) {
            MoPubLog.d("Error executing FetchAdvertisingInfoTask", e);
            if (gpsHelperListener != null) {
                gpsHelperListener.onFetchAdInfoCompleted();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class a extends AsyncTask<Void, Void, Void> {

        /* renamed from: a  reason: collision with root package name */
        private WeakReference<Context> f4339a;
        private WeakReference<GpsHelperListener> b;

        public a(Context context, GpsHelperListener gpsHelperListener) {
            this.f4339a = new WeakReference<>(context);
            this.b = new WeakReference<>(gpsHelperListener);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* renamed from: a */
        public Void doInBackground(Void... voidArr) {
            Object execute;
            try {
                Context context = this.f4339a.get();
                if (context != null && (execute = MethodBuilderFactory.create(null, "getAdvertisingIdInfo").setStatic(Class.forName(GpsHelper.b)).addParam(Context.class, context).execute()) != null) {
                    GpsHelper.a(context, execute);
                }
            } catch (Exception e) {
                MoPubLog.d("Unable to obtain Google AdvertisingIdClient.Info via reflection.");
            }
            return null;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* renamed from: a */
        public void onPostExecute(Void r2) {
            GpsHelperListener gpsHelperListener = this.b.get();
            if (gpsHelperListener != null) {
                gpsHelperListener.onFetchAdInfoCompleted();
            }
        }
    }

    static void a(Context context, Object obj) {
        ClientMetadata.getInstance(context).setAdvertisingInfo(a(obj, (String) null), a(obj, false));
    }

    static String a(Object obj, String str) {
        try {
            return (String) MethodBuilderFactory.create(obj, "getId").execute();
        } catch (Exception e) {
            return str;
        }
    }

    static boolean a(Object obj, boolean z) {
        try {
            Boolean bool = (Boolean) MethodBuilderFactory.create(obj, IS_LIMIT_AD_TRACKING_ENABLED_KEY).execute();
            return bool != null ? bool.booleanValue() : z;
        } catch (Exception e) {
            return z;
        }
    }

    @Deprecated
    public static void setClassNamesForTesting() {
        f4338a = "java.lang.Class";
        b = "java.lang.Class";
    }
}
