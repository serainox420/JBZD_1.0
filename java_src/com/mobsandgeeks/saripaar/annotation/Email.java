package com.mobsandgeeks.saripaar.annotation;

import com.mobsandgeeks.saripaar.rule.EmailRule;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
@Target({ElementType.FIELD})
@ValidateUsing(EmailRule.class)
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes.dex */
public @interface Email {
    boolean allowLocal() default false;

    String message() default "Invalid email";

    int messageResId() default -1;

    int sequence() default -1;
}
