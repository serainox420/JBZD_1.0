.class public Lcom/mobsandgeeks/saripaar/rule/UrlRule;
.super Lcom/mobsandgeeks/saripaar/AnnotationRule;
.source "UrlRule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mobsandgeeks/saripaar/AnnotationRule",
        "<",
        "Lcom/mobsandgeeks/saripaar/annotation/Url;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Lcom/mobsandgeeks/saripaar/annotation/Url;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/mobsandgeeks/saripaar/AnnotationRule;-><init>(Ljava/lang/annotation/Annotation;)V

    .line 30
    return-void
.end method


# virtual methods
.method public bridge synthetic isValid(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 26
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mobsandgeeks/saripaar/rule/UrlRule;->isValid(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isValid(Ljava/lang/String;)Z
    .locals 5

    .prologue
    .line 34
    iget-object v0, p0, Lcom/mobsandgeeks/saripaar/rule/UrlRule;->mRuleAnnotation:Ljava/lang/annotation/Annotation;

    check-cast v0, Lcom/mobsandgeeks/saripaar/annotation/Url;

    invoke-interface {v0}, Lcom/mobsandgeeks/saripaar/annotation/Url;->schemes()[Ljava/lang/String;

    move-result-object v4

    .line 35
    iget-object v0, p0, Lcom/mobsandgeeks/saripaar/rule/UrlRule;->mRuleAnnotation:Ljava/lang/annotation/Annotation;

    check-cast v0, Lcom/mobsandgeeks/saripaar/annotation/Url;

    invoke-interface {v0}, Lcom/mobsandgeeks/saripaar/annotation/Url;->allowFragments()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    move-wide v2, v0

    .line 38
    :goto_0
    if-eqz v4, :cond_1

    array-length v0, v4

    if-lez v0, :cond_1

    new-instance v0, Lcommons/validator/routines/UrlValidator;

    invoke-direct {v0, v4, v2, v3}, Lcommons/validator/routines/UrlValidator;-><init>([Ljava/lang/String;J)V

    .line 41
    :goto_1
    invoke-virtual {v0, p1}, Lcommons/validator/routines/UrlValidator;->isValid(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 35
    :cond_0
    const-wide/16 v0, 0x4

    move-wide v2, v0

    goto :goto_0

    .line 39
    :cond_1
    invoke-static {}, Lcommons/validator/routines/UrlValidator;->getInstance()Lcommons/validator/routines/UrlValidator;

    move-result-object v0

    goto :goto_1
.end method
