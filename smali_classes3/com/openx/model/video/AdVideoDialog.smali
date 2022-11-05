.class public Lcom/openx/model/video/AdVideoDialog;
.super Landroid/app/Dialog;
.source "AdVideoDialog.java"

# interfaces
.implements Lcom/openx/model/video/VideoPlayer$VideoPlayerCloseListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# instance fields
.field adEventsListener:Lcom/openx/view/AdEventsListener;

.field private adRequest:Lcom/openx/core/network/OXAdRequest;

.field protected container:Landroid/widget/RelativeLayout;

.field context:Landroid/content/Context;

.field isPreloadedVideo:Z

.field playFullscreen:Z

.field preloadedAdVideoPath:Ljava/lang/String;

.field private skipDetailsVideoDialog:Lcom/openx/model/video/CustomVideoAdProperties;

.field vastTag:Ljava/lang/String;

.field vastXml:Lcom/openx/model/vast/VASTParser;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 37
    const v0, 0x103000a

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 39
    iput-object p1, p0, Lcom/openx/model/video/AdVideoDialog;->context:Landroid/content/Context;

    .line 41
    invoke-direct {p0}, Lcom/openx/model/video/AdVideoDialog;->init()V

    .line 43
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/openx/model/video/AdVideoDialog;->container:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/openx/view/AdEventsListener;Ljava/lang/String;Ljava/lang/String;Lcom/openx/model/vast/VASTParser;ZLcom/openx/model/video/CustomVideoAdProperties;ZLcom/openx/core/network/OXAdRequest;)V
    .locals 1

    .prologue
    .line 57
    const v0, 0x103000a

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 59
    iput-object p1, p0, Lcom/openx/model/video/AdVideoDialog;->context:Landroid/content/Context;

    .line 61
    invoke-direct {p0}, Lcom/openx/model/video/AdVideoDialog;->init()V

    .line 63
    iput-object p2, p0, Lcom/openx/model/video/AdVideoDialog;->adEventsListener:Lcom/openx/view/AdEventsListener;

    .line 64
    iput-object p3, p0, Lcom/openx/model/video/AdVideoDialog;->vastTag:Ljava/lang/String;

    .line 65
    iput-object p4, p0, Lcom/openx/model/video/AdVideoDialog;->preloadedAdVideoPath:Ljava/lang/String;

    .line 66
    iput-object p5, p0, Lcom/openx/model/video/AdVideoDialog;->vastXml:Lcom/openx/model/vast/VASTParser;

    .line 69
    iput-object p7, p0, Lcom/openx/model/video/AdVideoDialog;->skipDetailsVideoDialog:Lcom/openx/model/video/CustomVideoAdProperties;

    .line 71
    iput-boolean p8, p0, Lcom/openx/model/video/AdVideoDialog;->playFullscreen:Z

    .line 72
    iput-boolean p6, p0, Lcom/openx/model/video/AdVideoDialog;->isPreloadedVideo:Z

    .line 73
    iput-object p9, p0, Lcom/openx/model/video/AdVideoDialog;->adRequest:Lcom/openx/core/network/OXAdRequest;

    .line 75
    invoke-direct {p0}, Lcom/openx/model/video/AdVideoDialog;->showVideoAd()V

    .line 77
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 86
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/openx/model/video/AdVideoDialog;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/openx/model/video/AdVideoDialog;->container:Landroid/widget/RelativeLayout;

    .line 88
    iget-object v0, p0, Lcom/openx/model/video/AdVideoDialog;->container:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/openx/model/video/AdVideoDialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    new-instance v0, Lcom/openx/model/video/AdVideoDialog$1;

    invoke-direct {v0, p0}, Lcom/openx/model/video/AdVideoDialog$1;-><init>(Lcom/openx/model/video/AdVideoDialog;)V

    invoke-virtual {p0, v0}, Lcom/openx/model/video/AdVideoDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 107
    new-instance v0, Lcom/openx/model/video/AdVideoDialog$2;

    invoke-direct {v0, p0}, Lcom/openx/model/video/AdVideoDialog$2;-><init>(Lcom/openx/model/video/AdVideoDialog;)V

    invoke-virtual {p0, v0}, Lcom/openx/model/video/AdVideoDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 117
    return-void
.end method

