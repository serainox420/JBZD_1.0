package com.google.android.gms.internal;

import com.pubmatic.sdk.banner.mraid.Consts;
import org.json.JSONException;
import org.json.JSONObject;
@zzme
/* loaded from: classes.dex */
public class zzku {
    private final boolean zzMr;
    private final boolean zzMs;
    private final boolean zzMt;
    private final boolean zzMu;
    private final boolean zzMv;

    /* loaded from: classes2.dex */
    public static final class zza {
        private boolean zzMr;
        private boolean zzMs;
        private boolean zzMt;
        private boolean zzMu;
        private boolean zzMv;

        public zzku zzho() {
            return new zzku(this);
        }

        public zza zzt(boolean z) {
            this.zzMr = z;
            return this;
        }

        public zza zzu(boolean z) {
            this.zzMs = z;
            return this;
        }

        public zza zzv(boolean z) {
            this.zzMt = z;
            return this;
        }

        public zza zzw(boolean z) {
            this.zzMu = z;
            return this;
        }

        public zza zzx(boolean z) {
            this.zzMv = z;
            return this;
        }
    }

    private zzku(zza zzaVar) {
        this.zzMr = zzaVar.zzMr;
        this.zzMs = zzaVar.zzMs;
        this.zzMt = zzaVar.zzMt;
        this.zzMu = zzaVar.zzMu;
        this.zzMv = zzaVar.zzMv;
    }

    public JSONObject toJson() {
        try {
            return new JSONObject().put("sms", this.zzMr).put("tel", this.zzMs).put(Consts.FeatureCalendar, this.zzMt).put("storePicture", this.zzMu).put(Consts.FeatureInlineVideo, this.zzMv);
        } catch (JSONException e) {
            zzpk.zzb("Error occured while obtaining the MRAID capabilities.", e);
            return null;
        }
    }
}
