package com.mobsandgeeks.saripaar.annotation;

import com.mobsandgeeks.saripaar.rule.CreditCardRule;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
@Target({ElementType.FIELD})
@ValidateUsing(CreditCardRule.class)
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes.dex */
public @interface CreditCard {

    /* loaded from: classes.dex */
    public enum Type {
        AMEX,
        DINERS,
        DISCOVER,
        MASTERCARD,
        VISA,
        NONE
    }

    Type[] cardTypes() default {Type.AMEX, Type.DINERS, Type.DISCOVER, Type.MASTERCARD, Type.VISA};

    String message() default "Invalid card";

    int messageResId() default -1;

    int sequence() default -1;
}
