package com.google.android.gms.internal;

import android.content.Context;
import android.os.Build;
import com.facebook.appevents.AppEventsConstants;
import com.facebook.internal.ServerProtocol;
import com.pubmatic.sdk.common.pubmatic.PubMaticConstants;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.Future;
@zzme
/* loaded from: classes.dex */
public class zzge {
    private Context mContext;
    private boolean zzFx = zzgd.zzBZ.get().booleanValue();
    private String zzFy = zzgd.zzCa.get();
    private Map<String, String> zzFz = new LinkedHashMap();
    private String zzwd;

    public zzge(Context context, String str) {
        this.mContext = null;
        this.zzwd = null;
        this.mContext = context;
        this.zzwd = str;
        this.zzFz.put("s", "gmob_sdk");
        this.zzFz.put("v", "3");
        this.zzFz.put(PubMaticConstants.OS_PARAM, Build.VERSION.RELEASE);
        this.zzFz.put(ServerProtocol.DIALOG_PARAM_SDK_VERSION, Build.VERSION.SDK);
        this.zzFz.put("device", com.google.android.gms.ads.internal.zzw.zzcM().zzkN());
        this.zzFz.put("app", context.getApplicationContext() != null ? context.getApplicationContext().getPackageName() : context.getPackageName());
        this.zzFz.put("is_lite_sdk", com.google.android.gms.ads.internal.zzw.zzcM().zzU(context) ? "1" : AppEventsConstants.EVENT_PARAM_VALUE_NO);
        Future<zzni> zzA = com.google.android.gms.ads.internal.zzw.zzcV().zzA(this.mContext);
        try {
            zzA.get();
            this.zzFz.put("network_coarse", Integer.toString(zzA.get().zzUQ));
            this.zzFz.put("network_fine", Integer.toString(zzA.get().zzUR));
        } catch (Exception e) {
            com.google.android.gms.ads.internal.zzw.zzcQ().zza(e, "CsiConfiguration.CsiConfiguration");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Context getContext() {
        return this.mContext;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String zzdA() {
        return this.zzwd;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean zzfu() {
        return this.zzFx;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String zzfv() {
        return this.zzFy;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Map<String, String> zzfw() {
        return this.zzFz;
    }
}
