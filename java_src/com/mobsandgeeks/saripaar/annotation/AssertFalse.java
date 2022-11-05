package com.mobsandgeeks.saripaar.annotation;

import com.mobsandgeeks.saripaar.rule.AssertFalseRule;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
@Target({ElementType.FIELD})
@ValidateUsing(AssertFalseRule.class)
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes.dex */
public @interface AssertFalse {
    String message() default "Should be false";

    int messageResId() default -1;

    int sequence() default -1;
}
