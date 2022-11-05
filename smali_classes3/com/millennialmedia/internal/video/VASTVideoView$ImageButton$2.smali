.class Lcom/millennialmedia/internal/video/VASTVideoView$ImageButton$2;
.super Ljava/lang/Object;
.source "VASTVideoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/video/VASTVideoView$ImageButton;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/millennialmedia/internal/video/VASTVideoView$ImageButton;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/video/VASTVideoView$ImageButton;)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lcom/millennialmedia/internal/video/VASTVideoView$ImageButton$2;->a:Lcom/millennialmedia/internal/video/VASTVideoView$ImageButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 185
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView$ImageButton$2;->a:Lcom/millennialmedia/internal/video/VASTVideoView$ImageButton;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTVideoView$ImageButton;->b:Lcom/millennialmedia/internal/video/VASTParser$Button;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$Button;->staticResource:Lcom/millennialmedia/internal/video/VASTParser$StaticResource;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$StaticResource;->uri:Ljava/lang/String;

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/HttpUtils;->getBitmapFromGetRequest(Ljava/lang/String;)Lcom/millennialmedia/internal/utils/HttpUtils$Response;

    move-result-object v0

    .line 187
    if-eqz v0, :cond_0

    iget v1, v0, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->code:I

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    .line 188
    new-instance v1, Lcom/millennialmedia/internal/video/VASTVideoView$ImageButton$2$1;

    invoke-direct {v1, p0, v0}, Lcom/millennialmedia/internal/video/VASTVideoView$ImageButton$2$1;-><init>(Lcom/millennialmedia/internal/video/VASTVideoView$ImageButton$2;Lcom/millennialmedia/internal/utils/HttpUtils$Response;)V

    invoke-static {v1}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 195
    :cond_0
    return-void
.end method
