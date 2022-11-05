.class Landroid/support/transition/d;
.super Landroid/support/transition/o;
.source "ChangeBoundsIcs.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# direct methods
.method public constructor <init>(Landroid/support/transition/q;)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/support/transition/o;-><init>()V

    .line 27
    new-instance v0, Landroid/support/transition/f;

    invoke-direct {v0}, Landroid/support/transition/f;-><init>()V

    invoke-virtual {p0, p1, v0}, Landroid/support/transition/d;->a(Landroid/support/transition/q;Ljava/lang/Object;)V

    .line 28
    return-void
.end method
