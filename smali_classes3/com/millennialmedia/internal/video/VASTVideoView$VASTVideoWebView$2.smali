.class Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView$2;
.super Ljava/lang/Object;
.source "VASTVideoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;->restart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;)V
    .locals 0

    .prologue
    .line 288
    iput-object p1, p0, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView$2;->a:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView$2;->a:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;->f:Lcom/millennialmedia/internal/video/VASTVideoView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/VASTVideoView;->g(Lcom/millennialmedia/internal/video/VASTVideoView;)V

    .line 293
    return-void
.end method
