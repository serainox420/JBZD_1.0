.class Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity$5;
.super Ljava/lang/Object;
.source "VideoAdSDKControllerUsingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->onVideoReportsCurrentState(Lcom/video/adsdk/interfaces/VideoBridge$MovieState;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;

.field final synthetic val$currentPlayBackTime:J

.field final synthetic val$state:Lcom/video/adsdk/interfaces/VideoBridge$MovieState;


# direct methods
.method constructor <init>(Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;JLcom/video/adsdk/interfaces/VideoBridge$MovieState;)V
    .locals 0

    .prologue
    .line 482
    iput-object p1, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity$5;->this$0:Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;

    iput-wide p2, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity$5;->val$currentPlayBackTime:J

    iput-object p4, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity$5;->val$state:Lcom/video/adsdk/interfaces/VideoBridge$MovieState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 486
    iget-object v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity$5;->this$0:Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;

    invoke-virtual {v0}, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->getJavascriptBridge()Lcom/video/adsdk/interfaces/JavascriptBridge;

    move-result-object v0

    invoke-interface {v0}, Lcom/video/adsdk/interfaces/JavascriptBridge;->clearView()V

    .line 488
    iget-wide v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity$5;->val$currentPlayBackTime:J

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 489
    iget-object v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity$5;->this$0:Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;

    iget v1, v0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->stateSendToJavascriptWithSecondOneAlready:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->stateSendToJavascriptWithSecondOneAlready:I

    .line 490
    iget-object v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity$5;->this$0:Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;

    iget v0, v0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->stateSendToJavascriptWithSecondOneAlready:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 496
    :goto_0
    return-void

    .line 495
    :cond_0
    iget-object v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity$5;->this$0:Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;

    invoke-virtual {v0}, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->getJavascriptBridge()Lcom/video/adsdk/interfaces/JavascriptBridge;

    move-result-object v0

    iget-object v1, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity$5;->val$state:Lcom/video/adsdk/interfaces/VideoBridge$MovieState;

    iget-wide v2, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity$5;->val$currentPlayBackTime:J

    invoke-interface {v0, v1, v2, v3}, Lcom/video/adsdk/interfaces/JavascriptBridge;->moviePulse(Lcom/video/adsdk/interfaces/VideoBridge$MovieState;J)V

    goto :goto_0
.end method
