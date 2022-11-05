.class public Lcom/mobsandgeeks/saripaar/rule/CheckedRule;
.super Lcom/mobsandgeeks/saripaar/AnnotationRule;
.source "CheckedRule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mobsandgeeks/saripaar/AnnotationRule",
        "<",
        "Lcom/mobsandgeeks/saripaar/annotation/Checked;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Lcom/mobsandgeeks/saripaar/annotation/Checked;)V
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
    iget-object v0, p0, Lcom/mobsandgeeks/saripaar/rule/CheckedRule;->mRuleAnnotation:Ljava/lang/annotation/Annotation;

    check-cast v0, Lcom/mobsandgeeks/saripaar/annotation/Checked;

    invoke-interface {v0}, Lcom/mobsandgeeks/saripaar/annotation/Checked;->value()Z

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic isValid(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 24
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/mobsandgeeks/saripaar/rule/CheckedRule;->isValid(Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method
