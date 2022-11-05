package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.zzak;
import java.io.UnsupportedEncodingException;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class zzbg extends zzam {
    private static final String ID = com.google.android.gms.internal.zzah.JOINER.toString();
    private static final String zzbGf = com.google.android.gms.internal.zzai.ARG0.toString();
    private static final String zzbGx = com.google.android.gms.internal.zzai.ITEM_SEPARATOR.toString();
    private static final String zzbGy = com.google.android.gms.internal.zzai.KEY_VALUE_SEPARATOR.toString();
    private static final String zzbGz = com.google.android.gms.internal.zzai.ESCAPE.toString();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public enum zza {
        NONE,
        URL,
        BACKSLASH
    }

    public zzbg() {
        super(ID, zzbGf);
    }

    private String zza(String str, zza zzaVar, Set<Character> set) {
        switch (zzaVar) {
            case URL:
                try {
                    return zzdp.zzhD(str);
                } catch (UnsupportedEncodingException e) {
                    zzbo.zzb("Joiner: unsupported encoding", e);
                    return str;
                }
            case BACKSLASH:
                String replace = str.replace("\\", "\\\\");
                Iterator<Character> it = set.iterator();
                while (true) {
                    String str2 = replace;
                    if (!it.hasNext()) {
                        return str2;
                    }
                    String ch = it.next().toString();
                    String valueOf = String.valueOf(ch);
                    replace = str2.replace(ch, valueOf.length() != 0 ? "\\".concat(valueOf) : new String("\\"));
                }
            default:
                return str;
        }
    }

    private void zza(StringBuilder sb, String str, zza zzaVar, Set<Character> set) {
        sb.append(zza(str, zzaVar, set));
    }

    private void zza(Set<Character> set, String str) {
        for (int i = 0; i < str.length(); i++) {
            set.add(Character.valueOf(str.charAt(i)));
        }
    }

    @Override // com.google.android.gms.tagmanager.zzam
    public boolean zzQb() {
        return true;
    }

    @Override // com.google.android.gms.tagmanager.zzam
    public zzak.zza zzZ(Map<String, zzak.zza> map) {
        HashSet hashSet;
        zza zzaVar;
        zzak.zza zzaVar2 = map.get(zzbGf);
        if (zzaVar2 == null) {
            return zzdl.zzRR();
        }
        zzak.zza zzaVar3 = map.get(zzbGx);
        String zze = zzaVar3 != null ? zzdl.zze(zzaVar3) : "";
        zzak.zza zzaVar4 = map.get(zzbGy);
        String zze2 = zzaVar4 != null ? zzdl.zze(zzaVar4) : "=";
        zza zzaVar5 = zza.NONE;
        zzak.zza zzaVar6 = map.get(zzbGz);
        if (zzaVar6 != null) {
            String zze3 = zzdl.zze(zzaVar6);
            if ("url".equals(zze3)) {
                zzaVar = zza.URL;
                hashSet = null;
            } else if (!"backslash".equals(zze3)) {
                String valueOf = String.valueOf(zze3);
                zzbo.e(valueOf.length() != 0 ? "Joiner: unsupported escape type: ".concat(valueOf) : new String("Joiner: unsupported escape type: "));
                return zzdl.zzRR();
            } else {
                zzaVar = zza.BACKSLASH;
                hashSet = new HashSet();
                zza(hashSet, zze);
                zza(hashSet, zze2);
                hashSet.remove('\\');
            }
        } else {
            hashSet = null;
            zzaVar = zzaVar5;
        }
        StringBuilder sb = new StringBuilder();
        switch (zzaVar2.type) {
            case 2:
                boolean z = true;
                zzak.zza[] zzaVarArr = zzaVar2.zzlu;
                int length = zzaVarArr.length;
                int i = 0;
                while (i < length) {
                    zzak.zza zzaVar7 = zzaVarArr[i];
                    if (!z) {
                        sb.append(zze);
                    }
                    zza(sb, zzdl.zze(zzaVar7), zzaVar, hashSet);
                    i++;
                    z = false;
                }
                break;
            case 3:
                for (int i2 = 0; i2 < zzaVar2.zzlv.length; i2++) {
                    if (i2 > 0) {
                        sb.append(zze);
                    }
                    String zze4 = zzdl.zze(zzaVar2.zzlv[i2]);
                    String zze5 = zzdl.zze(zzaVar2.zzlw[i2]);
                    zza(sb, zze4, zzaVar, hashSet);
                    sb.append(zze2);
                    zza(sb, zze5, zzaVar, hashSet);
                }
                break;
            default:
                zza(sb, zzdl.zze(zzaVar2), zzaVar, hashSet);
                break;
        }
        return zzdl.zzR(sb.toString());
    }
}
