.class public Lcom/mobsandgeeks/saripaar/rule/NotEmptyRule;
.super Lcom/mobsandgeeks/saripaar/ContextualAnnotationRule;
.source "NotEmptyRule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mobsandgeeks/saripaar/ContextualAnnotationRule",
        "<",
        "Lcom/mobsandgeeks/saripaar/annotation/NotEmpty;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Lcom/mobsandgeeks/saripaar/ValidationContext;Lcom/mobsandgeeks/saripaar/annotation/NotEmpty;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/mobsandgeeks/saripaar/ContextualAnnotationRule;-><init>(Lcom/mobsandgeeks/saripaar/ValidationContext;Ljava/lang/annotation/Annotation;)V

    .line 31
    return-void
.end method


# virtual methods
.method public bridge synthetic isValid(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 27
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mobsandgeeks/saripaar/rule/NotEmptyRule;->isValid(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isValid(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 35
    .line 36
    if-eqz p1, :cond_5

    .line 37
    iget-object v0, p0, Lcom/mobsandgeeks/saripaar/rule/NotEmptyRule;->mRuleAnnotation:Ljava/lang/annotation/Annotation;

    check-cast v0, Lcom/mobsandgeeks/saripaar/annotation/NotEmpty;

    invoke-interface {v0}, Lcom/mobsandgeeks/saripaar/annotation/NotEmpty;->trim()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/mobsandgeeks/saripaar/rule/NotEmptyRule;->mValidationContext:Lcom/mobsandgeeks/saripaar/ValidationContext;

    invoke-virtual {v0}, Lcom/mobsandgeeks/saripaar/ValidationContext;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 40
    iget-object v0, p0, Lcom/mobsandgeeks/saripaar/rule/NotEmptyRule;->mRuleAnnotation:Ljava/lang/annotation/Annotation;

    check-cast v0, Lcom/mobsandgeeks/saripaar/annotation/NotEmpty;

    invoke-interface {v0}, Lcom/mobsandgeeks/saripaar/annotation/NotEmpty;->emptyTextResId()I

    move-result v0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_2

    iget-object v0, p0, Lcom/mobsandgeeks/saripaar/rule/NotEmptyRule;->mRuleAnnotation:Ljava/lang/annotation/Annotation;

    check-cast v0, Lcom/mobsandgeeks/saripaar/annotation/NotEmpty;

    .line 41
    invoke-interface {v0}, Lcom/mobsandgeeks/saripaar/annotation/NotEmpty;->emptyTextResId()I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 44
    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    move v0, v2

    .line 47
    :goto_1
    if-nez v0, :cond_4

    :goto_2
    return v2

    .line 41
    :cond_2
    iget-object v0, p0, Lcom/mobsandgeeks/saripaar/rule/NotEmptyRule;->mRuleAnnotation:Ljava/lang/annotation/Annotation;

    check-cast v0, Lcom/mobsandgeeks/saripaar/annotation/NotEmpty;

    .line 42
    invoke-interface {v0}, Lcom/mobsandgeeks/saripaar/annotation/NotEmpty;->emptyText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    move v0, v1

    .line 44
    goto :goto_1

    :cond_4
    move v2, v1

    .line 47
    goto :goto_2

    :cond_5
    move v0, v1

    goto :goto_1
.end method
