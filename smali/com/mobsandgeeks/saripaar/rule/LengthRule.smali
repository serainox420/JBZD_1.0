.class public Lcom/mobsandgeeks/saripaar/rule/LengthRule;
.super Lcom/mobsandgeeks/saripaar/AnnotationRule;
.source "LengthRule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mobsandgeeks/saripaar/AnnotationRule",
        "<",
        "Lcom/mobsandgeeks/saripaar/annotation/Length;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Lcom/mobsandgeeks/saripaar/annotation/Length;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/mobsandgeeks/saripaar/AnnotationRule;-><init>(Ljava/lang/annotation/Annotation;)V

    .line 28
    return-void
.end method

.method private assertMinMax(II)V
    .locals 4

    .prologue
    .line 60
    if-le p1, p2, :cond_0

    .line 61
    const-string v0, "\'min\' (%d) should be less than or equal to \'max\' (%d)."

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 62
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 61
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 63
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 65
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic isValid(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 24
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mobsandgeeks/saripaar/rule/LengthRule;->isValid(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isValid(Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 32
    if-nez p1, :cond_0

    .line 33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'text\' cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/mobsandgeeks/saripaar/rule/LengthRule;->mRuleAnnotation:Ljava/lang/annotation/Annotation;

    check-cast v0, Lcom/mobsandgeeks/saripaar/annotation/Length;

    invoke-interface {v0}, Lcom/mobsandgeeks/saripaar/annotation/Length;->min()I

    move-result v3

    .line 36
    iget-object v0, p0, Lcom/mobsandgeeks/saripaar/rule/LengthRule;->mRuleAnnotation:Ljava/lang/annotation/Annotation;

    check-cast v0, Lcom/mobsandgeeks/saripaar/annotation/Length;

    invoke-interface {v0}, Lcom/mobsandgeeks/saripaar/annotation/Length;->max()I

    move-result v5

    .line 39
    invoke-direct {p0, v3, v5}, Lcom/mobsandgeeks/saripaar/rule/LengthRule;->assertMinMax(II)V

    .line 42
    iget-object v0, p0, Lcom/mobsandgeeks/saripaar/rule/LengthRule;->mRuleAnnotation:Ljava/lang/annotation/Annotation;

    check-cast v0, Lcom/mobsandgeeks/saripaar/annotation/Length;

    invoke-interface {v0}, Lcom/mobsandgeeks/saripaar/annotation/Length;->trim()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    move v4, v0

    .line 46
    :goto_0
    const/high16 v0, -0x80000000

    if-eq v3, v0, :cond_6

    .line 47
    if-lt v4, v3, :cond_2

    move v0, v1

    :goto_1
    move v3, v0

    .line 52
    :goto_2
    const v0, 0x7fffffff

    if-eq v5, v0, :cond_5

    .line 53
    if-gt v4, v5, :cond_3

    move v0, v1

    .line 56
    :goto_3
    if-eqz v3, :cond_4

    if-eqz v0, :cond_4

    :goto_4
    return v1

    .line 42
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    move v4, v0

    goto :goto_0

    :cond_2
    move v0, v2

    .line 47
    goto :goto_1

    :cond_3
    move v0, v2

    .line 53
    goto :goto_3

    :cond_4
    move v1, v2

    .line 56
    goto :goto_4

    :cond_5
    move v0, v1

    goto :goto_3

    :cond_6
    move v3, v1

    goto :goto_2
.end method
