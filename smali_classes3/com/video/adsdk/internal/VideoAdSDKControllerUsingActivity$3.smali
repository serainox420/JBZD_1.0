.class Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity$3;
.super Ljava/lang/Object;
.source "VideoAdSDKControllerUsingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->onPlayMovie(Ljava/lang/String;)V
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
    .line 282
    iput-object p1, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity$3;->this$0:Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 286
    iget-object v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity$3;->this$0:Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;

    invoke-static {v0}, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->access$300(Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;)Lcom/video/adsdk/interfaces/VideoBridge;

    move-result-object v0

    if-nez v0, :cond_0

    .line 294
    :goto_0
    return-void

    .line 288
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity$3;->this$0:Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;

    invoke-static {v0}, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->access$300(Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;)Lcom/video/adsdk/interfaces/VideoBridge;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity$3;->this$0:Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;

    invoke-static {v2}, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->access$400(Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity$3;->this$0:Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;

    invoke-static {v2}, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->access$500(Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;)Lcom/video/adsdk/internal/ADVideoFile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/video/adsdk/internal/ADVideoFile;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/video/adsdk/interfaces/VideoBridge;->setUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    :goto_1
    iget-object v0, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity$3;->this$0:Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;

    invoke-static {v0}, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->access$300(Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;)Lcom/video/adsdk/interfaces/VideoBridge;

    move-result-object v0

    invoke-interface {v0}, Lcom/video/adsdk/interfaces/VideoBridge;->play()V

    goto :goto_0

    .line 289
    :catch_0
    move-exception v0

    .line 290
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 291
    iget-object v1, p0, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity$3;->this$0:Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;

    invoke-static {v1, v0}, Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;->access$600(Lcom/video/adsdk/internal/VideoAdSDKControllerUsingActivity;Ljava/lang/Exception;)V

    goto :goto_1
.end method
