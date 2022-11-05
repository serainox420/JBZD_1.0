package com.google.android.gms.awareness.fence;

import android.app.PendingIntent;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.internal.zzaep;
import com.google.android.gms.internal.zzaez;
import com.google.android.gms.internal.zzafh;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public interface FenceUpdateRequest {

    /* loaded from: classes2.dex */
    public static class Builder {
        private final ArrayList<zzafh> zzama = new ArrayList<>();

        public Builder addFence(String str, long j, AwarenessFence awarenessFence, PendingIntent pendingIntent) {
            zzac.zzdr(str);
            zzac.zzw(awarenessFence);
            zzac.zzw(pendingIntent);
            this.zzama.add(zzafh.zza(str, j, (zzaep) awarenessFence, pendingIntent));
            return this;
        }

        public Builder addFence(String str, AwarenessFence awarenessFence, PendingIntent pendingIntent) {
            return addFence(str, 0L, awarenessFence, pendingIntent);
        }

        public FenceUpdateRequest build() {
            return new zzaez(this.zzama);
        }

        public Builder removeFence(PendingIntent pendingIntent) {
            zzac.zzw(pendingIntent);
            this.zzama.add(zzafh.zza(pendingIntent));
            return this;
        }

        public Builder removeFence(String str) {
            zzac.zzdr(str);
            this.zzama.add(zzafh.zzdC(str));
            return this;
        }
    }
}
