package com.google.android.gms.gcm;

import android.os.Bundle;
import android.os.Parcel;
import android.util.Log;
import com.facebook.applinks.AppLinkData;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.zzac;
/* loaded from: classes.dex */
public abstract class Task implements ReflectedParcelable {
    public static final int EXTRAS_LIMIT_BYTES = 10240;
    public static final int NETWORK_STATE_ANY = 2;
    public static final int NETWORK_STATE_CONNECTED = 0;
    public static final int NETWORK_STATE_UNMETERED = 1;
    protected static final long UNINITIALIZED = -1;
    private final Bundle mExtras;
    private final String mTag;
    private final String zzbgX;
    private final boolean zzbgY;
    private final boolean zzbgZ;
    private final int zzbha;
    private final boolean zzbhb;
    private final boolean zzbhc;
    private final zzc zzbhd;

    /* loaded from: classes2.dex */
    public static abstract class Builder {
        protected Bundle extras;
        protected String gcmTaskService;
        protected boolean isPersisted;
        protected int requiredNetworkState;
        protected boolean requiresCharging;
        protected String tag;
        protected boolean updateCurrent;
        protected zzc zzbhe = zzc.zzbgS;

        /* renamed from: build */
        public abstract Task mo529build();

        /* JADX INFO: Access modifiers changed from: protected */
        public void checkConditions() {
            zzac.zzb(this.gcmTaskService != null, "Must provide an endpoint for this task by calling setService(ComponentName).");
            GcmNetworkManager.zzey(this.tag);
            Task.zza(this.zzbhe);
            if (this.isPersisted) {
                Task.zzK(this.extras);
            }
        }

        /* renamed from: setExtras */
        public abstract Builder mo530setExtras(Bundle bundle);

        /* renamed from: setPersisted */
        public abstract Builder mo531setPersisted(boolean z);

        /* renamed from: setRequiredNetwork */
        public abstract Builder mo532setRequiredNetwork(int i);

        /* renamed from: setRequiresCharging */
        public abstract Builder mo533setRequiresCharging(boolean z);

        /* renamed from: setService */
        public abstract Builder mo534setService(Class<? extends GcmTaskService> cls);

        /* renamed from: setTag */
        public abstract Builder mo535setTag(String str);

        /* renamed from: setUpdateCurrent */
        public abstract Builder mo536setUpdateCurrent(boolean z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Deprecated
    public Task(Parcel parcel) {
        boolean z = true;
        Log.e("Task", "Constructing a Task object using a parcel.");
        this.zzbgX = parcel.readString();
        this.mTag = parcel.readString();
        this.zzbgY = parcel.readInt() == 1;
        this.zzbgZ = parcel.readInt() != 1 ? false : z;
        this.zzbha = 2;
        this.zzbhb = false;
        this.zzbhc = false;
        this.zzbhd = zzc.zzbgS;
        this.mExtras = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Task(Builder builder) {
        this.zzbgX = builder.gcmTaskService;
        this.mTag = builder.tag;
        this.zzbgY = builder.updateCurrent;
        this.zzbgZ = builder.isPersisted;
        this.zzbha = builder.requiredNetworkState;
        this.zzbhb = builder.requiresCharging;
        this.zzbhc = false;
        this.mExtras = builder.extras;
        this.zzbhd = builder.zzbhe != null ? builder.zzbhe : zzc.zzbgS;
    }

    private static boolean zzF(Object obj) {
        return (obj instanceof Integer) || (obj instanceof Long) || (obj instanceof Double) || (obj instanceof String) || (obj instanceof Boolean);
    }

    public static void zzK(Bundle bundle) {
        if (bundle != null) {
            Parcel obtain = Parcel.obtain();
            bundle.writeToParcel(obtain, 0);
            int dataSize = obtain.dataSize();
            if (dataSize > 10240) {
                obtain.recycle();
                String valueOf = String.valueOf("Extras exceeding maximum size(10240 bytes): ");
                throw new IllegalArgumentException(new StringBuilder(String.valueOf(valueOf).length() + 11).append(valueOf).append(dataSize).toString());
            }
            obtain.recycle();
            for (String str : bundle.keySet()) {
                Object obj = bundle.get(str);
                if (!zzF(obj)) {
                    if (!(obj instanceof Bundle)) {
                        throw new IllegalArgumentException("Only the following extra parameter types are supported: Integer, Long, Double, String, Boolean, and nested Bundles with the same restrictions.");
                    }
                    zzK((Bundle) obj);
                }
            }
        }
    }

    public static void zza(zzc zzcVar) {
        if (zzcVar != null) {
            int zzGU = zzcVar.zzGU();
            if (zzGU != 1 && zzGU != 0) {
                throw new IllegalArgumentException(new StringBuilder(45).append("Must provide a valid RetryPolicy: ").append(zzGU).toString());
            }
            int zzGV = zzcVar.zzGV();
            int zzGW = zzcVar.zzGW();
            if (zzGU == 0 && zzGV < 0) {
                throw new IllegalArgumentException(new StringBuilder(52).append("InitialBackoffSeconds can't be negative: ").append(zzGV).toString());
            }
            if (zzGU == 1 && zzGV < 10) {
                throw new IllegalArgumentException("RETRY_POLICY_LINEAR must have an initial backoff at least 10 seconds.");
            }
            if (zzGW >= zzGV) {
                return;
            }
            throw new IllegalArgumentException(new StringBuilder(77).append("MaximumBackoffSeconds must be greater than InitialBackoffSeconds: ").append(zzcVar.zzGW()).toString());
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public Bundle getExtras() {
        return this.mExtras;
    }

    public int getRequiredNetwork() {
        return this.zzbha;
    }

    public boolean getRequiresCharging() {
        return this.zzbhb;
    }

    public String getServiceName() {
        return this.zzbgX;
    }

    public String getTag() {
        return this.mTag;
    }

    public boolean isPersisted() {
        return this.zzbgZ;
    }

    public boolean isUpdateCurrent() {
        return this.zzbgY;
    }

    public void toBundle(Bundle bundle) {
        bundle.putString("tag", this.mTag);
        bundle.putBoolean("update_current", this.zzbgY);
        bundle.putBoolean("persisted", this.zzbgZ);
        bundle.putString("service", this.zzbgX);
        bundle.putInt("requiredNetwork", this.zzbha);
        bundle.putBoolean("requiresCharging", this.zzbhb);
        bundle.putBoolean("requiresIdle", false);
        bundle.putBundle("retryStrategy", this.zzbhd.zzJ(new Bundle()));
        bundle.putBundle(AppLinkData.ARGUMENTS_EXTRAS_KEY, this.mExtras);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int i2 = 1;
        parcel.writeString(this.zzbgX);
        parcel.writeString(this.mTag);
        parcel.writeInt(this.zzbgY ? 1 : 0);
        if (!this.zzbgZ) {
            i2 = 0;
        }
        parcel.writeInt(i2);
    }
}
