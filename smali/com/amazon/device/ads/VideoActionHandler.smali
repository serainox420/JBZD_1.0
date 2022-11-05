.class Lcom/amazon/device/ads/VideoActionHandler;
.super Ljava/lang/Object;
.source "VideoActionHandler.java"

# interfaces
.implements Lcom/amazon/device/ads/AdActivity$AdActivityAdapter;


# instance fields
.field private activity:Landroid/app/Activity;

.field private layout:Landroid/widget/RelativeLayout;

.field private player:Lcom/amazon/device/ads/AdVideoPlayer;


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/AdVideoPlayer;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/amazon/device/ads/VideoActionHandler;->player:Lcom/amazon/device/ads/AdVideoPlayer;

    .line 35
    iput-object p2, p0, Lcom/amazon/device/ads/VideoActionHandler;->activity:Landroid/app/Activity;

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/device/ads/VideoActionHandler;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/amazon/device/ads/VideoActionHandler;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method private initPlayer(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 86
    new-instance v0, Lcom/amazon/device/ads/AdVideoPlayer;

    iget-object v1, p0, Lcom/amazon/device/ads/VideoActionHandler;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/amazon/device/ads/AdVideoPlayer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amazon/device/ads/VideoActionHandler;->player:Lcom/amazon/device/ads/AdVideoPlayer;

    .line 87
    iget-object v0, p0, Lcom/amazon/device/ads/VideoActionHandler;->player:Lcom/amazon/device/ads/AdVideoPlayer;

    const-string v1, "url"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdVideoPlayer;->setPlayData(Ljava/lang/String;)V

    .line 89
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 90
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 92
    iget-object v1, p0, Lcom/amazon/device/ads/VideoActionHandler;->player:Lcom/amazon/device/ads/AdVideoPlayer;

    invoke-virtual {v1, v0}, Lcom/amazon/device/ads/AdVideoPlayer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    iget-object v0, p0, Lcom/amazon/device/ads/VideoActionHandler;->player:Lcom/amazon/device/ads/AdVideoPlayer;

    iget-object v1, p0, Lcom/amazon/device/ads/VideoActionHandler;->layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdVideoPlayer;->setViewGroup(Landroid/view/ViewGroup;)V

    .line 94
    iget-object v0, p0, Lcom/amazon/device/ads/VideoActionHandler;->player:Lcom/amazon/device/ads/AdVideoPlayer;

    invoke-direct {p0, v0}, Lcom/amazon/device/ads/VideoActionHandler;->setPlayerListener(Lcom/amazon/device/ads/AdVideoPlayer;)V

    .line 95
    return-void
.end method

.method private setPlayerListener(Lcom/amazon/device/ads/AdVideoPlayer;)V
    .locals 1

    .prologue
    .line 68
    new-instance v0, Lcom/amazon/device/ads/VideoActionHandler$1;

    invoke-direct {v0, p0}, Lcom/amazon/device/ads/VideoActionHandler$1;-><init>(Lcom/amazon/device/ads/VideoActionHandler;)V

    invoke-virtual {p1, v0}, Lcom/amazon/device/ads/AdVideoPlayer;->setListener(Lcom/amazon/device/ads/AdVideoPlayer$AdVideoPlayerListener;)V

    .line 82
    return-void
.end method


# virtual methods
.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 161
    return-void
.end method

.method public onCreate()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 53
    iget-object v0, p0, Lcom/amazon/device/ads/VideoActionHandler;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 54
    new-instance v1, Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/amazon/device/ads/VideoActionHandler;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/amazon/device/ads/VideoActionHandler;->layout:Landroid/widget/RelativeLayout;

    .line 55
    iget-object v1, p0, Lcom/amazon/device/ads/VideoActionHandler;->layout:Landroid/widget/RelativeLayout;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    iget-object v1, p0, Lcom/amazon/device/ads/VideoActionHandler;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/amazon/device/ads/VideoActionHandler;->layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 58
    invoke-direct {p0, v0}, Lcom/amazon/device/ads/VideoActionHandler;->initPlayer(Landroid/os/Bundle;)V

    .line 59
    iget-object v0, p0, Lcom/amazon/device/ads/VideoActionHandler;->player:Lcom/amazon/device/ads/AdVideoPlayer;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdVideoPlayer;->playVideo()V

    .line 60
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/amazon/device/ads/VideoActionHandler;->player:Lcom/amazon/device/ads/AdVideoPlayer;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/amazon/device/ads/VideoActionHandler;->player:Lcom/amazon/device/ads/AdVideoPlayer;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdVideoPlayer;->releasePlayer()V

    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/device/ads/VideoActionHandler;->player:Lcom/amazon/device/ads/AdVideoPlayer;

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/VideoActionHandler;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 143
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 102
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 109
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/amazon/device/ads/VideoActionHandler;->player:Lcom/amazon/device/ads/AdVideoPlayer;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/amazon/device/ads/VideoActionHandler;->player:Lcom/amazon/device/ads/AdVideoPlayer;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdVideoPlayer;->releasePlayer()V

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/device/ads/VideoActionHandler;->player:Lcom/amazon/device/ads/AdVideoPlayer;

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/VideoActionHandler;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 124
    return-void
.end method

.method public onWindowFocusChanged()V
    .locals 0

    .prologue
    .line 175
    return-void
.end method

.method public preOnCreate()V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/amazon/device/ads/VideoActionHandler;->activity:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 153
    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/amazon/device/ads/VideoActionHandler;->activity:Landroid/app/Activity;

    .line 45
    return-void
.end method
