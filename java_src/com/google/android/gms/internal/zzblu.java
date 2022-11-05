package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.IBinder;
import android.os.Looper;
import android.text.TextUtils;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.internal.zzblz;
import com.google.android.gms.internal.zzbma;
/* loaded from: classes2.dex */
public class zzblu extends com.google.android.gms.common.internal.zzl<zzblz> implements zzblt {
    private static zzacm zzaiA = new zzacm("FirebaseAuth", "FirebaseAuth:");
    private final Context mContext;
    private final zzbma.zza zzbYc;

    public zzblu(Context context, Looper looper, com.google.android.gms.common.internal.zzg zzgVar, zzbma.zza zzaVar, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        super(context, looper, 112, zzgVar, connectionCallbacks, onConnectionFailedListener);
        this.mContext = (Context) com.google.android.gms.common.internal.zzac.zzw(context);
        this.zzbYc = zzaVar;
    }

    @Override // com.google.android.gms.internal.zzblt
    public /* synthetic */ zzblz zzVP() throws DeadObjectException {
        return (zzblz) super.zzxD();
    }

    @Override // com.google.android.gms.common.internal.zzf
    protected String zzeA() {
        return "com.google.firebase.auth.api.internal.IFirebaseAuthService";
    }

    @Override // com.google.android.gms.common.internal.zzf
    protected String zzez() {
        return "com.google.firebase.auth.api.gms.service.START";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.zzf
    /* renamed from: zzfJ */
    public zzblz zzh(IBinder iBinder) {
        return zzblz.zza.zzfL(iBinder);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.zzf
    public Bundle zzqL() {
        Bundle zzqL = super.zzqL();
        if (zzqL == null) {
            zzqL = new Bundle();
        }
        if (this.zzbYc != null) {
            zzqL.putString("com.google.firebase.auth.API_KEY", this.zzbYc.getApiKey());
        }
        return zzqL;
    }

    @Override // com.google.android.gms.common.internal.zzf, com.google.android.gms.common.api.Api.zze
    public boolean zzvh() {
        return DynamiteModule.zzH(this.mContext, "com.google.firebase.auth") == 0;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.android.gms.common.internal.zzf
    protected String zzxv() {
        boolean z;
        boolean z2;
        String property = zzbmg.getProperty("firebear.preference");
        if (TextUtils.isEmpty(property)) {
            property = "default";
        }
        switch (property.hashCode()) {
            case 103145323:
                if (property.equals("local")) {
                    z = false;
                    break;
                }
                z = true;
                break;
            case 1544803905:
                if (property.equals("default")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            default:
                z = true;
                break;
        }
        switch (z) {
            case false:
            case true:
                break;
            default:
                property = "default";
                break;
        }
        switch (property.hashCode()) {
            case 103145323:
                if (property.equals("local")) {
                    z2 = false;
                    break;
                }
            default:
                z2 = true;
                break;
        }
        switch (z2) {
            case false:
                zzaiA.zza("Loading fallback module override.", new Object[0]);
                return this.mContext.getPackageName();
            default:
                zzaiA.zza("Loading module via default loading order.", new Object[0]);
                if (DynamiteModule.zzI(this.mContext, "com.google.android.gms.firebase_auth") >= DynamiteModule.zzH(this.mContext, "com.google.firebase.auth")) {
                    zzaiA.zza("Loading remote module.", new Object[0]);
                    return "com.google.android.gms";
                }
                zzaiA.zza("Loading fallback module.", new Object[0]);
                return this.mContext.getPackageName();
        }
    }
}
