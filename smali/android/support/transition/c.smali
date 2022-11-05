.class public Landroid/support/transition/c;
.super Landroid/support/transition/m;
.source "ChangeBounds.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 34
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/transition/m;-><init>(Z)V

    .line 35
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    .line 36
    new-instance v0, Landroid/support/transition/d;

    invoke-direct {v0, p0}, Landroid/support/transition/d;-><init>(Landroid/support/transition/q;)V

    iput-object v0, p0, Landroid/support/transition/c;->a:Landroid/support/transition/p;

    .line 40
    :goto_0
    return-void

    .line 38
    :cond_0
    new-instance v0, Landroid/support/transition/e;

    invoke-direct {v0, p0}, Landroid/support/transition/e;-><init>(Landroid/support/transition/q;)V

    iput-object v0, p0, Landroid/support/transition/c;->a:Landroid/support/transition/p;

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;Landroid/support/transition/ae;Landroid/support/transition/ae;)Landroid/animation/Animator;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Landroid/support/transition/c;->a:Landroid/support/transition/p;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/transition/p;->a(Landroid/view/ViewGroup;Landroid/support/transition/ae;Landroid/support/transition/ae;)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/support/transition/ae;)V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Landroid/support/transition/c;->a:Landroid/support/transition/p;

    invoke-virtual {v0, p1}, Landroid/support/transition/p;->c(Landroid/support/transition/ae;)V

    .line 50
    return-void
.end method

.method public b(Landroid/support/transition/ae;)V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Landroid/support/transition/c;->a:Landroid/support/transition/p;

    invoke-virtual {v0, p1}, Landroid/support/transition/p;->b(Landroid/support/transition/ae;)V

    .line 45
    return-void
.end method
