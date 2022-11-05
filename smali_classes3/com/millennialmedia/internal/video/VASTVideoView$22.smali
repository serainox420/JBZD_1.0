.class Lcom/millennialmedia/internal/video/VASTVideoView$22;
.super Ljava/lang/Object;
.source "VASTVideoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/video/VASTVideoView;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/millennialmedia/internal/video/VASTVideoView;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/video/VASTVideoView;)V
    .locals 0

    .prologue
    .line 1976
    iput-object p1, p0, Lcom/millennialmedia/internal/video/VASTVideoView$22;->a:Lcom/millennialmedia/internal/video/VASTVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1980
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView$22;->a:Lcom/millennialmedia/internal/video/VASTVideoView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/VASTVideoView;->k(Lcom/millennialmedia/internal/video/VASTVideoView;)Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1981
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView$22;->a:Lcom/millennialmedia/internal/video/VASTVideoView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/VASTVideoView;->k(Lcom/millennialmedia/internal/video/VASTVideoView;)Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoViewListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoViewListener;->onClicked()V

    .line 1983
    :cond_0
    return-void
.end method
