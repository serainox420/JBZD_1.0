package com.google.android.gms.internal;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Looper;
import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.internal.zzazu;
import java.util.List;
/* loaded from: classes2.dex */
public class zzazw extends com.google.android.gms.common.internal.zzl<zzazu> {
    private final Context mContext;

    public zzazw(Context context, Looper looper, com.google.android.gms.common.internal.zzg zzgVar, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        super(context, looper, 45, zzgVar, connectionCallbacks, onConnectionFailedListener);
        this.mContext = context;
    }

    private String zzgu(String str) {
        ApplicationInfo applicationInfo;
        Bundle bundle;
        try {
            PackageManager packageManager = this.mContext.getPackageManager();
            if (packageManager != null && (applicationInfo = packageManager.getApplicationInfo(this.mContext.getPackageName(), 128)) != null && (bundle = applicationInfo.metaData) != null) {
                return (String) bundle.get(str);
            }
            return null;
        } catch (PackageManager.NameNotFoundException e) {
            return null;
        }
    }

    public void zza(zzazt zzaztVar, String str) throws RemoteException {
        ((zzazu) zzxD()).zza(zzaztVar, str);
    }

    public void zza(zzazt zzaztVar, List<Integer> list, int i, String str, String str2) throws RemoteException {
        String zzgu = str2 == null ? zzgu("com.google.android.safetynet.API_KEY") : str2;
        int[] iArr = new int[list.size()];
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i3 >= list.size()) {
                ((zzazu) zzxD()).zza(zzaztVar, zzgu, iArr, i, str);
                return;
            } else {
                iArr[i3] = list.get(i3).intValue();
                i2 = i3 + 1;
            }
        }
    }

    public void zzb(zzazt zzaztVar, byte[] bArr, String str) throws RemoteException {
        if (TextUtils.isEmpty(str)) {
            str = zzgu("com.google.android.safetynet.ATTEST_API_KEY");
        }
        ((zzazu) zzxD()).zza(zzaztVar, bArr, str);
    }

    public void zzd(zzazt zzaztVar) throws RemoteException {
        ((zzazu) zzxD()).zzd(zzaztVar);
    }

    public void zze(zzazt zzaztVar) throws RemoteException {
        ((zzazu) zzxD()).zze(zzaztVar);
    }

    @Override // com.google.android.gms.common.internal.zzf
    protected String zzeA() {
        return "com.google.android.gms.safetynet.internal.ISafetyNetService";
    }

    @Override // com.google.android.gms.common.internal.zzf
    protected String zzez() {
        return "com.google.android.gms.safetynet.service.START";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.zzf
    /* renamed from: zzfa */
    public zzazu zzh(IBinder iBinder) {
        return zzazu.zza.zzeZ(iBinder);
    }
}
