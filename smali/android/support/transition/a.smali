.class public Landroid/support/transition/a;
.super Landroid/support/transition/z;
.source "AutoTransition.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 32
    invoke-direct {p0}, Landroid/support/transition/z;-><init>()V

    .line 33
    invoke-virtual {p0, v2}, Landroid/support/transition/a;->a(I)Landroid/support/transition/z;

    .line 34
    new-instance v0, Landroid/support/transition/g;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/support/transition/g;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/support/transition/a;->a(Landroid/support/transition/m;)Landroid/support/transition/z;

    move-result-object v0

    new-instance v1, Landroid/support/transition/c;

    invoke-direct {v1}, Landroid/support/transition/c;-><init>()V

    .line 35
    invoke-virtual {v0, v1}, Landroid/support/transition/z;->a(Landroid/support/transition/m;)Landroid/support/transition/z;

    move-result-object v0

    new-instance v1, Landroid/support/transition/g;

    invoke-direct {v1, v2}, Landroid/support/transition/g;-><init>(I)V

    .line 36
    invoke-virtual {v0, v1}, Landroid/support/transition/z;->a(Landroid/support/transition/m;)Landroid/support/transition/z;

    .line 37
    return-void
.end method
