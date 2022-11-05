.class Lcom/millennialmedia/internal/video/VASTVideoView$25;
.super Ljava/lang/Object;
.source "VASTVideoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/video/VASTVideoView;->a(Ljava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Z

.field final synthetic c:Lcom/millennialmedia/internal/video/VASTVideoView;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/video/VASTVideoView;Ljava/util/List;Z)V
    .locals 0

    .prologue
    .line 2048
    iput-object p1, p0, Lcom/millennialmedia/internal/video/VASTVideoView$25;->c:Lcom/millennialmedia/internal/video/VASTVideoView;

    iput-object p2, p0, Lcom/millennialmedia/internal/video/VASTVideoView$25;->a:Ljava/util/List;

    iput-boolean p3, p0, Lcom/millennialmedia/internal/video/VASTVideoView$25;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 2053
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView$25;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/video/VASTParser$VideoClicks;

    .line 2055
    iget-object v2, p0, Lcom/millennialmedia/internal/video/VASTVideoView$25;->c:Lcom/millennialmedia/internal/video/VASTVideoView;

    iget-object v3, v0, Lcom/millennialmedia/internal/video/VASTParser$VideoClicks;->clickTrackingUrls:Ljava/util/List;

    const-string v4, "Firing wrapper video click tracker url ="

    invoke-static {v2, v3, v4}, Lcom/millennialmedia/internal/video/VASTVideoView;->a(Lcom/millennialmedia/internal/video/VASTVideoView;Ljava/util/List;Ljava/lang/String;)V

    .line 2057
    iget-boolean v2, p0, Lcom/millennialmedia/internal/video/VASTVideoView$25;->b:Z

    if-eqz v2, :cond_0

    .line 2059
    iget-object v2, p0, Lcom/millennialmedia/internal/video/VASTVideoView$25;->c:Lcom/millennialmedia/internal/video/VASTVideoView;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$VideoClicks;->customClickUrls:Ljava/util/List;

    const-string v3, "Firing wrapper custom click url ="

    invoke-static {v2, v0, v3}, Lcom/millennialmedia/internal/video/VASTVideoView;->a(Lcom/millennialmedia/internal/video/VASTVideoView;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    .line 2062
    :cond_1
    return-void
.end method
