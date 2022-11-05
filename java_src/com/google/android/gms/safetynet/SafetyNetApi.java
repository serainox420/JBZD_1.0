package com.google.android.gms.safetynet;

import android.content.Context;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import java.util.List;
/* loaded from: classes2.dex */
public interface SafetyNetApi {

    /* loaded from: classes2.dex */
    public interface AttestationResult extends Result {
        String getJwsResult();
    }

    /* loaded from: classes2.dex */
    public interface SafeBrowsingResult extends Result {
        List<SafeBrowsingThreat> getDetectedThreats();

        String getMetadata();
    }

    /* loaded from: classes2.dex */
    public static class zza extends com.google.android.gms.common.api.zze<AttestationResult> {
    }

    /* loaded from: classes2.dex */
    public static class zzb extends com.google.android.gms.common.api.zze<zzc> {
    }

    /* loaded from: classes2.dex */
    public interface zzc extends Result {
    }

    /* loaded from: classes2.dex */
    public interface zzd extends Result {
    }

    /* loaded from: classes2.dex */
    public static class zze extends com.google.android.gms.common.api.zze<SafeBrowsingResult> {
    }

    /* loaded from: classes2.dex */
    public interface zzf extends Result {
    }

    PendingResult<AttestationResult> attest(GoogleApiClient googleApiClient, byte[] bArr);

    PendingResult<zzf> enableVerifyApps(GoogleApiClient googleApiClient);

    boolean isVerifyAppsEnabled(Context context);

    PendingResult<zzc> listHarmfulApps(GoogleApiClient googleApiClient);

    PendingResult<SafeBrowsingResult> lookupUri(GoogleApiClient googleApiClient, String str, int... iArr);

    PendingResult<SafeBrowsingResult> lookupUri(GoogleApiClient googleApiClient, List<Integer> list, String str);

    boolean lookupUriInLocalBlacklist(String str, int... iArr);

    PendingResult<zzd> verifyWithRecaptcha(GoogleApiClient googleApiClient, String str);
}
