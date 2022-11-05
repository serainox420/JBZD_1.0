package com.mobsandgeeks.saripaar.annotation;

import com.mobsandgeeks.saripaar.rule.CheckedRule;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
@Target({ElementType.FIELD})
@ValidateUsing(CheckedRule.class)
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes.dex */
public @interface Checked {
    String message() default "Must be checked";

    int messageResId() default -1;

    int sequence() default -1;

    boolean value() default true;
}
