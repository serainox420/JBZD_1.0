.class Landroid/support/transition/e;
.super Landroid/support/transition/s;
.source "ChangeBoundsKitKat.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation


# direct methods
.method public constructor <init>(Landroid/support/transition/q;)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/support/transition/s;-><init>()V

    .line 27
    new-instance v0, Landroid/transition/ChangeBounds;

    invoke-direct {v0}, Landroid/transition/ChangeBounds;-><init>()V

    invoke-virtual {p0, p1, v0}, Landroid/support/transition/e;->a(Landroid/support/transition/q;Ljava/lang/Object;)V

    .line 28
    return-void
.end method
