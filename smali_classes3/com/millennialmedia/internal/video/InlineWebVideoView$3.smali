.class Lcom/millennialmedia/internal/video/InlineWebVideoView$3;
.super Ljava/lang/Object;
.source "InlineWebVideoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/video/InlineWebVideoView;->setPlaceholder(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/net/Uri;

.field final synthetic b:Lcom/millennialmedia/internal/video/InlineWebVideoView;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/video/InlineWebVideoView;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 520
    iput-object p1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$3;->b:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    iput-object p2, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$3;->a:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 524
    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$3;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/HttpUtils;->getBitmapFromGetRequest(Ljava/lang/String;)Lcom/millennialmedia/internal/utils/HttpUtils$Response;

    move-result-object v0

    .line 525
    if-eqz v0, :cond_0

    iget v1, v0, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->code:I

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 526
    new-instance v1, Lcom/millennialmedia/internal/video/InlineWebVideoView$3$1;

    invoke-direct {v1, p0, v0}, Lcom/millennialmedia/internal/video/InlineWebVideoView$3$1;-><init>(Lcom/millennialmedia/internal/video/InlineWebVideoView$3;Lcom/millennialmedia/internal/utils/HttpUtils$Response;)V

    invoke-static {v1}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 546
    :cond_0
    return-void
.end method
