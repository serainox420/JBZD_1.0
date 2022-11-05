package com.google.android.gms.tagmanager;

import android.content.Context;
import android.net.Uri;
import com.google.android.gms.internal.zzak;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class zzj extends zzdj {
    private static final String ID = com.google.android.gms.internal.zzah.ARBITRARY_PIXEL.toString();
    private static final String URL = com.google.android.gms.internal.zzai.URL.toString();
    private static final String zzbEO = com.google.android.gms.internal.zzai.ADDITIONAL_PARAMS.toString();
    private static final String zzbEP = com.google.android.gms.internal.zzai.UNREPEATABLE.toString();
    static final String zzbEQ;
    private static final Set<String> zzbER;
    private final Context mContext;
    private final zza zzbES;

    /* loaded from: classes2.dex */
    public interface zza {
        zzat zzQc();
    }

    static {
        String str = ID;
        zzbEQ = new StringBuilder(String.valueOf(str).length() + 17).append("gtm_").append(str).append("_unrepeatable").toString();
        zzbER = new HashSet();
    }

    public zzj(final Context context) {
        this(context, new zza() { // from class: com.google.android.gms.tagmanager.zzj.1
            @Override // com.google.android.gms.tagmanager.zzj.zza
            public zzat zzQc() {
                return zzaa.zzbT(context);
            }
        });
    }

    zzj(Context context, zza zzaVar) {
        super(ID, URL);
        this.zzbES = zzaVar;
        this.mContext = context;
    }

    private synchronized boolean zzgO(String str) {
        boolean z = true;
        synchronized (this) {
            if (!zzgQ(str)) {
                if (zzgP(str)) {
                    zzbER.add(str);
                } else {
                    z = false;
                }
            }
        }
        return z;
    }

    @Override // com.google.android.gms.tagmanager.zzdj
    public void zzab(Map<String, zzak.zza> map) {
        String zze = map.get(zzbEP) != null ? zzdl.zze(map.get(zzbEP)) : null;
        if (zze == null || !zzgO(zze)) {
            Uri.Builder buildUpon = Uri.parse(zzdl.zze(map.get(URL))).buildUpon();
            zzak.zza zzaVar = map.get(zzbEO);
            if (zzaVar != null) {
                Object zzj = zzdl.zzj(zzaVar);
                if (!(zzj instanceof List)) {
                    String valueOf = String.valueOf(buildUpon.build().toString());
                    zzbo.e(valueOf.length() != 0 ? "ArbitraryPixel: additional params not a list: not sending partial hit: ".concat(valueOf) : new String("ArbitraryPixel: additional params not a list: not sending partial hit: "));
                    return;
                }
                for (Object obj : (List) zzj) {
                    if (!(obj instanceof Map)) {
                        String valueOf2 = String.valueOf(buildUpon.build().toString());
                        zzbo.e(valueOf2.length() != 0 ? "ArbitraryPixel: additional params contains non-map: not sending partial hit: ".concat(valueOf2) : new String("ArbitraryPixel: additional params contains non-map: not sending partial hit: "));
                        return;
                    }
                    for (Map.Entry entry : ((Map) obj).entrySet()) {
                        buildUpon.appendQueryParameter(entry.getKey().toString(), entry.getValue().toString());
                    }
                }
            }
            String uri = buildUpon.build().toString();
            this.zzbES.zzQc().zzhf(uri);
            String valueOf3 = String.valueOf(uri);
            zzbo.v(valueOf3.length() != 0 ? "ArbitraryPixel: url = ".concat(valueOf3) : new String("ArbitraryPixel: url = "));
            if (zze == null) {
                return;
            }
            synchronized (zzj.class) {
                zzbER.add(zze);
                zzdd.zzd(this.mContext, zzbEQ, zze, "true");
            }
        }
    }

    boolean zzgP(String str) {
        return this.mContext.getSharedPreferences(zzbEQ, 0).contains(str);
    }

    boolean zzgQ(String str) {
        return zzbER.contains(str);
    }
}
