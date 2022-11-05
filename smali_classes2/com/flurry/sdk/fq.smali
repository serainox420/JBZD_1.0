.class public final Lcom/flurry/sdk/fq;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/view/Window;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/high16 v2, 0x1000000

    .line 24
    if-nez p0, :cond_1

    .line 32
    :cond_0
    :goto_0
    return-void

    .line 28
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 29
    invoke-virtual {p0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    goto :goto_0
.end method
