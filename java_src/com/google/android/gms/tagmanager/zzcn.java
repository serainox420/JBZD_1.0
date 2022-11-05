package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.zzak;
import java.util.Map;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class zzcn extends zzdg {
    private static final String ID = com.google.android.gms.internal.zzah.REGEX.toString();
    private static final String zzbHp = com.google.android.gms.internal.zzai.IGNORE_CASE.toString();

    public zzcn() {
        super(ID);
    }

    @Override // com.google.android.gms.tagmanager.zzdg
    protected boolean zza(String str, String str2, Map<String, zzak.zza> map) {
        try {
            return Pattern.compile(str2, zzdl.zzi(map.get(zzbHp)).booleanValue() ? 66 : 64).matcher(str).find();
        } catch (PatternSyntaxException e) {
            return false;
        }
    }
}
