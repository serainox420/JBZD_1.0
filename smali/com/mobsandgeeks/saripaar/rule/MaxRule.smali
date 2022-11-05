.class public Lcom/mobsandgeeks/saripaar/rule/MaxRule;
.super Lcom/mobsandgeeks/saripaar/AnnotationRule;
.source "MaxRule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mobsandgeeks/saripaar/AnnotationRule",
        "<",
        "Lcom/mobsandgeeks/saripaar/annotation/Max;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Lcom/mobsandgeeks/saripaar/annotation/Max;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/mobsandgeeks/saripaar/AnnotationRule;-><init>(Ljava/lang/annotation/Annotation;)V

    .line 30
    return-void
.end method


# virtual methods
.method public isValid(Ljava/lang/Integer;)Z
    .locals 2

    .prologue
    .line 34
    if-nez p1, :cond_0

    .line 35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'Integer\' cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/mobsandgeeks/saripaar/rule/MaxRule;->mRuleAnnotation:Ljava/lang/annotation/Annotation;

    check-cast v0, Lcom/mobsandgeeks/saripaar/annotation/Max;

    invoke-interface {v0}, Lcom/mobsandgeeks/saripaar/annotation/Max;->value()I

    move-result v0

    .line 38
    invoke-static {}, Lcommons/validator/routines/IntegerValidator;->getInstance()Lcommons/validator/routines/IntegerValidator;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcommons/validator/routines/IntegerValidator;->maxValue(Ljava/lang/Integer;I)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isValid(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 26
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/mobsandgeeks/saripaar/rule/MaxRule;->isValid(Ljava/lang/Integer;)Z

    move-result v0

    return v0
.end method
