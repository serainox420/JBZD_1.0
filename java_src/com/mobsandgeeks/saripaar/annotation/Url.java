package com.mobsandgeeks.saripaar.annotation;

import com.mobsandgeeks.saripaar.rule.UrlRule;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
@Target({ElementType.FIELD})
@ValidateUsing(UrlRule.class)
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes.dex */
public @interface Url {
    boolean allowFragments() default true;

    String message() default "Invalid URL";

    int messageResId() default -1;

    String[] schemes() default {"http", "https", "ftp"};

    int sequence() default -1;
}
