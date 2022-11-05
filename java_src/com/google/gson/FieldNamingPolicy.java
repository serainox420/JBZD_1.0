package com.google.gson;

import com.fasterxml.jackson.core.util.MinimalPrettyPrinter;
import java.lang.reflect.Field;
import java.util.Locale;
/* loaded from: classes2.dex */
public enum FieldNamingPolicy implements c {
    IDENTITY { // from class: com.google.gson.FieldNamingPolicy.1
        @Override // com.google.gson.c
        public String a(Field field) {
            return field.getName();
        }
    },
    UPPER_CAMEL_CASE { // from class: com.google.gson.FieldNamingPolicy.2
        @Override // com.google.gson.c
        public String a(Field field) {
            return a(field.getName());
        }
    },
    UPPER_CAMEL_CASE_WITH_SPACES { // from class: com.google.gson.FieldNamingPolicy.3
        @Override // com.google.gson.c
        public String a(Field field) {
            return a(a(field.getName(), MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR));
        }
    },
    LOWER_CASE_WITH_UNDERSCORES { // from class: com.google.gson.FieldNamingPolicy.4
        @Override // com.google.gson.c
        public String a(Field field) {
            return a(field.getName(), io.fabric.sdk.android.services.b.b.ROLL_OVER_FILE_NAME_SEPARATOR).toLowerCase(Locale.ENGLISH);
        }
    },
    LOWER_CASE_WITH_DASHES { // from class: com.google.gson.FieldNamingPolicy.5
        @Override // com.google.gson.c
        public String a(Field field) {
            return a(field.getName(), "-").toLowerCase(Locale.ENGLISH);
        }
    };

    static String a(String str, String str2) {
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

    static String a(String str) {
        StringBuilder sb = new StringBuilder();
        int i = 0;
        char charAt = str.charAt(0);
        while (i < str.length() - 1 && !Character.isLetter(charAt)) {
            sb.append(charAt);
            i++;
            charAt = str.charAt(i);
        }
        if (i == str.length()) {
            return sb.toString();
        }
        if (!Character.isUpperCase(charAt)) {
            return sb.append(a(Character.toUpperCase(charAt), str, i + 1)).toString();
        }
        return str;
    }

    private static String a(char c, String str, int i) {
        return i < str.length() ? c + str.substring(i) : String.valueOf(c);
    }
}
