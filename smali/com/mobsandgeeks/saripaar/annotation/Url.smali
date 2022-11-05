.class public interface abstract annotation Lcom/mobsandgeeks/saripaar/annotation/Url;
.super Ljava/lang/Object;
.source "Url.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Lcom/mobsandgeeks/saripaar/annotation/ValidateUsing;
    value = Lcom/mobsandgeeks/saripaar/rule/UrlRule;
.end annotation

.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/mobsandgeeks/saripaar/annotation/Url;
        allowFragments = true
        message = "Invalid URL"
        messageResId = -0x1
        schemes = {
            "http",
            "https",
            "ftp"
        }
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
.method public abstract allowFragments()Z
.end method

.method public abstract message()Ljava/lang/String;
.end method

.method public abstract messageResId()I
.end method

.method public abstract schemes()[Ljava/lang/String;
.end method

.method public abstract sequence()I
.end method
