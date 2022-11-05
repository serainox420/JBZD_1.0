.class Lcom/mopub/mobileads/VastVideoViewController$5;
.super Ljava/lang/Object;
.source "VastVideoViewController.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/VastVideoViewController;->a(Landroid/content/Context;I)Lcom/mopub/mobileads/VastVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mopub/mobileads/VastVideoView;

.field final synthetic b:Lcom/mopub/mobileads/VastVideoViewController;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/VastVideoViewController;Lcom/mopub/mobileads/VastVideoView;)V
    .locals 0

    .prologue
    .line 373
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController$5;->b:Lcom/mopub/mobileads/VastVideoViewController;

    iput-object p2, p0, Lcom/mopub/mobileads/VastVideoViewController$5;->a:Lcom/mopub/mobileads/VastVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 3

    .prologue
    .line 379
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController$5;->b:Lcom/mopub/mobileads/VastVideoViewController;

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController$5;->b:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-static {v1}, Lcom/mopub/mobileads/VastVideoViewController;->f(Lcom/mopub/mobileads/VastVideoViewController;)Lcom/mopub/mobileads/VastVideoView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mopub/mobileads/VastVideoView;->getDuration()I

    move-result v1

    invoke-static {v0, v1}, Lcom/mopub/mobileads/VastVideoViewController;->a(Lcom/mopub/mobileads/VastVideoViewController;I)I

    .line 380
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController$5;->b:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-static {v0}, Lcom/mopub/mobileads/VastVideoViewController;->g(Lcom/mopub/mobileads/VastVideoViewController;)V

    .line 381
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController$5;->b:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-static {v0}, Lcom/mopub/mobileads/VastVideoViewController;->h(Lcom/mopub/mobileads/VastVideoViewController;)Lcom/mopub/mobileads/VastCompanionAdConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController$5;->b:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-static {v0}, Lcom/mopub/mobileads/VastVideoViewController;->i(Lcom/mopub/mobileads/VastVideoViewController;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController$5;->a:Lcom/mopub/mobileads/VastVideoView;

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController$5;->b:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-static {v1}, Lcom/mopub/mobileads/VastVideoViewController;->j(Lcom/mopub/mobileads/VastVideoViewController;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/mopub/mobileads/VastVideoViewController$5;->b:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-static {v2}, Lcom/mopub/mobileads/VastVideoViewController;->d(Lcom/mopub/mobileads/VastVideoViewController;)Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mopub/mobileads/VastVideoConfig;->getDiskMediaFileUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mopub/mobileads/VastVideoView;->prepareBlurredLastVideoFrame(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 385
    :cond_1
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController$5;->b:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-static {v0}, Lcom/mopub/mobileads/VastVideoViewController;->l(Lcom/mopub/mobileads/VastVideoViewController;)Lcom/mopub/mobileads/VastVideoProgressBarWidget;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController$5;->b:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {v1}, Lcom/mopub/mobileads/VastVideoViewController;->i()I

    move-result v1

    iget-object v2, p0, Lcom/mopub/mobileads/VastVideoViewController$5;->b:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-static {v2}, Lcom/mopub/mobileads/VastVideoViewController;->k(Lcom/mopub/mobileads/VastVideoViewController;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/mopub/mobileads/VastVideoProgressBarWidget;->calibrateAndMakeVisible(II)V

    .line 386
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController$5;->b:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-static {v0}, Lcom/mopub/mobileads/VastVideoViewController;->m(Lcom/mopub/mobileads/VastVideoViewController;)Lcom/mopub/mobileads/VastVideoRadialCountdownWidget;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController$5;->b:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-static {v1}, Lcom/mopub/mobileads/VastVideoViewController;->k(Lcom/mopub/mobileads/VastVideoViewController;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/VastVideoRadialCountdownWidget;->a(I)V

    .line 387
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController$5;->b:Lcom/mopub/mobileads/VastVideoViewController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mopub/mobileads/VastVideoViewController;->b(Lcom/mopub/mobileads/VastVideoViewController;Z)Z

    .line 388
    return-void
.end method
