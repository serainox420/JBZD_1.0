package com.mobsandgeeks.saripaar.annotation;

import com.mobsandgeeks.saripaar.rule.DigitsRule;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
@Target({ElementType.FIELD})
@ValidateUsing(DigitsRule.class)
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes.dex */
public @interface Digits {
    int fraction() default 2;

    int integer();

    String message() default "Should be a digit";

    int messageResId() default -1;

    int sequence() default -1;
}
