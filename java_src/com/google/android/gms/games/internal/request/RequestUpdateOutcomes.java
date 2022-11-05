package com.google.android.gms.games.internal.request;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.games.internal.constants.RequestUpdateResultOutcome;
import java.util.HashMap;
import java.util.Set;
/* loaded from: classes2.dex */
public final class RequestUpdateOutcomes {
    private static final String[] zzbdy = {"requestId", "outcome"};
    private final int zzavD;
    private final HashMap<String, Integer> zzbdz;

    /* loaded from: classes2.dex */
    public static final class Builder {
        private HashMap<String, Integer> zzbdz = new HashMap<>();
        private int zzavD = 0;

        public RequestUpdateOutcomes zzGm() {
            return new RequestUpdateOutcomes(this.zzavD, this.zzbdz);
        }

        public Builder zzja(int i) {
            this.zzavD = i;
            return this;
        }

        public Builder zzw(String str, int i) {
            if (RequestUpdateResultOutcome.isValid(i)) {
                this.zzbdz.put(str, Integer.valueOf(i));
            }
            return this;
        }
    }

    private RequestUpdateOutcomes(int i, HashMap<String, Integer> hashMap) {
        this.zzavD = i;
        this.zzbdz = hashMap;
    }

    public static RequestUpdateOutcomes zzal(DataHolder dataHolder) {
        Builder builder = new Builder();
        builder.zzja(dataHolder.getStatusCode());
        int count = dataHolder.getCount();
        for (int i = 0; i < count; i++) {
            int zzcI = dataHolder.zzcI(i);
            builder.zzw(dataHolder.zzd("requestId", i, zzcI), dataHolder.zzc("outcome", i, zzcI));
        }
        return builder.zzGm();
    }

    public Set<String> getRequestIds() {
        return this.zzbdz.keySet();
    }

    public int getRequestOutcome(String str) {
        zzac.zzb(this.zzbdz.containsKey(str), new StringBuilder(String.valueOf(str).length() + 46).append("Request ").append(str).append(" was not part of the update operation!").toString());
        return this.zzbdz.get(str).intValue();
    }
}
