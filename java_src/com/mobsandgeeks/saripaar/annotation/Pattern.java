package com.mobsandgeeks.saripaar.annotation;

import com.mobsandgeeks.saripaar.rule.PatternRule;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
@Target({ElementType.FIELD})
@ValidateUsing(PatternRule.class)
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes.dex */
public @interface Pattern {
    boolean caseSensitive() default true;

    String message() default "Input does not match pattern";

    int messageResId() default -1;

    String regex();

    int sequence() default -1;
}
