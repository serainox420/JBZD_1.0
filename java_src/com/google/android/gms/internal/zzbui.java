package com.google.android.gms.internal;

import com.fasterxml.jackson.core.util.MinimalPrettyPrinter;
import io.fabric.sdk.android.services.b.b;
import java.lang.reflect.Field;
import java.util.Locale;
/* loaded from: classes2.dex */
public enum zzbui implements zzbuj {
    IDENTITY { // from class: com.google.android.gms.internal.zzbui.1
        @Override // com.google.android.gms.internal.zzbuj
        public String zzc(Field field) {
            return field.getName();
        }
    },
    UPPER_CAMEL_CASE { // from class: com.google.android.gms.internal.zzbui.2
        @Override // com.google.android.gms.internal.zzbuj
        public String zzc(Field field) {
            return zzbui.zzjP(field.getName());
        }
    },
    UPPER_CAMEL_CASE_WITH_SPACES { // from class: com.google.android.gms.internal.zzbui.3
        @Override // com.google.android.gms.internal.zzbuj
        public String zzc(Field field) {
            return zzbui.zzjP(zzbui.zzaE(field.getName(), MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR));
        }
    },
    LOWER_CASE_WITH_UNDERSCORES { // from class: com.google.android.gms.internal.zzbui.4
        @Override // com.google.android.gms.internal.zzbuj
        public String zzc(Field field) {
            return zzbui.zzaE(field.getName(), b.ROLL_OVER_FILE_NAME_SEPARATOR).toLowerCase(Locale.ENGLISH);
        }
    },
    LOWER_CASE_WITH_DASHES { // from class: com.google.android.gms.internal.zzbui.5
        @Override // com.google.android.gms.internal.zzbuj
        public String zzc(Field field) {
            return zzbui.zzaE(field.getName(), "-").toLowerCase(Locale.ENGLISH);
        }
    };

    private static String zza(char c, String str, int i) {
        if (i < str.length()) {
            String valueOf = String.valueOf(str.substring(i));
            return new StringBuilder(String.valueOf(valueOf).length() + 1).append(c).append(valueOf).toString();
        }
        return String.valueOf(c);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String zzaE(String str, String str2) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if (Character.isUpperCase(charAt) && sb.length() != 0) {
                sb.append(str2);
            }
            sb.append(charAt);
        }
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String zzjP(String str) {
        int i = 0;
        StringBuilder sb = new StringBuilder();
        char charAt = str.charAt(0);
        while (i < str.length() - 1 && !Character.isLetter(charAt)) {
            sb.append(charAt);
            i++;
            charAt = str.charAt(i);
        }
        return i == str.length() ? sb.toString() : !Character.isUpperCase(charAt) ? sb.append(zza(Character.toUpperCase(charAt), str, i + 1)).toString() : str;
    }
}
