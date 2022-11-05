package com.google.android.gms.internal;

import com.google.android.gms.awareness.fence.FenceQueryResult;
import com.google.android.gms.awareness.fence.FenceStateMap;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzaad;
/* loaded from: classes2.dex */
public class zzafm {

    /* loaded from: classes2.dex */
    public static abstract class zza extends zzaad.zza<FenceQueryResult, zzafn> {
        public zza(GoogleApiClient googleApiClient) {
            super(zzaef.API, googleApiClient);
        }

        @Override // com.google.android.gms.internal.zzaad.zza, com.google.android.gms.internal.zzaad.zzb
        public /* synthetic */ void setResult(Object obj) {
            super.zzb((zza) ((FenceQueryResult) obj));
        }

        @Override // com.google.android.gms.internal.zzaaf
        /* renamed from: zzK */
        public FenceQueryResult zzc(final Status status) {
            return new FenceQueryResult(this) { // from class: com.google.android.gms.internal.zzafm.zza.1
                @Override // com.google.android.gms.awareness.fence.FenceQueryResult
                public FenceStateMap getFenceStateMap() {
                    return null;
                }

                @Override // com.google.android.gms.common.api.Result
                public Status getStatus() {
                    return status;
                }
            };
        }
    }

    /* loaded from: classes2.dex */
    public static abstract class zzb extends zzaad.zza<zzwp, zzafn> {
        public zzb(GoogleApiClient googleApiClient) {
            super(zzaef.API, googleApiClient);
        }

        @Override // com.google.android.gms.internal.zzaad.zza, com.google.android.gms.internal.zzaad.zzb
        public /* synthetic */ void setResult(Object obj) {
            super.zzb((zzb) ((zzwp) obj));
        }

        @Override // com.google.android.gms.internal.zzaaf
        /* renamed from: zzL */
        public zzwp zzc(final Status status) {
            return new zzwp(this) { // from class: com.google.android.gms.internal.zzafm.zzb.1
                @Override // com.google.android.gms.common.api.Result
                public Status getStatus() {
                    return status;
                }

                @Override // com.google.android.gms.internal.zzwp
                public zzwk zzsb() {
                    return null;
                }
            };
        }
    }

    /* loaded from: classes2.dex */
    public static abstract class zzc extends zzaad.zza<Status, zzafn> {
        public zzc(GoogleApiClient googleApiClient) {
            super(zzaef.API, googleApiClient);
        }

        @Override // com.google.android.gms.internal.zzaad.zza, com.google.android.gms.internal.zzaad.zzb
        public /* synthetic */ void setResult(Object obj) {
            super.zzb((zzc) ((Status) obj));
        }

        @Override // com.google.android.gms.internal.zzaaf
        /* renamed from: zzb */
        public Status zzc(Status status) {
            return status;
        }
    }
}
