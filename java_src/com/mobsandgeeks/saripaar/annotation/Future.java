package com.mobsandgeeks.saripaar.annotation;

import com.mobsandgeeks.saripaar.rule.FutureRule;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
@Target({ElementType.FIELD})
@ValidateUsing(FutureRule.class)
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes.dex */
public @interface Future {
    String dateFormat() default "dd-MM-yyyy";

    int dateFormatResId() default -1;

    String message() default "Date should be in the future";

    int messageResId() default -1;

    int sequence() default -1;
}
