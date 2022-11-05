package com.google.android.gms.internal;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes2.dex */
public interface zzadi {

    /* loaded from: classes2.dex */
    public static class zza {
        private final long zzaIC;
        private final Map<String, String> zzaID;
        private final int zzaIE;
        private final List<zzadk> zzaIF;
        private final int zzaIG;
        private final int zzaIH;

        /* renamed from: com.google.android.gms.internal.zzadi$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public static class C0202zza {
            private Map<String, String> zzaID;
            private int zzaIE;
            private long zzaIC = 43200;
            private int zzaIG = -1;
            private int zzaIH = -1;

            public C0202zza zzH(String str, String str2) {
                if (this.zzaID == null) {
                    this.zzaID = new HashMap();
                }
                this.zzaID.put(str, str2);
                return this;
            }

            public C0202zza zzK(long j) {
                this.zzaIC = j;
                return this;
            }

            public C0202zza zzdr(int i) {
                this.zzaIE = i;
                return this;
            }

            public C0202zza zzds(int i) {
                this.zzaIG = i;
                return this;
            }

            public C0202zza zzdt(int i) {
                this.zzaIH = i;
                return this;
            }

            public zza zzzD() {
                return new zza(this);
            }
        }

        private zza(C0202zza c0202zza) {
            this.zzaIC = c0202zza.zzaIC;
            this.zzaID = c0202zza.zzaID;
            this.zzaIE = c0202zza.zzaIE;
            this.zzaIF = null;
            this.zzaIG = c0202zza.zzaIG;
            this.zzaIH = c0202zza.zzaIH;
        }

        public int zzzA() {
            return this.zzaIE;
        }

        public int zzzB() {
            return this.zzaIH;
        }

        public int zzzC() {
            return this.zzaIG;
        }

        public long zzzy() {
            return this.zzaIC;
        }

        public Map<String, String> zzzz() {
            return this.zzaID == null ? Collections.emptyMap() : this.zzaID;
        }
    }

    /* loaded from: classes2.dex */
    public interface zzb extends Result {
        @Override // com.google.android.gms.common.api.Result
        Status getStatus();

        long getThrottleEndTimeMillis();

        byte[] zza(String str, byte[] bArr, String str2);

        List<byte[]> zzzE();

        Map<String, Set<String>> zzzF();
    }

    PendingResult<zzb> zza(GoogleApiClient googleApiClient, zza zzaVar);
}
