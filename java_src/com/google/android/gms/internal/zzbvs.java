package com.google.android.gms.internal;

import java.io.ObjectInputStream;
import java.io.ObjectStreamClass;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
/* loaded from: classes2.dex */
public abstract class zzbvs {
    public static zzbvs zzadD() {
        try {
            Class<?> cls = Class.forName("sun.misc.Unsafe");
            Field declaredField = cls.getDeclaredField("theUnsafe");
            declaredField.setAccessible(true);
            final Object obj = declaredField.get(null);
            final Method method = cls.getMethod("allocateInstance", Class.class);
            return new zzbvs() { // from class: com.google.android.gms.internal.zzbvs.1
                @Override // com.google.android.gms.internal.zzbvs
                public <T> T zze(Class<T> cls2) throws Exception {
                    return (T) method.invoke(obj, cls2);
                }
            };
        } catch (Exception e) {
            try {
                Method declaredMethod = ObjectStreamClass.class.getDeclaredMethod("getConstructorId", Class.class);
                declaredMethod.setAccessible(true);
                final int intValue = ((Integer) declaredMethod.invoke(null, Object.class)).intValue();
                final Method declaredMethod2 = ObjectStreamClass.class.getDeclaredMethod("newInstance", Class.class, Integer.TYPE);
                declaredMethod2.setAccessible(true);
                return new zzbvs() { // from class: com.google.android.gms.internal.zzbvs.2
                    @Override // com.google.android.gms.internal.zzbvs
                    public <T> T zze(Class<T> cls2) throws Exception {
                        return (T) declaredMethod2.invoke(null, cls2, Integer.valueOf(intValue));
                    }
                };
            } catch (Exception e2) {
                try {
                    final Method declaredMethod3 = ObjectInputStream.class.getDeclaredMethod("newInstance", Class.class, Class.class);
                    declaredMethod3.setAccessible(true);
                    return new zzbvs() { // from class: com.google.android.gms.internal.zzbvs.3
                        @Override // com.google.android.gms.internal.zzbvs
                        public <T> T zze(Class<T> cls2) throws Exception {
                            return (T) declaredMethod3.invoke(null, cls2, Object.class);
                        }
                    };
                } catch (Exception e3) {
                    return new zzbvs() { // from class: com.google.android.gms.internal.zzbvs.4
                        @Override // com.google.android.gms.internal.zzbvs
                        public <T> T zze(Class<T> cls2) {
                            String valueOf = String.valueOf(cls2);
                            throw new UnsupportedOperationException(new StringBuilder(String.valueOf(valueOf).length() + 16).append("Cannot allocate ").append(valueOf).toString());
                        }
                    };
                }
            }
        }
    }

    public abstract <T> T zze(Class<T> cls) throws Exception;
}
