.class public Lcom/mobsandgeeks/saripaar/rule/DecimalMaxRule;
.super Lcom/mobsandgeeks/saripaar/AnnotationRule;
.source "DecimalMaxRule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mobsandgeeks/saripaar/AnnotationRule",
        "<",
        "Lcom/mobsandgeeks/saripaar/annotation/DecimalMax;",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Lcom/mobsandgeeks/saripaar/annotation/DecimalMax;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/mobsandgeeks/saripaar/AnnotationRule;-><init>(Ljava/lang/annotation/Annotation;)V

    .line 30
    return-void
.end method


# virtual methods
.method public isValid(Ljava/lang/Double;)Z
    .locals 3

    .prologue
    .line 34
    if-nez p1, :cond_0

    .line 35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'Double\' cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/mobsandgeeks/saripaar/rule/DecimalMaxRule;->mRuleAnnotation:Ljava/lang/annotation/Annotation;

    check-cast v0, Lcom/mobsandgeeks/saripaar/annotation/DecimalMax;

    invoke-interface {v0}, Lcom/mobsandgeeks/saripaar/annotation/DecimalMax;->value()D

    move-result-wide v0

    .line 38
    invoke-static {}, Lcommons/validator/routines/DoubleValidator;->getInstance()Lcommons/validator/routines/DoubleValidator;

    move-result-object v2

    invoke-virtual {v2, p1, v0, v1}, Lcommons/validator/routines/DoubleValidator;->maxValue(Ljava/lang/Double;D)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isValid(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 26
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p0, p1}, Lcom/mobsandgeeks/saripaar/rule/DecimalMaxRule;->isValid(Ljava/lang/Double;)Z

    move-result v0

    return v0
.end method
