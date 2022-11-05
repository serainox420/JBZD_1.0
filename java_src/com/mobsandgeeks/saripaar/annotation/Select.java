package com.mobsandgeeks.saripaar.annotation;

import com.mobsandgeeks.saripaar.rule.SelectRule;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
@Target({ElementType.FIELD})
@ValidateUsing(SelectRule.class)
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes.dex */
public @interface Select {
    int defaultSelection() default 0;

    String message() default "Select a value";

    int messageResId() default -1;

    int sequence() default -1;
}
