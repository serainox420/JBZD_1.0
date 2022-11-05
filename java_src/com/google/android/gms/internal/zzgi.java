package com.google.android.gms.internal;

import android.text.TextUtils;
import java.util.Map;
@zzme
/* loaded from: classes.dex */
public abstract class zzgi {
    @zzme
    public static final zzgi zzFH = new zzgi() { // from class: com.google.android.gms.internal.zzgi.1
        @Override // com.google.android.gms.internal.zzgi
        public String zzg(String str, String str2) {
            return str2;
        }
    };
    @zzme
    public static final zzgi zzFI = new zzgi() { // from class: com.google.android.gms.internal.zzgi.2
        @Override // com.google.android.gms.internal.zzgi
        public String zzg(String str, String str2) {
            return str != null ? str : str2;
        }
    };
    @zzme
    public static final zzgi zzFJ = new zzgi() { // from class: com.google.android.gms.internal.zzgi.3
        private String zzW(String str) {
            if (TextUtils.isEmpty(str)) {
                return str;
            }
            int i = 0;
            int length = str.length();
            while (i < str.length() && str.charAt(i) == ',') {
                i++;
            }
            while (length > 0 && str.charAt(length - 1) == ',') {
                length--;
            }
            return (i == 0 && length == str.length()) ? str : str.substring(i, length);
        }

        @Override // com.google.android.gms.internal.zzgi
        public String zzg(String str, String str2) {
            String zzW = zzW(str);
            String zzW2 = zzW(str2);
            return TextUtils.isEmpty(zzW) ? zzW2 : TextUtils.isEmpty(zzW2) ? zzW : new StringBuilder(String.valueOf(zzW).length() + 1 + String.valueOf(zzW2).length()).append(zzW).append(",").append(zzW2).toString();
        }
    };

    public final void zza(Map<String, String> map, String str, String str2) {
        map.put(str, zzg(map.get(str), str2));
    }

    public abstract String zzg(String str, String str2);
}
