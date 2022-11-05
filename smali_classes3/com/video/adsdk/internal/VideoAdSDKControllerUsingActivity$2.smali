.class Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity$2;
.super Ljava/lang/Object;
.source "VideoAdSDKControllerUsingActivity.java"

# interfaces
.implements Lcom/video/adsdk/interfaces/ADRequestPreparedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->createADRequest(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;

.field final synthetic val$shouldPrefetch:Z


# direct methods
.method constructor <init>(Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;Z)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity$2;->this$0:Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;

    iput-boolean p2, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity$2;->val$shouldPrefetch:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onADRequestPrepared(Lcom/video/adsdk/internal/ADRequest;)V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity$2;->this$0:Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;

    invoke-static {v0, p1}, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->access$002(Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;Lcom/video/adsdk/internal/ADRequest;)Lcom/video/adsdk/internal/ADRequest;

    .line 168
    iget-object v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity$2;->this$0:Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;

    new-instance v1, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity$2$1;

    invoke-direct {v1, p0}, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity$2$1;-><init>(Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity$2;)V

    invoke-virtual {v0, v1}, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 181
    return-void
.end method
