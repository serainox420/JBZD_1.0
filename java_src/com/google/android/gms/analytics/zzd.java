package com.google.android.gms.analytics;

import android.net.Uri;
import android.text.TextUtils;
import android.util.LogPrinter;
import com.facebook.share.internal.ShareConstants;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
/* loaded from: classes2.dex */
public final class zzd implements zzi {
    private static final Uri zzabS;
    private final LogPrinter zzabT = new LogPrinter(4, "GA/LogCatTransport");

    static {
        Uri.Builder builder = new Uri.Builder();
        builder.scheme(ShareConstants.MEDIA_URI);
        builder.authority("local");
        zzabS = builder.build();
    }

    @Override // com.google.android.gms.analytics.zzi
    public void zzb(zze zzeVar) {
        ArrayList<zzf> arrayList = new ArrayList(zzeVar.zzmD());
        Collections.sort(arrayList, new Comparator<zzf>(this) { // from class: com.google.android.gms.analytics.zzd.1
            @Override // java.util.Comparator
            /* renamed from: zza */
            public int compare(zzf zzfVar, zzf zzfVar2) {
                return zzfVar.getClass().getCanonicalName().compareTo(zzfVar2.getClass().getCanonicalName());
            }
        });
        StringBuilder sb = new StringBuilder();
        for (zzf zzfVar : arrayList) {
            String obj = zzfVar.toString();
            if (!TextUtils.isEmpty(obj)) {
                if (sb.length() != 0) {
                    sb.append(", ");
                }
                sb.append(obj);
            }
        }
        this.zzabT.println(sb.toString());
    }

    @Override // com.google.android.gms.analytics.zzi
    public Uri zzmr() {
        return zzabS;
    }
}
