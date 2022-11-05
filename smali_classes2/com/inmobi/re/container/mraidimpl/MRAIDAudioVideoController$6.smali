.class Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController$6;
.super Ljava/lang/Object;
.source "MRAIDAudioVideoController.java"

# interfaces
.implements Lcom/inmobi/re/controller/util/AVPlayerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->playVideoImpl(Landroid/os/Bundle;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;


# direct methods
.method constructor <init>(Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;)V
    .locals 0

    .prologue
    .line 343
    iput-object p1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController$6;->a:Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/inmobi/re/controller/util/AVPlayer;)V
    .locals 3

    .prologue
    .line 355
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController$6;->a:Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;

    invoke-static {v0}, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->a(Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;)Lcom/inmobi/re/container/IMWebView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView;->setBusy(Z)V

    .line 357
    :try_start_0
    invoke-virtual {p1}, Lcom/inmobi/re/controller/util/AVPlayer;->getBackGroundLayout()Landroid/view/ViewGroup;

    move-result-object v0

    .line 360
    if-eqz v0, :cond_0

    .line 361
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 362
    invoke-virtual {p1}, Lcom/inmobi/re/controller/util/AVPlayer;->getBackGroundLayout()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 364
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/inmobi/re/controller/util/AVPlayer;->setBackGroundLayout(Landroid/view/ViewGroup;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    :goto_0
    monitor-enter p0

    .line 379
    :try_start_1
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController$6;->a:Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;

    iget-object v0, v0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayer:Lcom/inmobi/re/controller/util/AVPlayer;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/inmobi/re/controller/util/AVPlayer;->getPropertyID()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController$6;->a:Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;

    iget-object v1, v1, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayer:Lcom/inmobi/re/controller/util/AVPlayer;

    invoke-virtual {v1}, Lcom/inmobi/re/controller/util/AVPlayer;->getPropertyID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 382
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController$6;->a:Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayer:Lcom/inmobi/re/controller/util/AVPlayer;

    .line 383
    :cond_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 384
    return-void

    .line 366
    :catch_0
    move-exception v0

    .line 367
    const-string v1, "[InMobi]-[RE]-4.5.5"

    const-string v2, "Problem removing the video framelayout or relativelayout depending on video startstyle"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 383
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public onError(Lcom/inmobi/re/controller/util/AVPlayer;)V
    .locals 0

    .prologue
    .line 350
    invoke-virtual {p0, p1}, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController$6;->onComplete(Lcom/inmobi/re/controller/util/AVPlayer;)V

    .line 351
    return-void
.end method

.method public onPrepared(Lcom/inmobi/re/controller/util/AVPlayer;)V
    .locals 0

    .prologue
    .line 346
    return-void
.end method
