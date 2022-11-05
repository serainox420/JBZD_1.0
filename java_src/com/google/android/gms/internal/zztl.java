package com.google.android.gms.internal;

import android.app.Activity;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public class zztl implements zzsn {
    public String zzabs;
    public double zzagO = -1.0d;
    public int zzagP = -1;
    public int zzagQ = -1;
    public int zzagR = -1;
    public int zzagS = -1;
    public Map<String, String> zzagT = new HashMap();

    public int getSessionTimeout() {
        return this.zzagP;
    }

    public String getTrackingId() {
        return this.zzabs;
    }

    public String zzcd(String str) {
        String str2 = this.zzagT.get(str);
        return str2 != null ? str2 : str;
    }

    public boolean zzqA() {
        return this.zzagS == 1;
    }

    public boolean zzqs() {
        return this.zzabs != null;
    }

    public boolean zzqt() {
        return this.zzagO >= 0.0d;
    }

    public double zzqu() {
        return this.zzagO;
    }

    public boolean zzqv() {
        return this.zzagP >= 0;
    }

    public boolean zzqw() {
        return this.zzagQ != -1;
    }

    public boolean zzqx() {
        return this.zzagQ == 1;
    }

    public boolean zzqy() {
        return this.zzagR != -1;
    }

    public boolean zzqz() {
        return this.zzagR == 1;
    }

    public String zzr(Activity activity) {
        return zzcd(activity.getClass().getCanonicalName());
    }
}
