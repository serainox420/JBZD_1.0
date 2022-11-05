.class Landroid/support/v7/media/i$h;
.super Landroid/media/MediaRouter$VolumeCallback;
.source "MediaRouterJellybean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/media/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/support/v7/media/i$g;",
        ">",
        "Landroid/media/MediaRouter$VolumeCallback;"
    }
.end annotation


# instance fields
.field protected final a:Landroid/support/v7/media/i$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v7/media/i$g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 450
    invoke-direct {p0}, Landroid/media/MediaRouter$VolumeCallback;-><init>()V

    .line 451
    iput-object p1, p0, Landroid/support/v7/media/i$h;->a:Landroid/support/v7/media/i$g;

    .line 452
    return-void
.end method


# virtual methods
.method public onVolumeSetRequest(Landroid/media/MediaRouter$RouteInfo;I)V
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Landroid/support/v7/media/i$h;->a:Landroid/support/v7/media/i$g;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/media/i$g;->a(Ljava/lang/Object;I)V

    .line 458
    return-void
.end method

.method public onVolumeUpdateRequest(Landroid/media/MediaRouter$RouteInfo;I)V
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Landroid/support/v7/media/i$h;->a:Landroid/support/v7/media/i$g;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/media/i$g;->b(Ljava/lang/Object;I)V

    .line 464
    return-void
.end method
