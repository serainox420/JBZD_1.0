package com.fasterxml.jackson.databind.util;

import com.fasterxml.jackson.databind.introspect.AnnotatedMethod;
/* loaded from: classes.dex */
public class BeanUtil {
    public static String okNameForGetter(AnnotatedMethod annotatedMethod, boolean z) {
        String name = annotatedMethod.getName();
        String okNameForIsGetter = okNameForIsGetter(annotatedMethod, name, z);
        if (okNameForIsGetter == null) {
            return okNameForRegularGetter(annotatedMethod, name, z);
        }
        return okNameForIsGetter;
    }

    public static String okNameForRegularGetter(AnnotatedMethod annotatedMethod, String str, boolean z) {
        if (str.startsWith("get")) {
            if ("getCallbacks".equals(str)) {
                if (isCglibGetCallbacks(annotatedMethod)) {
                    return null;
                }
            } else if ("getMetaClass".equals(str) && isGroovyMetaClassGetter(annotatedMethod)) {
                return null;
            }
            return z ? stdManglePropertyName(str, 3) : legacyManglePropertyName(str, 3);
        }
        return null;
    }

    public static String okNameForIsGetter(AnnotatedMethod annotatedMethod, String str, boolean z) {
        Class<?> rawType;
        if (!str.startsWith("is") || !((rawType = annotatedMethod.getRawType()) == Boolean.class || rawType == Boolean.TYPE)) {
            return null;
        }
        return z ? stdManglePropertyName(str, 2) : legacyManglePropertyName(str, 2);
    }

    public static String okNameForSetter(AnnotatedMethod annotatedMethod, boolean z) {
        String okNameForMutator = okNameForMutator(annotatedMethod, "set", z);
        if (okNameForMutator == null || ("metaClass".equals(okNameForMutator) && isGroovyMetaClassSetter(annotatedMethod))) {
            return null;
        }
        return okNameForMutator;
    }

    public static String okNameForMutator(AnnotatedMethod annotatedMethod, String str, boolean z) {
        String name = annotatedMethod.getName();
        if (name.startsWith(str)) {
            return z ? stdManglePropertyName(name, str.length()) : legacyManglePropertyName(name, str.length());
        }
        return null;
    }

    @Deprecated
    public static String okNameForGetter(AnnotatedMethod annotatedMethod) {
        return okNameForGetter(annotatedMethod, false);
    }

    @Deprecated
    public static String okNameForRegularGetter(AnnotatedMethod annotatedMethod, String str) {
        return okNameForRegularGetter(annotatedMethod, str, false);
    }

    @Deprecated
    public static String okNameForIsGetter(AnnotatedMethod annotatedMethod, String str) {
        return okNameForIsGetter(annotatedMethod, str, false);
    }

    @Deprecated
    public static String okNameForSetter(AnnotatedMethod annotatedMethod) {
        return okNameForSetter(annotatedMethod, false);
    }

    @Deprecated
    public static String okNameForMutator(AnnotatedMethod annotatedMethod, String str) {
        return okNameForMutator(annotatedMethod, str, false);
    }

    protected static boolean isCglibGetCallbacks(AnnotatedMethod annotatedMethod) {
        String packageName;
        Class<?> rawType = annotatedMethod.getRawType();
        if (rawType == null || !rawType.isArray() || (packageName = ClassUtil.getPackageName(rawType.getComponentType())) == null || !packageName.contains(".cglib")) {
            return false;
        }
        return packageName.startsWith("net.sf.cglib") || packageName.startsWith("org.hibernate.repackage.cglib") || packageName.startsWith("org.springframework.cglib");
    }

    protected static boolean isGroovyMetaClassSetter(AnnotatedMethod annotatedMethod) {
        String packageName = ClassUtil.getPackageName(annotatedMethod.getRawParameterType(0));
        return packageName != null && packageName.startsWith("groovy.lang");
    }

    protected static boolean isGroovyMetaClassGetter(AnnotatedMethod annotatedMethod) {
        String packageName;
        Class<?> rawType = annotatedMethod.getRawType();
        return rawType != null && !rawType.isArray() && (packageName = ClassUtil.getPackageName(rawType)) != null && packageName.startsWith("groovy.lang");
    }

    protected static String legacyManglePropertyName(String str, int i) {
        int length = str.length();
        if (length == i) {
            return null;
        }
        char charAt = str.charAt(i);
        char lowerCase = Character.toLowerCase(charAt);
        if (charAt == lowerCase) {
            return str.substring(i);
        }
        StringBuilder sb = new StringBuilder(length - i);
        sb.append(lowerCase);
        int i2 = i + 1;
        while (true) {
            if (i2 >= length) {
                break;
            }
            char charAt2 = str.charAt(i2);
            char lowerCase2 = Character.toLowerCase(charAt2);
            if (charAt2 == lowerCase2) {
                sb.append((CharSequence) str, i2, length);
                break;
            }
            sb.append(lowerCase2);
            i2++;
        }
        return sb.toString();
    }

    protected static String stdManglePropertyName(String str, int i) {
        int length = str.length();
        if (length == i) {
            return null;
        }
        char charAt = str.charAt(i);
        char lowerCase = Character.toLowerCase(charAt);
        if (charAt == lowerCase) {
            return str.substring(i);
        }
        if (i + 1 < length && Character.isUpperCase(str.charAt(i + 1))) {
            return str.substring(i);
        }
        StringBuilder sb = new StringBuilder(length - i);
        sb.append(lowerCase);
        sb.append((CharSequence) str, i + 1, length);
        return sb.toString();
    }
}
