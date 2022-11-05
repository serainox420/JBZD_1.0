.class public abstract Lcom/mobsandgeeks/saripaar/QuickRule;
.super Lcom/mobsandgeeks/saripaar/Rule;
.source "QuickRule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VIEW:",
        "Landroid/view/View;",
        ">",
        "Lcom/mobsandgeeks/saripaar/Rule",
        "<TVIEW;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/mobsandgeeks/saripaar/Rule;-><init>(I)V

    .line 38
    return-void
.end method

.method protected constructor <init>(I)V
    .locals 2

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/mobsandgeeks/saripaar/Rule;-><init>(I)V

    .line 47
    if-gez p1, :cond_0

    .line 48
    const-string v0, "\'sequence\' should be a non-negative integer."

    .line 49
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 51
    :cond_0
    return-void
.end method


# virtual methods
.method public abstract isValid(Landroid/view/View;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVIEW;)Z"
        }
    .end annotation
.end method

.method public bridge synthetic isValid(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 31
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/mobsandgeeks/saripaar/QuickRule;->isValid(Landroid/view/View;)Z

    move-result v0

    return v0
.end method
