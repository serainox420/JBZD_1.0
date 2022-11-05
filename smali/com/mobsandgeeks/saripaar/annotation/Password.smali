.class public interface abstract annotation Lcom/mobsandgeeks/saripaar/annotation/Password;
.super Ljava/lang/Object;
.source "Password.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Lcom/mobsandgeeks/saripaar/annotation/ValidateUsing;
    value = Lcom/mobsandgeeks/saripaar/rule/PasswordRule;
.end annotation

.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/mobsandgeeks/saripaar/annotation/Password;
        message = "Invalid password"
        messageResId = -0x1
        min = 0x6
        scheme = .enum Lcom/mobsandgeeks/saripaar/annotation/Password$Scheme;->ANY:Lcom/mobsandgeeks/saripaar/annotation/Password$Scheme;
        sequence = -0x1
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobsandgeeks/saripaar/annotation/Password$Scheme;
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
.method public abstract message()Ljava/lang/String;
.end method

.method public abstract messageResId()I
.end method

.method public abstract min()I
.end method

.method public abstract scheme()Lcom/mobsandgeeks/saripaar/annotation/Password$Scheme;
.end method

.method public abstract sequence()I
.end method
