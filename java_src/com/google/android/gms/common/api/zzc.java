package com.google.android.gms.common.api;

import android.accounts.Account;
import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.ApiOptions;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.internal.zzaad;
import com.google.android.gms.internal.zzaam;
import com.google.android.gms.internal.zzaax;
import com.google.android.gms.internal.zzaay;
import com.google.android.gms.internal.zzabh;
import com.google.android.gms.internal.zzabi;
import com.google.android.gms.internal.zzabm;
import com.google.android.gms.internal.zzabr;
import com.google.android.gms.internal.zzabs;
import com.google.android.gms.internal.zzabv;
import com.google.android.gms.internal.zzabz;
import com.google.android.gms.internal.zzzy;
import com.google.android.gms.internal.zzzz;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
/* loaded from: classes.dex */
public abstract class zzc<O extends Api.ApiOptions> {
    private final Context mContext;
    private final int mId;
    private final Account zzahh;
    private final Api<O> zzaxf;
    private final O zzayT;
    private final zzzz<O> zzayU;
    private final GoogleApiClient zzayV;
    private final zzabs zzayW;
    protected final zzaax zzayX;
    private final Looper zzrs;

    /* loaded from: classes2.dex */
    public static class zza {
        public static final zza zzayY = new C0173zza().zzvk();
        public final Account account;
        public final zzabs zzayZ;
        public final Looper zzaza;

        /* renamed from: com.google.android.gms.common.api.zzc$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public static class C0173zza {
            private zzabs zzayW;
            private Looper zzrs;

            public C0173zza zza(zzabs zzabsVar) {
                zzac.zzb(zzabsVar, "StatusExceptionMapper must not be null.");
                this.zzayW = zzabsVar;
                return this;
            }

            public C0173zza zzb(Looper looper) {
                zzac.zzb(looper, "Looper must not be null.");
                this.zzrs = looper;
                return this;
            }

            public zza zzvk() {
                if (this.zzayW == null) {
                    this.zzayW = new zzzy();
                }
                if (this.zzrs == null) {
                    if (Looper.myLooper() != null) {
                        this.zzrs = Looper.myLooper();
                    } else {
                        this.zzrs = Looper.getMainLooper();
                    }
                }
                return new zza(this.zzayW, null, this.zzrs);
            }
        }

        private zza(zzabs zzabsVar, Account account, Looper looper) {
            this.zzayZ = zzabsVar;
            this.account = account;
            this.zzaza = looper;
        }
    }

    @Deprecated
    public zzc(Activity activity, Api<O> api, O o, Looper looper, zzabs zzabsVar) {
        this(activity, (Api) api, (Api.ApiOptions) o, new zza.C0173zza().zzb(looper).zza(zzabsVar).zzvk());
    }

    public zzc(Activity activity, Api<O> api, O o, zza zzaVar) {
        zzac.zzb(activity, "Null activity is not permitted.");
        zzac.zzb(api, "Api must not be null.");
        zzac.zzb(zzaVar, "Settings must not be null; use Settings.createDefault() instead.");
        this.mContext = activity.getApplicationContext();
        this.zzaxf = api;
        this.zzayT = o;
        this.zzrs = zzaVar.zzaza;
        this.zzayU = zzzz.zza(this.zzaxf, this.zzayT);
        this.zzayV = new zzaay(this);
        this.zzayX = zzaax.zzaP(this.mContext);
        this.mId = this.zzayX.zzwz();
        this.zzayW = zzaVar.zzayZ;
        this.zzahh = zzaVar.account;
        zzaam.zza(activity, this.zzayX, this.zzayU);
        this.zzayX.zzb((zzc<?>) this);
    }

    @Deprecated
    public zzc(Activity activity, Api<O> api, O o, zzabs zzabsVar) {
        this(activity, (Api) api, (Api.ApiOptions) o, new zza.C0173zza().zza(zzabsVar).zzb(activity.getMainLooper()).zzvk());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public zzc(Context context, Api<O> api, Looper looper) {
        zzac.zzb(context, "Null context is not permitted.");
        zzac.zzb(api, "Api must not be null.");
        zzac.zzb(looper, "Looper must not be null.");
        this.mContext = context.getApplicationContext();
        this.zzaxf = api;
        this.zzayT = null;
        this.zzrs = looper;
        this.zzayU = zzzz.zzb(api);
        this.zzayV = new zzaay(this);
        this.zzayX = zzaax.zzaP(this.mContext);
        this.mId = this.zzayX.zzwz();
        this.zzayW = new zzzy();
        this.zzahh = null;
    }

    @Deprecated
    public zzc(Context context, Api<O> api, O o, Looper looper, zzabs zzabsVar) {
        this(context, api, o, new zza.C0173zza().zzb(looper).zza(zzabsVar).zzvk());
    }

    public zzc(Context context, Api<O> api, O o, zza zzaVar) {
        zzac.zzb(context, "Null context is not permitted.");
        zzac.zzb(api, "Api must not be null.");
        zzac.zzb(zzaVar, "Settings must not be null; use Settings.createDefault() instead.");
        this.mContext = context.getApplicationContext();
        this.zzaxf = api;
        this.zzayT = o;
        this.zzrs = zzaVar.zzaza;
        this.zzayU = zzzz.zza(this.zzaxf, this.zzayT);
        this.zzayV = new zzaay(this);
        this.zzayX = zzaax.zzaP(this.mContext);
        this.mId = this.zzayX.zzwz();
        this.zzayW = zzaVar.zzayZ;
        this.zzahh = zzaVar.account;
        this.zzayX.zzb((zzc<?>) this);
    }

    @Deprecated
    public zzc(Context context, Api<O> api, O o, zzabs zzabsVar) {
        this(context, api, o, new zza.C0173zza().zza(zzabsVar).zzvk());
    }

    private <A extends Api.zzb, T extends zzaad.zza<? extends Result, A>> T zza(int i, T t) {
        t.zzvI();
        this.zzayX.zza(this, i, (zzaad.zza<? extends Result, Api.zzb>) t);
        return t;
    }

    private <TResult, A extends Api.zzb> Task<TResult> zza(int i, zzabv<A, TResult> zzabvVar) {
        TaskCompletionSource<TResult> taskCompletionSource = new TaskCompletionSource<>();
        this.zzayX.zza(this, i, zzabvVar, taskCompletionSource, this.zzayW);
        return taskCompletionSource.getTask();
    }

    public GoogleApiClient asGoogleApiClient() {
        return this.zzayV;
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [com.google.android.gms.common.api.Api$zze] */
    public Api.zze buildApiClient(Looper looper, zzaax.zza<O> zzaVar) {
        return this.zzaxf.zzvf().zza(this.mContext, looper, new GoogleApiClient.Builder(this.mContext).zze(this.zzahh).zzvp(), this.zzayT, zzaVar, zzaVar);
    }

