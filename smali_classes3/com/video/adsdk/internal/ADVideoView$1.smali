.class Lcom/video/adsdk/internal/ADVideoView$1;
.super Ljava/lang/Object;
.source "ADVideoView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/video/adsdk/internal/ADVideoView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/video/adsdk/internal/ADVideoView;


# direct methods
.method constructor <init>(Lcom/video/adsdk/internal/ADVideoView;)V
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lcom/video/adsdk/internal/ADVideoView$1;->this$0:Lcom/video/adsdk/internal/ADVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/video/adsdk/internal/ADVideoView$1;->this$0:Lcom/video/adsdk/internal/ADVideoView;

    iget-object v0, v0, Lcom/video/adsdk/internal/ADVideoView;->m_listeners:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/video/adsdk/interfaces/VideoBridgeListener;

    .line 228
    invoke-interface {v0}, Lcom/video/adsdk/interfaces/VideoBridgeListener;->onSkipButtonClicked()V

    goto :goto_0

    .line 230
    :cond_0
    return-void
.end method
