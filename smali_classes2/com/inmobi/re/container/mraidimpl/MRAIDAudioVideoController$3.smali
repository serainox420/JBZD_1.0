.class Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController$3;
.super Ljava/lang/Object;
.source "MRAIDAudioVideoController.java"

# interfaces
.implements Lcom/inmobi/re/controller/util/AVPlayerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->playAudioImpl(Landroid/os/Bundle;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/re/controller/JSController$PlayerProperties;

.field final synthetic b:Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;


# direct methods
.method constructor <init>(Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;Lcom/inmobi/re/controller/JSController$PlayerProperties;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController$3;->b:Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;

    iput-object p2, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController$3;->a:Lcom/inmobi/re/controller/JSController$PlayerProperties;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/inmobi/re/controller/util/AVPlayer;)V
    .locals 3

    .prologue
    .line 148
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController$3;->a:Lcom/inmobi/re/controller/JSController$PlayerProperties;

    invoke-virtual {v0}, Lcom/inmobi/re/controller/JSController$PlayerProperties;->isFullScreen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    invoke-virtual {p1}, Lcom/inmobi/re/controller/util/AVPlayer;->getBackGroundLayout()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 151
    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {p1}, Lcom/inmobi/re/controller/util/AVPlayer;->getBackGroundLayout()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    invoke-virtual {p1}, Lcom/inmobi/re/controller/util/AVPlayer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 158
    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 163
    :catch_0
    move-exception v0

    .line 164
    const-string v1, "[InMobi]-[RE]-4.5.5"

    const-string v2, "Problem removing the audio relativelayout"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onError(Lcom/inmobi/re/controller/util/AVPlayer;)V
    .locals 0

    .prologue
    .line 141
    invoke-virtual {p0, p1}, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController$3;->onComplete(Lcom/inmobi/re/controller/util/AVPlayer;)V

    .line 142
    return-void
.end method

.method public onPrepared(Lcom/inmobi/re/controller/util/AVPlayer;)V
    .locals 0

    .prologue
    .line 137
    return-void
.end method
