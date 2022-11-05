package com.mobsandgeeks.saripaar;

import android.view.View;
import com.mobsandgeeks.saripaar.adapter.ViewDataAdapter;
import com.mobsandgeeks.saripaar.annotation.ValidateUsing;
import com.mobsandgeeks.saripaar.exception.SaripaarViolationException;
import java.lang.annotation.Annotation;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
/* loaded from: classes.dex */
final class Reflector {
    public static Method getAttributeMethod(Class<? extends Annotation> cls, String str) {
        try {
            return cls.getMethod(str, new Class[0]);
        } catch (NoSuchMethodException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static <T> T getAttributeValue(Annotation annotation, String str, Class<T> cls) {
        Class<? extends Annotation> annotationType = annotation.annotationType();
        Method attributeMethod = getAttributeMethod(annotationType, str);
        if (attributeMethod == null) {
            throw new IllegalStateException(String.format("Cannot find attribute '%s' in annotation '%s'.", str, annotationType.getName()));
        }
        try {
            T t = (T) attributeMethod.invoke(annotation, new Object[0]);
            if (!cls.isPrimitive()) {
                return cls.cast(t);
            }
            return t;
        } catch (IllegalAccessException e) {
            e.printStackTrace();
            return null;
        } catch (InvocationTargetException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public static boolean isAnnotated(Class<? extends Annotation> cls, Class<? extends Annotation> cls2) {
        boolean z = false;
        for (Annotation annotation : cls.getDeclaredAnnotations()) {
            z = cls2.equals(annotation.annotationType());
            if (z) {
                break;
            }
        }
        return z;
    }

    public static Method findGetDataMethod(Class<? extends ViewDataAdapter> cls) {
        Method[] declaredMethods;
        for (Method method : cls.getDeclaredMethods()) {
            if ("getData".equals(method.getName())) {
                boolean z = !Modifier.isVolatile(method.getModifiers());
                Class<?>[] parameterTypes = method.getParameterTypes();
                boolean z2 = parameterTypes.length == 1 && View.class.isAssignableFrom(parameterTypes[0]);
                if (z && z2) {
                    return method;
                }
            }
        }
        return null;
    }

    public static AnnotationRule instantiateRule(Class<? extends AnnotationRule> cls, Annotation annotation, ValidationContext validationContext) throws SaripaarViolationException {
        AnnotationRule annotationRule;
        try {
            if (ContextualAnnotationRule.class.isAssignableFrom(cls)) {
                Constructor<? extends AnnotationRule> declaredConstructor = cls.getDeclaredConstructor(ValidationContext.class, annotation.annotationType());
                declaredConstructor.setAccessible(true);
                annotationRule = declaredConstructor.newInstance(validationContext, annotation);
            } else if (!AnnotationRule.class.isAssignableFrom(cls)) {
                annotationRule = null;
            } else {
                Constructor<? extends AnnotationRule> declaredConstructor2 = cls.getDeclaredConstructor(annotation.annotationType());
                declaredConstructor2.setAccessible(true);
                annotationRule = declaredConstructor2.newInstance(annotation);
            }
            return annotationRule;
        } catch (IllegalAccessException e) {
            e.printStackTrace();
            return null;
        } catch (InstantiationException e2) {
            e2.printStackTrace();
            return null;
        } catch (NoSuchMethodException e3) {
            throw new SaripaarViolationException(getMissingConstructorErrorMessage(cls, annotation.annotationType()));
        } catch (InvocationTargetException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    public static Class<?> getRuleDataType(Annotation annotation) {
        return getRuleDataType(getValidateUsingAnnotation(annotation.annotationType()));
    }

    public static Class<?> getRuleDataType(ValidateUsing validateUsing) {
        Class<? extends AnnotationRule> value = validateUsing.value();
        return getRuleTypeFromIsValidMethod(value, value.getDeclaredMethods());
    }

    private static ValidateUsing getValidateUsingAnnotation(Class<? extends Annotation> cls) {
        Annotation[] declaredAnnotations;
        for (Annotation annotation : cls.getDeclaredAnnotations()) {
            if (ValidateUsing.class.equals(annotation.annotationType())) {
                return (ValidateUsing) annotation;
            }
        }
        return null;
    }

    private static String getMissingConstructorErrorMessage(Class<? extends AnnotationRule> cls, Class<? extends Annotation> cls2) {
        if (ContextualAnnotationRule.class.isAssignableFrom(cls)) {
            return String.format("A constructor accepting a '%s' and a '%s' is required for %s.", ValidationContext.class, cls2.getName(), cls.getClass().getName());
        }
        if (!AnnotationRule.class.isAssignableFrom(cls)) {
            return null;
        }
        return String.format("'%s' should have a single-argument constructor that accepts a '%s' instance.", cls.getName(), cls2.getName());
    }

    private static Class<?> getRuleTypeFromIsValidMethod(Class<? extends AnnotationRule> cls, Method[] methodArr) {
        Class<?> cls2 = null;
        for (Method method : methodArr) {
            Class<?>[] parameterTypes = method.getParameterTypes();
            if (matchesIsValidMethodSignature(method, parameterTypes)) {
                if (cls2 != null) {
                    throw new SaripaarViolationException(String.format("Found duplicate 'boolean isValid(T)' method signature in '%s'.", cls.getName()));
                }
                cls2 = parameterTypes[0];
            }
        }
        return cls2;
    }

    private static boolean matchesIsValidMethodSignature(Method method, Class<?>[] clsArr) {
        int modifiers = method.getModifiers();
        return Modifier.isPublic(modifiers) && (!Modifier.isVolatile(modifiers)) && Boolean.TYPE.equals(method.getReturnType()) && "isValid".equals(method.getName()) && (clsArr.length == 1);
    }

    private Reflector() {
    }
}
