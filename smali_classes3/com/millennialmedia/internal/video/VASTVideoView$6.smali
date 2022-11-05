.class Lcom/millennialmedia/internal/video/VASTVideoView$6;
.super Ljava/lang/Object;
.source "VASTVideoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/video/VASTVideoView;->a(Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

.field final synthetic c:Lcom/millennialmedia/internal/video/VASTVideoView;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/video/VASTVideoView;Ljava/lang/String;Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;)V
    .locals 0

    .prologue
    .line 949
    iput-object p1, p0, Lcom/millennialmedia/internal/video/VASTVideoView$6;->c:Lcom/millennialmedia/internal/video/VASTVideoView;

    iput-object p2, p0, Lcom/millennialmedia/internal/video/VASTVideoView$6;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/millennialmedia/internal/video/VASTVideoView$6;->b:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 953
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView$6;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/HttpUtils;->getContentFromGetRequest(Ljava/lang/String;)Lcom/millennialmedia/internal/utils/HttpUtils$Response;

    move-result-object v0

    .line 955
    iget v1, v0, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->code:I

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->content:Ljava/lang/String;

    invoke-static {v1}, Lcom/millennialmedia/internal/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 956
    new-instance v1, Lcom/millennialmedia/internal/video/VASTVideoView$6$1;

    invoke-direct {v1, p0, v0}, Lcom/millennialmedia/internal/video/VASTVideoView$6$1;-><init>(Lcom/millennialmedia/internal/video/VASTVideoView$6;Lcom/millennialmedia/internal/utils/HttpUtils$Response;)V

    invoke-static {v1}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 964
    :cond_0
    return-void
.end method
