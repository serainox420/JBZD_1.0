package com.mobsandgeeks.saripaar.annotation;

import com.mobsandgeeks.saripaar.rule.ConfirmPasswordRule;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
@Target({ElementType.FIELD})
@ValidateUsing(ConfirmPasswordRule.class)
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes.dex */
public @interface ConfirmPassword {
    String message() default "Passwords don't match";

    int messageResId() default -1;

    int sequence() default -1;
}
