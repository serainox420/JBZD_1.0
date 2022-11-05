package com.google.android.gms.drive.metadata.internal;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.drive.metadata.MetadataField;
import com.google.android.gms.internal.zzalu;
import com.google.android.gms.internal.zzalv;
import com.google.android.gms.internal.zzalw;
import com.google.android.gms.internal.zzaly;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public final class zzf {
    private static final Map<String, MetadataField<?>> zzaOR = new HashMap();
    private static final Map<String, zza> zzaOS = new HashMap();

    /* loaded from: classes2.dex */
    public interface zza {
        String zzBw();

        void zzb(DataHolder dataHolder);
    }

    static {
        zzb(zzalu.zzaOX);
        zzb(zzalu.zzaPD);
        zzb(zzalu.zzaPu);
        zzb(zzalu.zzaPB);
        zzb(zzalu.zzaPE);
        zzb(zzalu.zzaPk);
        zzb(zzalu.zzaPj);
        zzb(zzalu.zzaPl);
        zzb(zzalu.zzaPm);
        zzb(zzalu.zzaPn);
        zzb(zzalu.zzaPh);
        zzb(zzalu.zzaPp);
        zzb(zzalu.zzaPq);
        zzb(zzalu.zzaPr);
        zzb(zzalu.zzaPz);
        zzb(zzalu.zzaOY);
        zzb(zzalu.zzaPw);
        zzb(zzalu.zzaPa);
        zzb(zzalu.zzaPi);
        zzb(zzalu.zzaPb);
        zzb(zzalu.zzaPc);
        zzb(zzalu.zzaPd);
        zzb(zzalu.zzaPe);
        zzb(zzalu.zzaPt);
        zzb(zzalu.zzaPo);
        zzb(zzalu.zzaPv);
        zzb(zzalu.zzaPx);
        zzb(zzalu.zzaPy);
        zzb(zzalu.zzaPA);
        zzb(zzalu.zzaPF);
        zzb(zzalu.zzaPG);
        zzb(zzalu.zzaPg);
        zzb(zzalu.zzaPf);
        zzb(zzalu.zzaPC);
        zzb(zzalu.zzaPs);
        zzb(zzalu.zzaOZ);
        zzb(zzalu.zzaPH);
        zzb(zzalu.zzaPI);
        zzb(zzalu.zzaPJ);
        zzb(zzalu.zzaPK);
        zzb(zzalu.zzaPL);
        zzb(zzalu.zzaPM);
        zzb(zzalu.zzaPN);
        zzb(zzalw.zzaPP);
        zzb(zzalw.zzaPR);
        zzb(zzalw.zzaPS);
        zzb(zzalw.zzaPT);
        zzb(zzalw.zzaPQ);
        zzb(zzalw.zzaPU);
        zzb(zzaly.zzaPW);
        zzb(zzaly.zzaPX);
        zzn zznVar = zzalu.zzaPz;
        zza(zzn.zzaOW);
        zza(zzalv.zzaPO);
    }

    public static Collection<MetadataField<?>> zzBv() {
        return Collections.unmodifiableCollection(zzaOR.values());
    }

    public static void zza(DataHolder dataHolder) {
        for (zza zzaVar : zzaOS.values()) {
            zzaVar.zzb(dataHolder);
        }
    }

    private static void zza(zza zzaVar) {
        if (zzaOS.put(zzaVar.zzBw(), zzaVar) != null) {
            String valueOf = String.valueOf(zzaVar.zzBw());
            throw new IllegalStateException(new StringBuilder(String.valueOf(valueOf).length() + 46).append("A cleaner for key ").append(valueOf).append(" has already been registered").toString());
        }
    }

    private static void zzb(MetadataField<?> metadataField) {
        if (zzaOR.containsKey(metadataField.getName())) {
            String valueOf = String.valueOf(metadataField.getName());
            throw new IllegalArgumentException(valueOf.length() != 0 ? "Duplicate field name registered: ".concat(valueOf) : new String("Duplicate field name registered: "));
        } else {
            zzaOR.put(metadataField.getName(), metadataField);
        }
    }

    public static MetadataField<?> zzdJ(String str) {
        return zzaOR.get(str);
    }
}
