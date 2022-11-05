.class final Landroid/support/v7/media/i;
.super Ljava/lang/Object;
.source "MediaRouterJellybean.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/media/i$h;,
        Landroid/support/v7/media/i$b;,
        Landroid/support/v7/media/i$c;,
        Landroid/support/v7/media/i$e;,
        Landroid/support/v7/media/i$g;,
        Landroid/support/v7/media/i$a;,
        Landroid/support/v7/media/i$f;,
        Landroid/support/v7/media/i$d;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 53
    const-string v0, "media_router"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/support/v7/media/i$a;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 118
    new-instance v0, Landroid/support/v7/media/i$b;

    invoke-direct {v0, p0}, Landroid/support/v7/media/i$b;-><init>(Landroid/support/v7/media/i$a;)V

    return-object v0
.end method

.method public static a(Landroid/support/v7/media/i$g;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 122
    new-instance v0, Landroid/support/v7/media/i$h;

    invoke-direct {v0, p0}, Landroid/support/v7/media/i$h;-><init>(Landroid/support/v7/media/i$g;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 79
    check-cast p0, Landroid/media/MediaRouter;

    invoke-virtual {p0, p1}, Landroid/media/MediaRouter;->getSelectedRoute(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 99
    check-cast p0, Landroid/media/MediaRouter;

    invoke-virtual {p0, p1, p2}, Landroid/media/MediaRouter;->createRouteCategory(Ljava/lang/CharSequence;Z)Landroid/media/MediaRouter$RouteCategory;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Object;)Ljava/util/List;
    .locals 4

    .prologue
    .line 58
    check-cast p0, Landroid/media/MediaRouter;

    .line 59
    invoke-virtual {p0}, Landroid/media/MediaRouter;->getRouteCount()I

    move-result v1

    .line 60
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 61
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 62
    invoke-virtual {p0, v0}, Landroid/media/MediaRouter;->getRouteAt(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 64
    :cond_0
    return-object v2
.end method

.method public static a(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 83
    check-cast p0, Landroid/media/MediaRouter;

    check-cast p2, Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {p0, p1, p2}, Landroid/media/MediaRouter;->selectRoute(ILandroid/media/MediaRouter$RouteInfo;)V

    .line 85
    return-void
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 93
    check-cast p0, Landroid/media/MediaRouter;

    check-cast p1, Landroid/media/MediaRouter$Callback;

    invoke-virtual {p0, p1}, Landroid/media/MediaRouter;->removeCallback(Landroid/media/MediaRouter$Callback;)V

    .line 95
    return-void
.end method

.method public static b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 103
    check-cast p0, Landroid/media/MediaRouter;

    check-cast p1, Landroid/media/MediaRouter$RouteCategory;

    invoke-virtual {p0, p1}, Landroid/media/MediaRouter;->createUserRoute(Landroid/media/MediaRouter$RouteCategory;)Landroid/media/MediaRouter$UserRouteInfo;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 88
    check-cast p0, Landroid/media/MediaRouter;

    check-cast p2, Landroid/media/MediaRouter$Callback;

    invoke-virtual {p0, p1, p2}, Landroid/media/MediaRouter;->addCallback(ILandroid/media/MediaRouter$Callback;)V

    .line 90
    return-void
.end method

.method public static c(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 108
    check-cast p0, Landroid/media/MediaRouter;

    check-cast p1, Landroid/media/MediaRouter$UserRouteInfo;

    invoke-virtual {p0, p1}, Landroid/media/MediaRouter;->addUserRoute(Landroid/media/MediaRouter$UserRouteInfo;)V

    .line 110
    return-void
.end method

.method public static d(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 113
    check-cast p0, Landroid/media/MediaRouter;

    check-cast p1, Landroid/media/MediaRouter$UserRouteInfo;

    invoke-virtual {p0, p1}, Landroid/media/MediaRouter;->removeUserRoute(Landroid/media/MediaRouter$UserRouteInfo;)V

    .line 115
    return-void
.end method
