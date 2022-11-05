package com.mobsandgeeks.saripaar.annotation;

import com.mobsandgeeks.saripaar.rule.PasswordRule;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
@Target({ElementType.FIELD})
@ValidateUsing(PasswordRule.class)
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes.dex */
public @interface Password {

    /* loaded from: classes.dex */
    public enum Scheme {
        ANY,
        ALPHA,
        ALPHA_MIXED_CASE,
        NUMERIC,
        ALPHA_NUMERIC,
        ALPHA_NUMERIC_MIXED_CASE,
        ALPHA_NUMERIC_SYMBOLS,
        ALPHA_NUMERIC_MIXED_CASE_SYMBOLS
    }

    String message() default "Invalid password";

    int messageResId() default -1;

    int min() default 6;

    Scheme scheme() default Scheme.ANY;

    int sequence() default -1;
}
