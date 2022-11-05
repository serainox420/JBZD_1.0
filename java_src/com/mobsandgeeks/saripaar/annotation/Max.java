package com.mobsandgeeks.saripaar.annotation;

import com.mobsandgeeks.saripaar.rule.MaxRule;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
@Target({ElementType.FIELD})
@ValidateUsing(MaxRule.class)
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes.dex */
public @interface Max {
    String message() default "Should be less than max value";

    int messageResId() default -1;

    int sequence() default -1;

    int value();
}
