.class Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController$2;
.super Ljava/lang/Object;
.source "MRAIDAudioVideoController.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->playAudioImpl(Landroid/os/Bundle;Landroid/app/Activity;)V
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
    .line 109
    iput-object p1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController$2;->a:Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 114
    const/4 v0, 0x4

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 117
    const-string v0, "[InMobi]-[RE]-4.5.5"

    const-string v1, "Back button pressed while fullscreen audio was playing"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController$2;->a:Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;

    iget-object v0, v0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->audioplayer:Lcom/inmobi/re/controller/util/AVPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/inmobi/re/controller/util/AVPlayer;->releasePlayer(Z)V

    .line 123
    :cond_0
    return v2
.end method
