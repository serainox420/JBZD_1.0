package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.zzak;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
/* loaded from: classes2.dex */
public class zzbj extends zzam {
    private static final String ID = com.google.android.gms.internal.zzah.LANGUAGE.toString();

    public zzbj() {
        super(ID, new String[0]);
    }

    @Override // com.google.android.gms.tagmanager.zzam
    public /* bridge */ /* synthetic */ String zzQL() {
        return super.zzQL();
    }

    @Override // com.google.android.gms.tagmanager.zzam
    public /* bridge */ /* synthetic */ Set zzQM() {
        return super.zzQM();
    }

    @Override // com.google.android.gms.tagmanager.zzam
    public boolean zzQb() {
        return false;
    }

    @Override // com.google.android.gms.tagmanager.zzam
    public zzak.zza zzZ(Map<String, zzak.zza> map) {
        String language;
        Locale locale = Locale.getDefault();
        if (locale != null && (language = locale.getLanguage()) != null) {
            return zzdl.zzR(language.toLowerCase());
        }
        return zzdl.zzRR();
    }
}
