.class Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity$6;
.super Ljava/lang/Object;
.source "VideoAdSDKControllerUsingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->onPrefetchedFile(Lcom/video/adsdk/internal/ADVideoFile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;


# direct methods
.method constructor <init>(Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;)V
    .locals 0

    .prologue
    .line 607
    iput-object p1, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity$6;->this$0:Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 611
    iget-object v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity$6;->this$0:Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;

    invoke-static {v0}, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->access$300(Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;)Lcom/video/adsdk/interfaces/VideoBridge;

    move-result-object v0

    invoke-interface {v0}, Lcom/video/adsdk/interfaces/VideoBridge;->play()V

    .line 612
    return-void
.end method
