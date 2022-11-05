package com.google.android.gms.analytics;

import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.internal.zzrt;
import com.google.android.gms.internal.zzrx;
import com.google.android.gms.internal.zzsc;
import java.util.ListIterator;
/* loaded from: classes.dex */
public class zza extends zzg<zza> {
    private final zzsc zzabn;
    private boolean zzabo;

    public zza(zzsc zzscVar) {
        super(zzscVar.zznU(), zzscVar.zznR());
        this.zzabn = zzscVar;
    }

    public void enableAdvertisingIdCollection(boolean z) {
        this.zzabo = z;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.analytics.zzg
    public void zza(zze zzeVar) {
        zzrt zzrtVar = (zzrt) zzeVar.zzb(zzrt.class);
        if (TextUtils.isEmpty(zzrtVar.zzmy())) {
            zzrtVar.setClientId(this.zzabn.zzoi().zzoQ());
        }
        if (!this.zzabo || !TextUtils.isEmpty(zzrtVar.zznv())) {
            return;
        }
        zzrx zzoh = this.zzabn.zzoh();
        zzrtVar.zzbF(zzoh.zznG());
        zzrtVar.zzS(zzoh.zznw());
    }

    public void zzbo(String str) {
        zzac.zzdr(str);
        zzbp(str);
        zzmO().add(new zzb(this.zzabn, str));
    }

    public void zzbp(String str) {
        Uri zzbq = zzb.zzbq(str);
        ListIterator<zzi> listIterator = zzmO().listIterator();
        while (listIterator.hasNext()) {
            if (zzbq.equals(listIterator.next().zzmr())) {
                listIterator.remove();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzsc zzmn() {
        return this.zzabn;
    }

    @Override // com.google.android.gms.analytics.zzg
    public zze zzmo() {
        zze zzmC = zzmN().zzmC();
        zzmC.zza(this.zzabn.zznZ().zzoy());
        zzmC.zza(this.zzabn.zzoa().zzpB());
        zzd(zzmC);
        return zzmC;
    }
}
