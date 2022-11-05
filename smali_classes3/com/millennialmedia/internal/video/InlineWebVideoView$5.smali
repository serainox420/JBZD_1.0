.class Lcom/millennialmedia/internal/video/InlineWebVideoView$5;
.super Ljava/lang/Object;
.source "InlineWebVideoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/video/InlineWebVideoView;->onPrepared(Lcom/millennialmedia/internal/video/MMVideoView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/millennialmedia/internal/video/InlineWebVideoView;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/video/InlineWebVideoView;)V
    .locals 0

    .prologue
    .line 847
    iput-object p1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$5;->a:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 851
    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$5;->a:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->d(Lcom/millennialmedia/internal/video/InlineWebVideoView;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/MMWebView;

    .line 852
    if-eqz v0, :cond_0

    .line 855
    iget-object v1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$5;->a:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-static {v1}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->e(Lcom/millennialmedia/internal/video/InlineWebVideoView;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$5;->a:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-virtual {v3}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->getTag()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, "stateChange"

    aput-object v3, v2, v5

    const-string v3, "loading"

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/millennialmedia/internal/MMWebView;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 858
    iget-object v1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$5;->a:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-static {v1}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->e(Lcom/millennialmedia/internal/video/InlineWebVideoView;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$5;->a:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-virtual {v3}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->getTag()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, "updateVideoURL"

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$5;->a:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-static {v3}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->n(Lcom/millennialmedia/internal/video/InlineWebVideoView;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/millennialmedia/internal/MMWebView;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 861
    iget-object v1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$5;->a:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-static {v1}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->e(Lcom/millennialmedia/internal/video/InlineWebVideoView;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$5;->a:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-virtual {v3}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->getTag()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, "durationChange"

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$5;->a:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-static {v3}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->c(Lcom/millennialmedia/internal/video/InlineWebVideoView;)Lcom/millennialmedia/internal/video/MMVideoView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/millennialmedia/internal/video/MMVideoView;->getDuration()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/millennialmedia/internal/MMWebView;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 863
    invoke-virtual {v0}, Lcom/millennialmedia/internal/MMWebView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$5;->a:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-static {v2}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->j(Lcom/millennialmedia/internal/video/InlineWebVideoView;)I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$5;->a:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-static {v2}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->k(Lcom/millennialmedia/internal/video/InlineWebVideoView;)I

    move-result v2

    if-lt v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/millennialmedia/internal/MMWebView;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$5;->a:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-static {v2}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->l(Lcom/millennialmedia/internal/video/InlineWebVideoView;)I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$5;->a:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-static {v2}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->m(Lcom/millennialmedia/internal/video/InlineWebVideoView;)I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 864
    iget-object v1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$5;->a:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-static {v1, v0}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->a(Lcom/millennialmedia/internal/video/InlineWebVideoView;Lcom/millennialmedia/internal/MMWebView;)V

    .line 869
    :cond_0
    :goto_0
    return-void

    .line 866
    :cond_1
    invoke-static {}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cannot attach the inline video; it will not fit within the anchor view."

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
