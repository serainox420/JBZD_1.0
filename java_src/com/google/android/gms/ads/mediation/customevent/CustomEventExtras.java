package com.google.android.gms.ads.mediation.customevent;

import com.google.ads.mediation.h;
import java.util.HashMap;
@Deprecated
/* loaded from: classes.dex */
public final class CustomEventExtras implements h {
    private final HashMap<String, Object> zzaaW = new HashMap<>();

    public Object getExtra(String str) {
        return this.zzaaW.get(str);
    }

    public void setExtra(String str, Object obj) {
        this.zzaaW.put(str, obj);
    }
}
