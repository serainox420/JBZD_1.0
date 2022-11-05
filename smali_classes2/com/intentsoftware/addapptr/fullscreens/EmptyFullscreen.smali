.class public Lcom/intentsoftware/addapptr/fullscreens/EmptyFullscreen;
.super Lcom/intentsoftware/addapptr/ad/FullscreenAd;
.source "EmptyFullscreen.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/ad/FullscreenAd;-><init>()V

    return-void
.end method


# virtual methods
.method public load(Landroid/app/Activity;Ljava/lang/String;Lcom/intentsoftware/addapptr/BannerSize;Lcom/intentsoftware/addapptr/c/k;)V
    .locals 0

    .prologue
    .line 22
    invoke-super {p0, p1, p2, p3, p4}, Lcom/intentsoftware/addapptr/ad/FullscreenAd;->load(Landroid/app/Activity;Ljava/lang/String;Lcom/intentsoftware/addapptr/BannerSize;Lcom/intentsoftware/addapptr/c/k;)V

    .line 24
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/fullscreens/EmptyFullscreen;->notifyListenerThatAdWasLoaded()V

    .line 25
    return-void
.end method

.method public show()Z
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/fullscreens/EmptyFullscreen;->notifyListenerThatShowingEmpty()V

    .line 15
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/fullscreens/EmptyFullscreen;->notifyListenerThatAdIsShown()V

    .line 16
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/fullscreens/EmptyFullscreen;->fallbackNotifyListenerThatAdWasDismissed()V

    .line 17
    const/4 v0, 0x1

    return v0
.end method

.method public unload()V
    .locals 0

    .prologue
    .line 29
    return-void
.end method
