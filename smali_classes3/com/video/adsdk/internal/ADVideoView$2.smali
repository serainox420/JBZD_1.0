.class Lcom/video/adsdk/internal/ADVideoView$2;
.super Ljava/util/TimerTask;
.source "ADVideoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/video/adsdk/internal/ADVideoView;->startPulseTimer()V
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
    .line 299
    iput-object p1, p0, Lcom/video/adsdk/internal/ADVideoView$2;->this$0:Lcom/video/adsdk/internal/ADVideoView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 303
    iget-object v0, p0, Lcom/video/adsdk/internal/ADVideoView$2;->this$0:Lcom/video/adsdk/internal/ADVideoView;

    new-instance v1, Lcom/video/adsdk/internal/ADVideoView$2$1;

    invoke-direct {v1, p0}, Lcom/video/adsdk/internal/ADVideoView$2$1;-><init>(Lcom/video/adsdk/internal/ADVideoView$2;)V

    invoke-virtual {v0, v1}, Lcom/video/adsdk/internal/ADVideoView;->post(Ljava/lang/Runnable;)Z

    .line 316
    return-void
.end method
