package com.google.android.gms.internal;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes2.dex */
public class zzbra {
    private final zzbrn zzcaF;
    private final zzbpe zzcdS;

    public zzbra(zzbpa zzbpaVar) {
        this.zzcdS = zzbpaVar.zzYA();
        this.zzcaF = zzbpaVar.zziV("EventRaiser");
    }

    public void zzab(List<? extends zzbqy> list) {
        if (this.zzcaF.zzaaD()) {
            this.zzcaF.zzi(new StringBuilder(28).append("Raising ").append(list.size()).append(" event(s)").toString(), new Object[0]);
        }
        final ArrayList arrayList = new ArrayList(list);
        this.zzcdS.zzq(new Runnable() { // from class: com.google.android.gms.internal.zzbra.1
            @Override // java.lang.Runnable
            public void run() {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    zzbqy zzbqyVar = (zzbqy) it.next();
                    if (zzbra.this.zzcaF.zzaaD()) {
                        zzbrn zzbrnVar = zzbra.this.zzcaF;
                        String valueOf = String.valueOf(zzbqyVar.toString());
                        zzbrnVar.zzi(valueOf.length() != 0 ? "Raising ".concat(valueOf) : new String("Raising "), new Object[0]);
                    }
                    zzbqyVar.zzZT();
                }
            }
        });
    }
}
