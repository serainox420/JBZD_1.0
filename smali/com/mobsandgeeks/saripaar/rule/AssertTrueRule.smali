.class public Lcom/mobsandgeeks/saripaar/rule/AssertTrueRule;
.super Lcom/mobsandgeeks/saripaar/AnnotationRule;
.source "AssertTrueRule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mobsandgeeks/saripaar/AnnotationRule",
        "<",
        "Lcom/mobsandgeeks/saripaar/annotation/AssertTrue;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Lcom/mobsandgeeks/saripaar/annotation/AssertTrue;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/mobsandgeeks/saripaar/AnnotationRule;-><init>(Ljava/lang/annotation/Annotation;)V

    .line 28
    return-void
.end method


# virtual methods
.method public isValid(Ljava/lang/Boolean;)Z
    .locals 2

    .prologue
    .line 32
    if-nez p1, :cond_0

    .line 33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'data\' cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isValid(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 24
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/mobsandgeeks/saripaar/rule/AssertTrueRule;->isValid(Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method