    public zzabr createSignInCoordinator(Context context, Handler handler) {
        return new zzabr(context, handler);
    }

    public <A extends Api.zzb, T extends zzaad.zza<? extends Result, A>> T doBestEffortWrite(T t) {
        return (T) zza(2, (int) t);
    }

    public <TResult, A extends Api.zzb> Task<TResult> doBestEffortWrite(zzabv<A, TResult> zzabvVar) {
        return zza(2, zzabvVar);
    }

    public <A extends Api.zzb, T extends zzaad.zza<? extends Result, A>> T doRead(T t) {
        return (T) zza(0, (int) t);
    }

    public <TResult, A extends Api.zzb> Task<TResult> doRead(zzabv<A, TResult> zzabvVar) {
        return zza(0, zzabvVar);
    }

    public <A extends Api.zzb, T extends zzabm<A, ?>, U extends zzabz<A, ?>> Task<Void> doRegisterEventListener(T t, U u) {
        zzac.zzw(t);
        zzac.zzw(u);
        zzac.zzb(t.zzwW(), "Listener has already been released.");
        zzac.zzb(u.zzwW(), "Listener has already been released.");
        zzac.zzb(t.zzwW().equals(u.zzwW()), "Listener registration and unregistration methods must be constructed with the same ListenerHolder.");
        return this.zzayX.zza(this, (zzabm<Api.zzb, ?>) t, (zzabz<Api.zzb, ?>) u);
    }

    public Task<Void> doUnregisterEventListener(zzabh.zzb<?> zzbVar) {
        zzac.zzb(zzbVar, "Listener key cannot be null.");
        return this.zzayX.zza(this, zzbVar);
    }

    public <A extends Api.zzb, T extends zzaad.zza<? extends Result, A>> T doWrite(T t) {
        return (T) zza(1, (int) t);
    }

    public <TResult, A extends Api.zzb> Task<TResult> doWrite(zzabv<A, TResult> zzabvVar) {
        return zza(1, zzabvVar);
    }

    public Api<O> getApi() {
        return this.zzaxf;
    }

    public zzzz<O> getApiKey() {
        return this.zzayU;
    }

    public O getApiOptions() {
        return this.zzayT;
    }

    public Context getApplicationContext() {
        return this.mContext;
    }

    public int getInstanceId() {
        return this.mId;
    }

    public Looper getLooper() {
        return this.zzrs;
    }

    public <L> zzabh<L> registerListener(L l, String str) {
        return zzabi.zzb(l, this.zzrs, str);
    }
}
