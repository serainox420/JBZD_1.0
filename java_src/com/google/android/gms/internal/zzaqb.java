package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.internal.zzaqa;
import java.util.ArrayList;
import java.util.Collection;
/* loaded from: classes2.dex */
public class zzaqb {
    private final Collection<zzaqa> zzAZ = new ArrayList();
    private final Collection<zzaqa.zzd> zzBa = new ArrayList();
    private final Collection<zzaqa.zzd> zzBb = new ArrayList();

    public static void initialize(Context context) {
        zzaqe.zzDF().initialize(context);
    }

    public void zza(zzaqa zzaqaVar) {
        this.zzAZ.add(zzaqaVar);
    }
}
