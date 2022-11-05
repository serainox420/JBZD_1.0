.class public Lcom/mobsandgeeks/saripaar/rule/DigitsRule;
.super Lcom/mobsandgeeks/saripaar/AnnotationRule;
.source "DigitsRule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mobsandgeeks/saripaar/AnnotationRule",
        "<",
        "Lcom/mobsandgeeks/saripaar/annotation/Digits;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Lcom/mobsandgeeks/saripaar/annotation/Digits;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/mobsandgeeks/saripaar/AnnotationRule;-><init>(Ljava/lang/annotation/Annotation;)V

    .line 28
    return-void
.end method


# virtual methods
.method public bridge synthetic isValid(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 24
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mobsandgeeks/saripaar/rule/DigitsRule;->isValid(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isValid(Ljava/lang/String;)Z
    .locals 5

    .prologue
    .line 32
    iget-object v0, p0, Lcom/mobsandgeeks/saripaar/rule/DigitsRule;->mRuleAnnotation:Ljava/lang/annotation/Annotation;

    check-cast v0, Lcom/mobsandgeeks/saripaar/annotation/Digits;

    invoke-interface {v0}, Lcom/mobsandgeeks/saripaar/annotation/Digits;->integer()I

    move-result v1

    .line 33
    iget-object v0, p0, Lcom/mobsandgeeks/saripaar/rule/DigitsRule;->mRuleAnnotation:Ljava/lang/annotation/Annotation;

    check-cast v0, Lcom/mobsandgeeks/saripaar/annotation/Digits;

    invoke-interface {v0}, Lcom/mobsandgeeks/saripaar/annotation/Digits;->fraction()I

    move-result v0

    .line 35
    const-string v2, "(\\d{0,%d})(\\.\\d{1,%d})?"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    const/4 v1, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 36
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
