.class public abstract Landroid/support/transition/m;
.super Ljava/lang/Object;
.source "Transition.java"

# interfaces
.implements Landroid/support/transition/q;


# instance fields
.field a:Landroid/support/transition/p;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/transition/m;-><init>(Z)V

    .line 69
    return-void
.end method

.method constructor <init>(Z)V
    .locals 2

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    if-nez p1, :cond_0

    .line 74
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 75
    new-instance v0, Landroid/support/transition/n;

    invoke-direct {v0}, Landroid/support/transition/n;-><init>()V

    iput-object v0, p0, Landroid/support/transition/m;->a:Landroid/support/transition/p;

    .line 81
    :goto_0
    iget-object v0, p0, Landroid/support/transition/m;->a:Landroid/support/transition/p;

    invoke-virtual {v0, p0}, Landroid/support/transition/p;->a(Landroid/support/transition/q;)V

    .line 83
    :cond_0
    return-void

    .line 76
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_2

    .line 77
    new-instance v0, Landroid/support/transition/s;

    invoke-direct {v0}, Landroid/support/transition/s;-><init>()V

    iput-object v0, p0, Landroid/support/transition/m;->a:Landroid/support/transition/p;

    goto :goto_0

    .line 79
    :cond_2
    new-instance v0, Landroid/support/transition/o;

    invoke-direct {v0}, Landroid/support/transition/o;-><init>()V

    iput-object v0, p0, Landroid/support/transition/m;->a:Landroid/support/transition/p;

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;Landroid/support/transition/ae;Landroid/support/transition/ae;)Landroid/animation/Animator;
    .locals 1

    .prologue
    .line 264
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(J)Landroid/support/transition/m;
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Landroid/support/transition/m;->a:Landroid/support/transition/p;

    invoke-virtual {v0, p1, p2}, Landroid/support/transition/p;->a(J)Landroid/support/transition/p;

    .line 453
    return-object p0
.end method

.method public a(Landroid/animation/TimeInterpolator;)Landroid/support/transition/m;
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Landroid/support/transition/m;->a:Landroid/support/transition/p;

    invoke-virtual {v0, p1}, Landroid/support/transition/p;->a(Landroid/animation/TimeInterpolator;)Landroid/support/transition/p;

    .line 482
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 642
    iget-object v0, p0, Landroid/support/transition/m;->a:Landroid/support/transition/p;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
