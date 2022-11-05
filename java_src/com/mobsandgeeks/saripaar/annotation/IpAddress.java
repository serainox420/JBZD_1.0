package com.mobsandgeeks.saripaar.annotation;

import com.mobsandgeeks.saripaar.rule.IpAddressRule;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
@Target({ElementType.FIELD})
@ValidateUsing(IpAddressRule.class)
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes.dex */
public @interface IpAddress {
    String message() default "Invalid IP address";

    int messageResId() default -1;

    int sequence() default -1;
}
