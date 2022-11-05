.class public interface abstract annotation Lcom/mobsandgeeks/saripaar/annotation/Length;
.super Ljava/lang/Object;
.source "Length.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Lcom/mobsandgeeks/saripaar/annotation/ValidateUsing;
    value = Lcom/mobsandgeeks/saripaar/rule/LengthRule;
.end annotation

.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/mobsandgeeks/saripaar/annotation/Length;
        max = 0x7fffffff
        message = "Invalid length"
        messageResId = -0x1
        min = -0x80000000
        sequence = -0x1
        trim = false
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
.method public abstract max()I
.end method

.method public abstract message()Ljava/lang/String;
.end method

.method public abstract messageResId()I
.end method

.method public abstract min()I
.end method

.method public abstract sequence()I
.end method

.method public abstract trim()Z
.end method
