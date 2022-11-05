.class public Lcom/mobsandgeeks/saripaar/rule/ConfirmEmailRule;
.super Lcom/mobsandgeeks/saripaar/rule/SameValueContextualRule;
.source "ConfirmEmailRule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mobsandgeeks/saripaar/rule/SameValueContextualRule",
        "<",
        "Lcom/mobsandgeeks/saripaar/annotation/ConfirmEmail;",
        "Lcom/mobsandgeeks/saripaar/annotation/Email;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Lcom/mobsandgeeks/saripaar/ValidationContext;Lcom/mobsandgeeks/saripaar/annotation/ConfirmEmail;)V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/mobsandgeeks/saripaar/annotation/Email;

    invoke-direct {p0, p1, p2, v0}, Lcom/mobsandgeeks/saripaar/rule/SameValueContextualRule;-><init>(Lcom/mobsandgeeks/saripaar/ValidationContext;Ljava/lang/annotation/Annotation;Ljava/lang/Class;)V

    .line 30
    return-void
.end method


# virtual methods
.method public bridge synthetic isValid(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 25
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mobsandgeeks/saripaar/rule/ConfirmEmailRule;->isValid(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isValid(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/mobsandgeeks/saripaar/rule/SameValueContextualRule;->isValid(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
