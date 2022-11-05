.class Lcom/millennialmedia/internal/video/VASTVideoView$20;
.super Ljava/lang/Object;
.source "VASTVideoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/video/VASTVideoView;->b(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/millennialmedia/internal/video/VASTVideoView;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/video/VASTVideoView;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 1737
    iput-object p1, p0, Lcom/millennialmedia/internal/video/VASTVideoView$20;->b:Lcom/millennialmedia/internal/video/VASTVideoView;

    iput-object p2, p0, Lcom/millennialmedia/internal/video/VASTVideoView$20;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1741
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView$20;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/video/VASTParser$TrackingEvent;

    .line 1742
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/millennialmedia/internal/video/VASTParser$TrackingEvent;->url:Ljava/lang/String;

    invoke-static {v2}, Lcom/millennialmedia/internal/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/millennialmedia/internal/video/VASTVideoView$20;->b:Lcom/millennialmedia/internal/video/VASTVideoView;

    .line 1743
    invoke-static {v2}, Lcom/millennialmedia/internal/video/VASTVideoView;->v(Lcom/millennialmedia/internal/video/VASTVideoView;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1745
    iget-object v2, p0, Lcom/millennialmedia/internal/video/VASTVideoView$20;->b:Lcom/millennialmedia/internal/video/VASTVideoView;

    invoke-static {v2, v0}, Lcom/millennialmedia/internal/video/VASTVideoView;->a(Lcom/millennialmedia/internal/video/VASTVideoView;Lcom/millennialmedia/internal/video/VASTParser$TrackingEvent;)V

    goto :goto_0

    .line 1748
    :cond_1
    return-void
.end method
