.class Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity$2$1;
.super Ljava/lang/Object;
.source "VideoAdSDKControllerUsingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity$2;->onADRequestPrepared(Lcom/video/adsdk/internal/ADRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity$2;


# direct methods
.method constructor <init>(Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity$2;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity$2$1;->this$1:Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity$2$1;->this$1:Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity$2;

    iget-object v0, v0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity$2;->this$0:Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;

    invoke-static {v0}, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->access$000(Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;)Lcom/video/adsdk/internal/ADRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity$2$1;->this$1:Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity$2;

    iget-object v1, v1, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity$2;->this$0:Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;

    invoke-static {v1}, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->access$100(Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/video/adsdk/internal/ADRequest;->setCustomParameters(Ljava/util/Map;)V

    .line 172
    iget-object v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity$2$1;->this$1:Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity$2;

    iget-boolean v0, v0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity$2;->val$shouldPrefetch:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity$2$1;->this$1:Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity$2;

    iget-object v0, v0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity$2;->this$0:Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;

    invoke-static {v0}, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->access$000(Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;)Lcom/video/adsdk/internal/ADRequest;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/video/adsdk/internal/ADRequest;->getUrlForPrefetching(I)Ljava/lang/String;

    move-result-object v0

    .line 175
    :goto_0
    if-eqz v0, :cond_1

    .line 176
    iget-object v1, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity$2$1;->this$1:Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity$2;

    iget-object v1, v1, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity$2;->this$0:Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;

    invoke-static {v1}, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->access$200(Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;)Lcom/video/adsdk/interfaces/JavascriptBridge;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/video/adsdk/interfaces/JavascriptBridge;->loadUrl(Ljava/lang/String;)V

    .line 179
    :goto_1
    return-void

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity$2$1;->this$1:Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity$2;

    iget-object v0, v0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity$2;->this$0:Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;

    .line 173
    invoke-static {v0}, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->access$000(Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;)Lcom/video/adsdk/internal/ADRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/video/adsdk/internal/ADRequest;->getUrlForPlay()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 178
    :cond_1
    const-string v0, "VIDEO_AD_SDK"

    const-string v1, "No URL to load. No advertising ID"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
