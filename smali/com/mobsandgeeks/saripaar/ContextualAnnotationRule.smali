.class public abstract Lcom/mobsandgeeks/saripaar/ContextualAnnotationRule;
.super Lcom/mobsandgeeks/saripaar/AnnotationRule;
.source "ContextualAnnotationRule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RU",
        "LE_ANNOTATION::Ljava/lang/annotation/Annotation;",
        "DATA_TYPE:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/mobsandgeeks/saripaar/AnnotationRule",
        "<TRU",
        "LE_ANNOTATION;",
        "TDATA_TYPE;>;"
    }
.end annotation


# instance fields
.field protected mValidationContext:Lcom/mobsandgeeks/saripaar/ValidationContext;


# direct methods
.method protected constructor <init>(Lcom/mobsandgeeks/saripaar/ValidationContext;Ljava/lang/annotation/Annotation;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mobsandgeeks/saripaar/ValidationContext;",
            "TRU",
            "LE_ANNOTATION;",
            ")V"
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0, p2}, Lcom/mobsandgeeks/saripaar/AnnotationRule;-><init>(Ljava/lang/annotation/Annotation;)V

    .line 41
    if-nez p1, :cond_0

    .line 42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'validationContext\' cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_0
    iput-object p1, p0, Lcom/mobsandgeeks/saripaar/ContextualAnnotationRule;->mValidationContext:Lcom/mobsandgeeks/saripaar/ValidationContext;

    .line 45
    return-void
.end method
