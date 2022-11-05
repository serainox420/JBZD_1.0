.class Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController$5;
.super Ljava/lang/Object;
.source "MRAIDAudioVideoController.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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
    .line 298
    iput-object p1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController$5;->a:Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 302
    const/4 v1, 0x4

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 305
    const-string v1, "[InMobi]-[RE]-4.5.5"

    const-string v2, "Back pressed while fullscreen video is playing"

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    iget-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController$5;->a:Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;

    iget-object v1, v1, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayer:Lcom/inmobi/re/controller/util/AVPlayer;

    invoke-virtual {v1, v0}, Lcom/inmobi/re/controller/util/AVPlayer;->releasePlayer(Z)V

    .line 311
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
