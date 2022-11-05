package com.google.android.gms.safetynet;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.zzab;
import com.google.android.gms.internal.zzabv;
import com.google.android.gms.internal.zzabw;
import com.google.android.gms.internal.zzazr;
import com.google.android.gms.internal.zzazu;
import com.google.android.gms.internal.zzazv;
import com.google.android.gms.internal.zzazw;
import com.google.android.gms.safetynet.SafetyNetApi;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
/* loaded from: classes2.dex */
public class SafetyNetClient extends com.google.android.gms.common.api.zzc<Api.ApiOptions.NoOptions> {
    public Task<SafetyNetApi.zza> attest(byte[] bArr, String str) {
        return zzab.zza(zzazv.zza(asGoogleApiClient(), bArr, str), new SafetyNetApi.zza());
    }

    public Task<Void> initSafeBrowsing() {
        return doRead(new zzabv<zzazw, Void>(this) { // from class: com.google.android.gms.safetynet.SafetyNetClient.2
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzabv
            public void zza(zzazw zzazwVar, final TaskCompletionSource<Void> taskCompletionSource) throws RemoteException {
                ((zzazu) zzazwVar.zzxD()).zzb(new zzazr(this) { // from class: com.google.android.gms.safetynet.SafetyNetClient.2.1
                    @Override // com.google.android.gms.internal.zzazr, com.google.android.gms.internal.zzazt
                    public void zzbC(Status status) {
                        zzabw.zza(status, taskCompletionSource);
                    }
                });
            }
        });
    }

    public Task<Boolean> isAdmEnabled() {
        return doRead(new zzabv<zzazw, Boolean>(this) { // from class: com.google.android.gms.safetynet.SafetyNetClient.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzabv
            public void zza(zzazw zzazwVar, final TaskCompletionSource<Boolean> taskCompletionSource) throws RemoteException {
                ((zzazu) zzazwVar.zzxD()).zzf(new zzazr(this) { // from class: com.google.android.gms.safetynet.SafetyNetClient.1.1
                    @Override // com.google.android.gms.internal.zzazr, com.google.android.gms.internal.zzazt
                    public void zzb(Status status, boolean z) {
                        zzabw.zza(status, Boolean.valueOf(z), taskCompletionSource);
                    }
                });
            }
        });
    }

    public Task<SafetyNetApi.zzb> listHarmfulApps() {
        return zzab.zza(SafetyNet.SafetyNetApi.listHarmfulApps(asGoogleApiClient()), new SafetyNetApi.zzb());
    }

    public Task<SafetyNetApi.zze> lookupUri(String str, String str2, int... iArr) {
        return zzab.zza(zzazv.zza(asGoogleApiClient(), str, 3, str2, iArr), new SafetyNetApi.zze());
    }

    public Task<Void> shutdownSafeBrowsing() {
        return doRead(new zzabv<zzazw, Void>(this) { // from class: com.google.android.gms.safetynet.SafetyNetClient.3
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzabv
            public void zza(zzazw zzazwVar, TaskCompletionSource<Void> taskCompletionSource) throws RemoteException {
                ((zzazu) zzazwVar.zzxD()).zzPx();
            }
        });
    }
}
