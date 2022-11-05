package com.mobsandgeeks.saripaar.annotation;

import com.mobsandgeeks.saripaar.rule.IsbnRule;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
@Target({ElementType.FIELD})
@ValidateUsing(IsbnRule.class)
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes.dex */
public @interface Isbn {
    String message() default "Invalid ISBN";

    int messageResId() default -1;

    int sequence() default -1;
}
