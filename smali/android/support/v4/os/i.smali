.class public final Landroid/support/v4/os/i;
.super Ljava/lang/Object;
.source "TraceCompat.java"


# direct methods
.method public static a()V
    .locals 2

    .prologue
    .line 56
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 57
    invoke-static {}, Landroid/support/v4/os/j;->a()V

    .line 59
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 43
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 44
    invoke-static {p0}, Landroid/support/v4/os/j;->a(Ljava/lang/String;)V

    .line 46
    :cond_0
    return-void
.end method
