package com.mobsandgeeks.saripaar.annotation;

import com.mobsandgeeks.saripaar.rule.PastRule;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
@Target({ElementType.FIELD})
@ValidateUsing(PastRule.class)
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes.dex */
public @interface Past {
    String dateFormat() default "dd-MM-yyyy";

    int dateFormatResId() default -1;

    String message() default "Date should be in the past";

    int messageResId() default -1;

    int sequence() default -1;
}
