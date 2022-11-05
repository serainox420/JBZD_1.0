.class public Lcom/mobsandgeeks/saripaar/DefaultViewValidatedAction;
.super Ljava/lang/Object;
.source "DefaultViewValidatedAction.java"

# interfaces
.implements Lcom/mobsandgeeks/saripaar/Validator$ViewValidatedAction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAllRulesPassed(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 32
    instance-of v0, p1, Landroid/widget/TextView;

    .line 33
    if-eqz v0, :cond_0

    .line 34
    check-cast p1, Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 36
    :cond_0
    return-void
.end method
