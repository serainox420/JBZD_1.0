.class Lcom/millennialmedia/internal/video/VASTVideoView$6$1;
.super Ljava/lang/Object;
.source "VASTVideoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/video/VASTVideoView$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/millennialmedia/internal/utils/HttpUtils$Response;

.field final synthetic b:Lcom/millennialmedia/internal/video/VASTVideoView$6;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/video/VASTVideoView$6;Lcom/millennialmedia/internal/utils/HttpUtils$Response;)V
    .locals 0

    .prologue
    .line 956
    iput-object p1, p0, Lcom/millennialmedia/internal/video/VASTVideoView$6$1;->b:Lcom/millennialmedia/internal/video/VASTVideoView$6;

    iput-object p2, p0, Lcom/millennialmedia/internal/video/VASTVideoView$6$1;->a:Lcom/millennialmedia/internal/utils/HttpUtils$Response;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 960
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView$6$1;->b:Lcom/millennialmedia/internal/video/VASTVideoView$6;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTVideoView$6;->b:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    iget-object v1, p0, Lcom/millennialmedia/internal/video/VASTVideoView$6$1;->a:Lcom/millennialmedia/internal/utils/HttpUtils$Response;

    iget-object v1, v1, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;->setContent(Ljava/lang/String;)V

    .line 961
    return-void
.end method
