.class public interface abstract annotation Lcom/mobsandgeeks/saripaar/annotation/Digits;
.super Ljava/lang/Object;
.source "Digits.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Lcom/mobsandgeeks/saripaar/annotation/ValidateUsing;
    value = Lcom/mobsandgeeks/saripaar/rule/DigitsRule;
.end annotation

.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/mobsandgeeks/saripaar/annotation/Digits;
        fraction = 0x2
        message = "Should be a digit"
        messageResId = -0x1
        sequence = -0x1
    .end subannotation
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
.method public abstract fraction()I
.end method

.method public abstract integer()I
.end method

.method public abstract message()Ljava/lang/String;
.end method

.method public abstract messageResId()I
.end method

.method public abstract sequence()I
.end method
