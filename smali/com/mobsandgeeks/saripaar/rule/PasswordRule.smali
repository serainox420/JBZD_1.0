.class public Lcom/mobsandgeeks/saripaar/rule/PasswordRule;
.super Lcom/mobsandgeeks/saripaar/AnnotationRule;
.source "PasswordRule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mobsandgeeks/saripaar/AnnotationRule",
        "<",
        "Lcom/mobsandgeeks/saripaar/annotation/Password;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final SCHEME_PATTERNS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/mobsandgeeks/saripaar/annotation/Password$Scheme;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/mobsandgeeks/saripaar/annotation/Password;)V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/mobsandgeeks/saripaar/AnnotationRule;-><init>(Ljava/lang/annotation/Annotation;)V

    .line 33
    new-instance v0, Lcom/mobsandgeeks/saripaar/rule/PasswordRule$1;

    invoke-direct {v0, p0}, Lcom/mobsandgeeks/saripaar/rule/PasswordRule$1;-><init>(Lcom/mobsandgeeks/saripaar/rule/PasswordRule;)V

    iput-object v0, p0, Lcom/mobsandgeeks/saripaar/rule/PasswordRule;->SCHEME_PATTERNS:Ljava/util/Map;

    .line 50
    return-void
.end method


# virtual methods
.method public bridge synthetic isValid(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 27
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mobsandgeeks/saripaar/rule/PasswordRule;->isValid(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isValid(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 54
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v0, p0, Lcom/mobsandgeeks/saripaar/rule/PasswordRule;->mRuleAnnotation:Ljava/lang/annotation/Annotation;

    check-cast v0, Lcom/mobsandgeeks/saripaar/annotation/Password;

    invoke-interface {v0}, Lcom/mobsandgeeks/saripaar/annotation/Password;->min()I

    move-result v0

    if-lt v1, v0, :cond_0

    move v1, v2

    .line 55
    :goto_0
    iget-object v4, p0, Lcom/mobsandgeeks/saripaar/rule/PasswordRule;->SCHEME_PATTERNS:Ljava/util/Map;

    iget-object v0, p0, Lcom/mobsandgeeks/saripaar/rule/PasswordRule;->mRuleAnnotation:Ljava/lang/annotation/Annotation;

    check-cast v0, Lcom/mobsandgeeks/saripaar/annotation/Password;

    invoke-interface {v0}, Lcom/mobsandgeeks/saripaar/annotation/Password;->scheme()Lcom/mobsandgeeks/saripaar/annotation/Password$Scheme;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    .line 56
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    :goto_1
    return v2

    :cond_0
    move v1, v3

    .line 54
    goto :goto_0

    :cond_1
    move v2, v3

    .line 56
    goto :goto_1
.end method
