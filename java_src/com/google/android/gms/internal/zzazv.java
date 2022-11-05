package com.google.android.gms.internal;

import android.content.Context;
import android.os.RemoteException;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.SparseArray;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.safetynet.SafeBrowsingData;
import com.google.android.gms.safetynet.SafeBrowsingThreat;
import com.google.android.gms.safetynet.SafetyNetApi;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class zzazv implements SafetyNetApi {
    private static final String TAG = zzazv.class.getSimpleName();
    protected static SparseArray<zzbaa> zzbDh;
    protected static long zzbDi;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class zza implements SafetyNetApi.AttestationResult {
        private final Status zzair;
        private final com.google.android.gms.safetynet.zza zzbDq;

        public zza(Status status, com.google.android.gms.safetynet.zza zzaVar) {
            this.zzair = status;
            this.zzbDq = zzaVar;
        }

        @Override // com.google.android.gms.safetynet.SafetyNetApi.AttestationResult
        public String getJwsResult() {
            if (this.zzbDq == null) {
                return null;
            }
            return this.zzbDq.getJwsResult();
        }

        @Override // com.google.android.gms.common.api.Result
        public Status getStatus() {
            return this.zzair;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static abstract class zzb extends zzazs<SafetyNetApi.AttestationResult> {
        protected zzazt zzbDr;

        public zzb(GoogleApiClient googleApiClient) {
            super(googleApiClient);
            this.zzbDr = new zzazr() { // from class: com.google.android.gms.internal.zzazv.zzb.1
                @Override // com.google.android.gms.internal.zzazr, com.google.android.gms.internal.zzazt
                public void zza(Status status, com.google.android.gms.safetynet.zza zzaVar) {
                    zzb.this.zzb((zzb) new zza(status, zzaVar));
                }
            };
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzaaf
        /* renamed from: zzbE */
        public SafetyNetApi.AttestationResult zzc(Status status) {
            return new zza(status, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static abstract class zzc extends zzazs<SafetyNetApi.zzf> {
        protected zzazt zzbDr;

        public zzc(GoogleApiClient googleApiClient) {
            super(googleApiClient);
            this.zzbDr = new zzazr() { // from class: com.google.android.gms.internal.zzazv.zzc.1
                @Override // com.google.android.gms.internal.zzazr, com.google.android.gms.internal.zzazt
                public void zzc(Status status, boolean z) {
                    zzc.this.zzb((zzc) new zzj(status, z));
                }
            };
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzaaf
        /* renamed from: zzbF */
        public SafetyNetApi.zzf zzc(Status status) {
            return new zzj(status, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static abstract class zzd extends zzazs<SafetyNetApi.zzc> {
        protected final zzazt zzbDr;

        public zzd(GoogleApiClient googleApiClient) {
            super(googleApiClient);
            this.zzbDr = new zzazr() { // from class: com.google.android.gms.internal.zzazv.zzd.1
                @Override // com.google.android.gms.internal.zzazr, com.google.android.gms.internal.zzazt
                public void zza(Status status, com.google.android.gms.safetynet.zze zzeVar) {
                    zzd.this.zzb((zzd) new zzg(status, zzeVar));
                }
            };
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzaaf
        /* renamed from: zzbG */
        public SafetyNetApi.zzc zzc(Status status) {
            return new zzg(status, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static abstract class zze extends zzazs<SafetyNetApi.zzd> {
        protected zzazt zzbDr;

        public zze(GoogleApiClient googleApiClient) {
            super(googleApiClient);
            this.zzbDr = new zzazr() { // from class: com.google.android.gms.internal.zzazv.zze.1
                @Override // com.google.android.gms.internal.zzazr, com.google.android.gms.internal.zzazt
                public void zza(Status status, com.google.android.gms.safetynet.zzg zzgVar) {
                    zze.this.zzb((zze) new zzh(status, zzgVar));
                }
            };
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzaaf
        /* renamed from: zzbH */
        public SafetyNetApi.zzd zzc(Status status) {
            return new zzh(status, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static abstract class zzf extends zzazs<SafetyNetApi.SafeBrowsingResult> {
        protected zzazt zzbDr;

        public zzf(GoogleApiClient googleApiClient) {
            super(googleApiClient);
            this.zzbDr = new zzazr() { // from class: com.google.android.gms.internal.zzazv.zzf.1
                @Override // com.google.android.gms.internal.zzazr, com.google.android.gms.internal.zzazt
                public void zza(Status status, SafeBrowsingData safeBrowsingData) {
                    DataHolder blacklistsDataHolder = safeBrowsingData.getBlacklistsDataHolder();
                    if (blacklistsDataHolder != null) {
                        try {
                            int count = blacklistsDataHolder.getCount();
                            if (count != 0) {
                                if (zzazv.zzbDh != null) {
                                    zzazv.zzbDh.clear();
                                }
                                zzazv.zzbDh = new SparseArray<>();
                                for (int i = 0; i < count; i++) {
                                    zzbaa zzbaaVar = new zzbaa(blacklistsDataHolder, i);
                                    zzazv.zzbDh.put(zzbaaVar.getThreatType(), zzbaaVar);
                                }
                                zzazv.zzbDi = SystemClock.elapsedRealtime();
                            }
                        } finally {
                            if (!blacklistsDataHolder.isClosed()) {
                                blacklistsDataHolder.close();
                            }
                        }
                    }
                    zzf.this.zzb((zzf) new zzi(status, safeBrowsingData));
                }
            };
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzaaf
        /* renamed from: zzbI */
        public SafetyNetApi.SafeBrowsingResult zzc(Status status) {
            return new zzi(status, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class zzg implements SafetyNetApi.zzc {
        private final Status zzair;
        private final com.google.android.gms.safetynet.zze zzbDx;

        public zzg(Status status, com.google.android.gms.safetynet.zze zzeVar) {
            this.zzair = status;
            this.zzbDx = zzeVar;
        }

        @Override // com.google.android.gms.common.api.Result
        public Status getStatus() {
            return this.zzair;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class zzh implements SafetyNetApi.zzd {
        private final Status zzair;
        private final com.google.android.gms.safetynet.zzg zzbDy;

        public zzh(Status status, com.google.android.gms.safetynet.zzg zzgVar) {
            this.zzair = status;
            this.zzbDy = zzgVar;
        }

        @Override // com.google.android.gms.common.api.Result
        public Status getStatus() {
            return this.zzair;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class zzi implements SafetyNetApi.SafeBrowsingResult {
        private Status zzair;
        private String zzbDd;
        private final SafeBrowsingData zzbDz;

        public zzi(Status status, SafeBrowsingData safeBrowsingData) {
            this.zzair = status;
            this.zzbDz = safeBrowsingData;
            this.zzbDd = null;
            if (this.zzbDz != null) {
                this.zzbDd = this.zzbDz.getMetadata();
            } else if (!this.zzair.isSuccess()) {
            } else {
                this.zzair = new Status(8);
            }
        }

        @Override // com.google.android.gms.safetynet.SafetyNetApi.SafeBrowsingResult
        public List<SafeBrowsingThreat> getDetectedThreats() {
            ArrayList arrayList = new ArrayList();
            if (this.zzbDd == null) {
                return arrayList;
            }
            try {
                JSONArray jSONArray = new JSONObject(this.zzbDd).getJSONArray("matches");
                for (int i = 0; i < jSONArray.length(); i++) {
                    try {
                        arrayList.add(new SafeBrowsingThreat(Integer.parseInt(jSONArray.getJSONObject(i).getString("threat_type"))));
                    } catch (NumberFormatException e) {
                    } catch (JSONException e2) {
                    }
                }
                return arrayList;
            } catch (JSONException e3) {
                return arrayList;
            }
        }

        @Override // com.google.android.gms.safetynet.SafetyNetApi.SafeBrowsingResult
        public String getMetadata() {
            return this.zzbDd;
        }

        @Override // com.google.android.gms.common.api.Result
        public Status getStatus() {
            return this.zzair;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class zzj implements SafetyNetApi.zzf {
        private final boolean zzYM;
        private final Status zzair;

        public zzj(Status status, boolean z) {
            this.zzair = status;
            this.zzYM = z;
        }

        @Override // com.google.android.gms.common.api.Result
        public Status getStatus() {
            return this.zzair;
        }
    }

    public static PendingResult<SafetyNetApi.SafeBrowsingResult> zza(GoogleApiClient googleApiClient, final String str, final int i, final String str2, final int... iArr) {
        if (iArr.length == 0) {
            throw new IllegalArgumentException("Null threatTypes in lookupUri");
        }
        if (!TextUtils.isEmpty(str)) {
            return googleApiClient.zza((GoogleApiClient) new zzf(googleApiClient) { // from class: com.google.android.gms.internal.zzazv.3
                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.google.android.gms.internal.zzaad.zza
                public void zza(zzazw zzazwVar) throws RemoteException {
                    ArrayList arrayList = new ArrayList();
                    for (int i2 : iArr) {
                        arrayList.add(Integer.valueOf(i2));
                    }
                    zzazwVar.zza(this.zzbDr, arrayList, i, str, str2);
                }
            });
        }
        throw new IllegalArgumentException("Null or empty uri in lookupUri");
    }

    public static PendingResult<SafetyNetApi.AttestationResult> zza(GoogleApiClient googleApiClient, final byte[] bArr, final String str) {
        return googleApiClient.zza((GoogleApiClient) new zzb(googleApiClient) { // from class: com.google.android.gms.internal.zzazv.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzazw zzazwVar) throws RemoteException {
                zzazwVar.zzb(this.zzbDr, bArr, str);
            }
        });
    }

    @Override // com.google.android.gms.safetynet.SafetyNetApi
    public PendingResult<SafetyNetApi.AttestationResult> attest(GoogleApiClient googleApiClient, byte[] bArr) {
        return zza(googleApiClient, bArr, null);
    }

    @Override // com.google.android.gms.safetynet.SafetyNetApi
    public PendingResult<SafetyNetApi.zzf> enableVerifyApps(GoogleApiClient googleApiClient) {
        return googleApiClient.zza((GoogleApiClient) new zzc(this, googleApiClient) { // from class: com.google.android.gms.internal.zzazv.4
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzazw zzazwVar) throws RemoteException {
                zzazwVar.zzd(this.zzbDr);
            }
        });
    }

    @Override // com.google.android.gms.safetynet.SafetyNetApi
    public boolean isVerifyAppsEnabled(Context context) {
        return new zzbac(context).zzPE();
    }

    @Override // com.google.android.gms.safetynet.SafetyNetApi
    public PendingResult<SafetyNetApi.zzc> listHarmfulApps(GoogleApiClient googleApiClient) {
        return googleApiClient.zza((GoogleApiClient) new zzd(this, googleApiClient) { // from class: com.google.android.gms.internal.zzazv.5
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzazw zzazwVar) throws RemoteException {
                zzazwVar.zze(this.zzbDr);
            }
        });
    }

    @Override // com.google.android.gms.safetynet.SafetyNetApi
    public PendingResult<SafetyNetApi.SafeBrowsingResult> lookupUri(GoogleApiClient googleApiClient, String str, int... iArr) {
        return zza(googleApiClient, str, 1, null, iArr);
    }

    @Override // com.google.android.gms.safetynet.SafetyNetApi
    public PendingResult<SafetyNetApi.SafeBrowsingResult> lookupUri(GoogleApiClient googleApiClient, List<Integer> list, String str) {
        return zza(googleApiClient, list, str, null);
    }

    @Override // com.google.android.gms.safetynet.SafetyNetApi
    public boolean lookupUriInLocalBlacklist(String str, int... iArr) {
        if (iArr == null) {
            throw new IllegalArgumentException("Null threatTypes in lookupUri");
        }
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("Null or empty uri in lookupUri");
        }
        if (zzbDh == null || zzbDi == 0 || SystemClock.elapsedRealtime() - zzbDi >= 1200000) {
            return true;
        }
        if (zzbDh == null || zzbDh.size() == 0) {
            return true;
        }
        List<zzazy> zzPz = new zzbab(str).zzPz();
        if (zzPz == null || zzPz.isEmpty()) {
            return true;
        }
        for (zzazy zzazyVar : zzPz) {
            for (int i : iArr) {
                zzbaa zzbaaVar = zzbDh.get(i);
                if (zzbaaVar != null && !zzbaaVar.zzI(zzazyVar.zznr(4).getBytes())) {
                }
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.gms.safetynet.SafetyNetApi
    public PendingResult<SafetyNetApi.zzd> verifyWithRecaptcha(GoogleApiClient googleApiClient, final String str) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("Null or empty site key in verifyWithRecaptcha");
        }
        return googleApiClient.zza((GoogleApiClient) new zze(this, googleApiClient) { // from class: com.google.android.gms.internal.zzazv.6
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzazw zzazwVar) throws RemoteException {
                zzazwVar.zza(this.zzbDr, str);
            }
        });
    }

    public PendingResult<SafetyNetApi.SafeBrowsingResult> zza(GoogleApiClient googleApiClient, final List<Integer> list, final String str, final String str2) {
        if (list == null) {
            throw new IllegalArgumentException("Null threatTypes in lookupUri");
        }
        if (!TextUtils.isEmpty(str)) {
            return googleApiClient.zza((GoogleApiClient) new zzf(this, googleApiClient) { // from class: com.google.android.gms.internal.zzazv.2
                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.google.android.gms.internal.zzaad.zza
                public void zza(zzazw zzazwVar) throws RemoteException {
                    zzazwVar.zza(this.zzbDr, list, 2, str, str2);
                }
            });
        }
        throw new IllegalArgumentException("Null or empty uri in lookupUri");
    }
}
