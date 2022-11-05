package com.mobsandgeeks.saripaar.annotation;

import com.mobsandgeeks.saripaar.rule.AssertTrueRule;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
@Target({ElementType.FIELD})
@ValidateUsing(AssertTrueRule.class)
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes.dex */
public @interface AssertTrue {
    String message() default "Should be true";

    int messageResId() default -1;

    int sequence() default -1;
}
