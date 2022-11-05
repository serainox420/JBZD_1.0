.class Landroid/support/v7/media/i$b;
.super Landroid/media/MediaRouter$Callback;
.source "MediaRouterJellybean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/media/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/support/v7/media/i$a;",
        ">",
        "Landroid/media/MediaRouter$Callback;"
    }
.end annotation


# instance fields
.field protected final a:Landroid/support/v7/media/i$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v7/media/i$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 391
    invoke-direct {p0}, Landroid/media/MediaRouter$Callback;-><init>()V

    .line 392
    iput-object p1, p0, Landroid/support/v7/media/i$b;->a:Landroid/support/v7/media/i$a;

    .line 393
    return-void
.end method


# virtual methods
.method public onRouteAdded(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Landroid/support/v7/media/i$b;->a:Landroid/support/v7/media/i$a;

    invoke-interface {v0, p2}, Landroid/support/v7/media/i$a;->a(Ljava/lang/Object;)V

    .line 411
    return-void
.end method

.method public onRouteChanged(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Landroid/support/v7/media/i$b;->a:Landroid/support/v7/media/i$a;

    invoke-interface {v0, p2}, Landroid/support/v7/media/i$a;->c(Ljava/lang/Object;)V

    .line 423
    return-void
.end method

.method public onRouteGrouped(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;Landroid/media/MediaRouter$RouteGroup;I)V
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Landroid/support/v7/media/i$b;->a:Landroid/support/v7/media/i$a;

    invoke-interface {v0, p2, p3, p4}, Landroid/support/v7/media/i$a;->a(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 430
    return-void
.end method

.method public onRouteRemoved(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Landroid/support/v7/media/i$b;->a:Landroid/support/v7/media/i$a;

    invoke-interface {v0, p2}, Landroid/support/v7/media/i$a;->b(Ljava/lang/Object;)V

    .line 417
    return-void
.end method

.method public onRouteSelected(Landroid/media/MediaRouter;ILandroid/media/MediaRouter$RouteInfo;)V
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Landroid/support/v7/media/i$b;->a:Landroid/support/v7/media/i$a;

    invoke-interface {v0, p2, p3}, Landroid/support/v7/media/i$a;->a(ILjava/lang/Object;)V

    .line 399
    return-void
.end method

.method public onRouteUngrouped(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;Landroid/media/MediaRouter$RouteGroup;)V
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Landroid/support/v7/media/i$b;->a:Landroid/support/v7/media/i$a;

    invoke-interface {v0, p2, p3}, Landroid/support/v7/media/i$a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 437
    return-void
.end method

.method public onRouteUnselected(Landroid/media/MediaRouter;ILandroid/media/MediaRouter$RouteInfo;)V
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Landroid/support/v7/media/i$b;->a:Landroid/support/v7/media/i$a;

    invoke-interface {v0, p2, p3}, Landroid/support/v7/media/i$a;->b(ILjava/lang/Object;)V

    .line 405
    return-void
.end method

.method public onRouteVolumeChanged(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Landroid/support/v7/media/i$b;->a:Landroid/support/v7/media/i$a;

    invoke-interface {v0, p2}, Landroid/support/v7/media/i$a;->d(Ljava/lang/Object;)V

    .line 443
    return-void
.end method