.method private showVideoAd()V
    .locals 12

    .prologue
    const/4 v4, 0x0

    .line 122
    new-instance v11, Lcom/openx/model/video/VideoAdManager;

    iget-object v0, p0, Lcom/openx/model/video/AdVideoDialog;->context:Landroid/content/Context;

    invoke-direct {v11, v0}, Lcom/openx/model/video/VideoAdManager;-><init>(Landroid/content/Context;)V

    .line 128
    iget-object v0, p0, Lcom/openx/model/video/AdVideoDialog;->skipDetailsVideoDialog:Lcom/openx/model/video/CustomVideoAdProperties;

    invoke-virtual {v11, v0}, Lcom/openx/model/video/VideoAdManager;->setCustomVideoAdProperties(Lcom/openx/model/video/CustomVideoAdProperties;)V

    .line 130
    invoke-virtual {v11, p0}, Lcom/openx/model/video/VideoAdManager;->setVideoPlayerClosedListener(Lcom/openx/model/video/VideoPlayer$VideoPlayerCloseListener;)V

    .line 132
    iget-object v0, p0, Lcom/openx/model/video/AdVideoDialog;->vastTag:Ljava/lang/String;

    invoke-virtual {v11, v0}, Lcom/openx/model/video/VideoAdManager;->setVASTTag(Ljava/lang/String;)V

    .line 134
    new-instance v0, Lcom/openx/model/video/VideoPlayer;

    iget-object v1, p0, Lcom/openx/model/video/AdVideoDialog;->context:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    iget-object v3, p0, Lcom/openx/model/video/AdVideoDialog;->preloadedAdVideoPath:Ljava/lang/String;

    iget-object v5, p0, Lcom/openx/model/video/AdVideoDialog;->vastXml:Lcom/openx/model/vast/VASTParser;

    iget-boolean v7, p0, Lcom/openx/model/video/AdVideoDialog;->isPreloadedVideo:Z

    iget-object v8, p0, Lcom/openx/model/video/AdVideoDialog;->vastTag:Ljava/lang/String;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/openx/model/video/AdVideoDialog;->skipDetailsVideoDialog:Lcom/openx/model/video/CustomVideoAdProperties;

    move-object v2, p0

    move-object v6, v4

    invoke-direct/range {v0 .. v11}, Lcom/openx/model/video/VideoPlayer;-><init>(Landroid/content/Context;Lcom/openx/model/video/VideoPlayer$VideoPlayerCloseListener;Ljava/lang/String;Ljava/lang/String;Lcom/openx/model/vast/VASTParser;Landroid/content/Intent;ZLjava/lang/String;ZLcom/openx/model/video/CustomVideoAdProperties;Lcom/openx/model/video/VideoAdManager;)V

    .line 136
    invoke-virtual {v11, v0}, Lcom/openx/model/video/VideoAdManager;->addVideoAdEventListener(Lcom/openx/model/video/VideoAdEventListener;)V

    .line 137
    invoke-virtual {v11, v0}, Lcom/openx/model/video/VideoAdManager;->addVideoInfoListener(Lcom/openx/model/video/VideoInfoListener;)V

    .line 139
    invoke-virtual {v11, v0}, Lcom/openx/model/video/VideoAdManager;->setVideoContainer(Landroid/widget/RelativeLayout;)V

    .line 142
    invoke-virtual {v0}, Lcom/openx/model/video/VideoPlayer;->getVideoView()Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/openx/model/video/VideoAdManager;->setVideoView(Landroid/widget/VideoView;)V

    .line 145
    iget-object v0, p0, Lcom/openx/model/video/AdVideoDialog;->adRequest:Lcom/openx/core/network/OXAdRequest;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/openx/model/video/AdVideoDialog;->adRequest:Lcom/openx/core/network/OXAdRequest;

    iget-object v1, p0, Lcom/openx/model/video/AdVideoDialog;->adRequest:Lcom/openx/core/network/OXAdRequest;

    iget-object v1, v1, Lcom/openx/core/network/OXAdRequest;->adCallParams:Lcom/openx/model/adParams/AdCallParameters;

    invoke-virtual {v0, v1}, Lcom/openx/core/network/OXAdRequest;->setAdCallParams(Lcom/openx/model/adParams/AdCallParameters;)V

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/openx/model/video/AdVideoDialog;->adRequest:Lcom/openx/core/network/OXAdRequest;

    invoke-virtual {v11, v0}, Lcom/openx/model/video/VideoAdManager;->start(Lcom/openx/core/network/OXAdRequest;)V

    .line 151
    iget-object v0, p0, Lcom/openx/model/video/AdVideoDialog;->container:Landroid/widget/RelativeLayout;

    invoke-virtual {v11}, Lcom/openx/model/video/VideoAdManager;->getVideoContainer()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 153
    return-void
.end method


# virtual methods
.method public removeView()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/openx/model/video/AdVideoDialog;->container:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 82
    return-void
.end method

.method public videoPlayerClosed()V
    .locals 0

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/openx/model/video/AdVideoDialog;->cancel()V

    .line 161
    return-void
.end method
