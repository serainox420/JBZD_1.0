package com.mobsandgeeks.saripaar.annotation;

import com.mobsandgeeks.saripaar.rule.ConfirmEmailRule;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
@Target({ElementType.FIELD})
@ValidateUsing(ConfirmEmailRule.class)
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes.dex */
public @interface ConfirmEmail {
    String message() default "Emails don't match";

    int messageResId() default -1;

    int sequence() default -1;
}
