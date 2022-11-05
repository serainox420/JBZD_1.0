.class public interface abstract annotation Lcom/mobsandgeeks/saripaar/annotation/CreditCard;
.super Ljava/lang/Object;
.source "CreditCard.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Lcom/mobsandgeeks/saripaar/annotation/ValidateUsing;
    value = Lcom/mobsandgeeks/saripaar/rule/CreditCardRule;
.end annotation

.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/mobsandgeeks/saripaar/annotation/CreditCard;
        cardTypes = {
            .enum Lcom/mobsandgeeks/saripaar/annotation/CreditCard$Type;->AMEX:Lcom/mobsandgeeks/saripaar/annotation/CreditCard$Type;,
            .enum Lcom/mobsandgeeks/saripaar/annotation/CreditCard$Type;->DINERS:Lcom/mobsandgeeks/saripaar/annotation/CreditCard$Type;,
            .enum Lcom/mobsandgeeks/saripaar/annotation/CreditCard$Type;->DISCOVER:Lcom/mobsandgeeks/saripaar/annotation/CreditCard$Type;,
            .enum Lcom/mobsandgeeks/saripaar/annotation/CreditCard$Type;->MASTERCARD:Lcom/mobsandgeeks/saripaar/annotation/CreditCard$Type;,
            .enum Lcom/mobsandgeeks/saripaar/annotation/CreditCard$Type;->VISA:Lcom/mobsandgeeks/saripaar/annotation/CreditCard$Type;
        }
        message = "Invalid card"
        messageResId = -0x1
        sequence = -0x1
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobsandgeeks/saripaar/annotation/CreditCard$Type;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract cardTypes()[Lcom/mobsandgeeks/saripaar/annotation/CreditCard$Type;
.end method

.method public abstract message()Ljava/lang/String;
.end method

.method public abstract messageResId()I
.end method

.method public abstract sequence()I
.end method
