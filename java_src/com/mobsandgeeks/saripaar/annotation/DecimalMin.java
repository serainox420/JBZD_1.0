package com.mobsandgeeks.saripaar.annotation;

import com.mobsandgeeks.saripaar.rule.DecimalMinRule;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
@Target({ElementType.FIELD})
@ValidateUsing(DecimalMinRule.class)
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes.dex */
public @interface DecimalMin {
    String message() default "Should be less than min value";

    int messageResId() default -1;

    int sequence() default -1;

    double value();
}
