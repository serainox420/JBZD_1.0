package com.google.android.gms.internal;

import com.flurry.android.Constants;
import io.fabric.sdk.android.services.b.b;
import java.lang.reflect.Array;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* loaded from: classes2.dex */
public final class zzbxu {
    private static void zza(String str, Object obj, StringBuffer stringBuffer, StringBuffer stringBuffer2) throws IllegalAccessException, InvocationTargetException {
        Field[] fields;
        if (obj == null) {
            return;
        }
        if (!(obj instanceof zzbxt)) {
            stringBuffer2.append(stringBuffer).append(zzkc(str)).append(": ");
            if (obj instanceof String) {
                stringBuffer2.append("\"").append(zzcF((String) obj)).append("\"");
            } else if (obj instanceof byte[]) {
                zza((byte[]) obj, stringBuffer2);
            } else {
                stringBuffer2.append(obj);
            }
            stringBuffer2.append("\n");
            return;
        }
        int length = stringBuffer.length();
        if (str != null) {
            stringBuffer2.append(stringBuffer).append(zzkc(str)).append(" <\n");
            stringBuffer.append("  ");
        }
        Class<?> cls = obj.getClass();
        for (Field field : cls.getFields()) {
            int modifiers = field.getModifiers();
            String name = field.getName();
            if (!"cachedSize".equals(name) && (modifiers & 1) == 1 && (modifiers & 8) != 8 && !name.startsWith(b.ROLL_OVER_FILE_NAME_SEPARATOR) && !name.endsWith(b.ROLL_OVER_FILE_NAME_SEPARATOR)) {
                Class<?> type = field.getType();
                Object obj2 = field.get(obj);
                if (!type.isArray()) {
                    zza(name, obj2, stringBuffer, stringBuffer2);
                } else if (type.getComponentType() == Byte.TYPE) {
                    zza(name, obj2, stringBuffer, stringBuffer2);
                } else {
                    int length2 = obj2 == null ? 0 : Array.getLength(obj2);
                    for (int i = 0; i < length2; i++) {
                        zza(name, Array.get(obj2, i), stringBuffer, stringBuffer2);
                    }
                }
            }
        }
        for (Method method : cls.getMethods()) {
            String name2 = method.getName();
            if (name2.startsWith("set")) {
                String substring = name2.substring(3);
                try {
                    String valueOf = String.valueOf(substring);
                    if (((Boolean) cls.getMethod(valueOf.length() != 0 ? "has".concat(valueOf) : new String("has"), new Class[0]).invoke(obj, new Object[0])).booleanValue()) {
                        try {
                            String valueOf2 = String.valueOf(substring);
                            zza(substring, cls.getMethod(valueOf2.length() != 0 ? "get".concat(valueOf2) : new String("get"), new Class[0]).invoke(obj, new Object[0]), stringBuffer, stringBuffer2);
                        } catch (NoSuchMethodException e) {
                        }
                    }
                } catch (NoSuchMethodException e2) {
                }
            }
        }
        if (str == null) {
            return;
        }
        stringBuffer.setLength(length);
        stringBuffer2.append(stringBuffer).append(">\n");
    }

    private static void zza(byte[] bArr, StringBuffer stringBuffer) {
        if (bArr == null) {
            stringBuffer.append("\"\"");
            return;
        }
        stringBuffer.append('\"');
        for (byte b : bArr) {
            int i = b & Constants.UNKNOWN;
            if (i == 92 || i == 34) {
                stringBuffer.append('\\').append((char) i);
            } else if (i < 32 || i >= 127) {
                stringBuffer.append(String.format("\\%03o", Integer.valueOf(i)));
            } else {
                stringBuffer.append((char) i);
            }
        }
        stringBuffer.append('\"');
    }

    private static String zzcF(String str) {
        if (!str.startsWith("http") && str.length() > 200) {
            str = String.valueOf(str.substring(0, 200)).concat("[...]");
        }
        return zzdy(str);
    }

    private static String zzdy(String str) {
        int length = str.length();
        StringBuilder sb = new StringBuilder(length);
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            if (charAt < ' ' || charAt > '~' || charAt == '\"' || charAt == '\'') {
                sb.append(String.format("\\u%04x", Integer.valueOf(charAt)));
            } else {
                sb.append(charAt);
            }
        }
        return sb.toString();
    }

    public static <T extends zzbxt> String zzg(T t) {
        if (t == null) {
            return "";
        }
        StringBuffer stringBuffer = new StringBuffer();
        try {
            zza(null, t, new StringBuffer(), stringBuffer);
            return stringBuffer.toString();
        } catch (IllegalAccessException e) {
            String valueOf = String.valueOf(e.getMessage());
            return valueOf.length() != 0 ? "Error printing proto: ".concat(valueOf) : new String("Error printing proto: ");
        } catch (InvocationTargetException e2) {
            String valueOf2 = String.valueOf(e2.getMessage());
            return valueOf2.length() != 0 ? "Error printing proto: ".concat(valueOf2) : new String("Error printing proto: ");
        }
    }

    private static String zzkc(String str) {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if (i == 0) {
                stringBuffer.append(Character.toLowerCase(charAt));
            } else if (Character.isUpperCase(charAt)) {
                stringBuffer.append('_').append(Character.toLowerCase(charAt));
            } else {
                stringBuffer.append(charAt);
            }
        }
        return stringBuffer.toString();
    }
}
