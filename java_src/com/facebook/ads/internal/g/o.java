package com.facebook.ads.internal.g;

import android.content.Context;
import com.facebook.internal.AnalyticsEvents;
import java.util.Map;
/* loaded from: classes.dex */
public class o extends d {
    public o(Context context, String str, double d, String str2, Map<String, String> map) {
        super(context, str, d, str2, map);
    }

    @Override // com.facebook.ads.internal.g.d
    public h a() {
        return h.IMMEDIATE;
    }

    @Override // com.facebook.ads.internal.g.d
    public String b() {
        return AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_VIDEO;
    }

    @Override // com.facebook.ads.internal.g.d
    public boolean c() {
        return true;
    }
}
