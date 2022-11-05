.class public Lcom/mobsandgeeks/saripaar/rule/PastRule;
.super Lcom/mobsandgeeks/saripaar/ContextualAnnotationRule;
.source "PastRule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mobsandgeeks/saripaar/ContextualAnnotationRule",
        "<",
        "Lcom/mobsandgeeks/saripaar/annotation/Past;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Lcom/mobsandgeeks/saripaar/ValidationContext;Lcom/mobsandgeeks/saripaar/annotation/Past;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/mobsandgeeks/saripaar/ContextualAnnotationRule;-><init>(Lcom/mobsandgeeks/saripaar/ValidationContext;Ljava/lang/annotation/Annotation;)V

    .line 36
    return-void
.end method

.method private getDateFormat()Ljava/text/DateFormat;
    .locals 3

    .prologue
    .line 51
    iget-object v0, p0, Lcom/mobsandgeeks/saripaar/rule/PastRule;->mValidationContext:Lcom/mobsandgeeks/saripaar/ValidationContext;

    invoke-virtual {v0}, Lcom/mobsandgeeks/saripaar/ValidationContext;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 52
    iget-object v0, p0, Lcom/mobsandgeeks/saripaar/rule/PastRule;->mRuleAnnotation:Ljava/lang/annotation/Annotation;

    check-cast v0, Lcom/mobsandgeeks/saripaar/annotation/Past;

    invoke-interface {v0}, Lcom/mobsandgeeks/saripaar/annotation/Past;->dateFormatResId()I

    move-result v0

    .line 53
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 54
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 55
    :goto_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/mobsandgeeks/saripaar/rule/PastRule;->mRuleAnnotation:Ljava/lang/annotation/Annotation;

    check-cast v0, Lcom/mobsandgeeks/saripaar/annotation/Past;

    invoke-interface {v0}, Lcom/mobsandgeeks/saripaar/annotation/Past;->dateFormat()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic isValid(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 32
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mobsandgeeks/saripaar/rule/PastRule;->isValid(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isValid(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/mobsandgeeks/saripaar/rule/PastRule;->getDateFormat()Ljava/text/DateFormat;

    move-result-object v1

    .line 41
    const/4 v0, 0x0

    .line 43
    :try_start_0
    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 46
    :goto_0
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 47
    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 44
    :catch_0
    move-exception v1

    goto :goto_0
.end method
