.class final Landroid/support/v7/media/k;
.super Ljava/lang/Object;
.source "MediaRouterJellybeanMr2.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/media/k$b;,
        Landroid/support/v7/media/k$a;
    }
.end annotation


# direct methods
.method public static a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    check-cast p0, Landroid/media/MediaRouter;

    invoke-virtual {p0}, Landroid/media/MediaRouter;->getDefaultRoute()Landroid/media/MediaRouter$RouteInfo;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Object;ILjava/lang/Object;I)V
    .locals 0

    .prologue
    .line 30
    check-cast p0, Landroid/media/MediaRouter;

    check-cast p2, Landroid/media/MediaRouter$Callback;

    invoke-virtual {p0, p1, p2, p3}, Landroid/media/MediaRouter;->addCallback(ILandroid/media/MediaRouter$Callback;I)V

    .line 32
    return-void
.end method
