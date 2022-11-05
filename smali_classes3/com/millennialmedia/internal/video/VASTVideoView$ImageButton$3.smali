.class Lcom/millennialmedia/internal/video/VASTVideoView$ImageButton$3;
.super Ljava/lang/Object;
.source "VASTVideoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/video/VASTVideoView$ImageButton;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/millennialmedia/internal/video/VASTParser$ButtonClicks;

.field final synthetic b:Lcom/millennialmedia/internal/video/VASTVideoView$ImageButton;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/video/VASTVideoView$ImageButton;Lcom/millennialmedia/internal/video/VASTParser$ButtonClicks;)V
    .locals 0

    .prologue
    .line 213
    iput-object p1, p0, Lcom/millennialmedia/internal/video/VASTVideoView$ImageButton$3;->b:Lcom/millennialmedia/internal/video/VASTVideoView$ImageButton;

    iput-object p2, p0, Lcom/millennialmedia/internal/video/VASTVideoView$ImageButton$3;->a:Lcom/millennialmedia/internal/video/VASTParser$ButtonClicks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 216
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView$ImageButton$3;->a:Lcom/millennialmedia/internal/video/VASTParser$ButtonClicks;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$ButtonClicks;->clickTrackingUrls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 217
    invoke-static {v0}, Lcom/millennialmedia/internal/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 218
    invoke-static {v0}, Lcom/millennialmedia/internal/utils/HttpUtils;->getContentFromGetRequest(Ljava/lang/String;)Lcom/millennialmedia/internal/utils/HttpUtils$Response;

    goto :goto_0

    .line 221
    :cond_1
    return-void
.end method
