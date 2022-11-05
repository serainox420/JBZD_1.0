.class Lcom/mopub/mobileads/VastVideoViewController$7;
.super Ljava/lang/Object;
.source "VastVideoViewController.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


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
    .line 446
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController$7;->b:Lcom/mopub/mobileads/VastVideoViewController;

    iput-object p2, p0, Lcom/mopub/mobileads/VastVideoViewController$7;->a:Lcom/mopub/mobileads/VastVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 449
    iget-object v2, p0, Lcom/mopub/mobileads/VastVideoViewController$7;->a:Lcom/mopub/mobileads/VastVideoView;

    iget-object v3, p0, Lcom/mopub/mobileads/VastVideoViewController$7;->b:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-static {v3}, Lcom/mopub/mobileads/VastVideoViewController;->d(Lcom/mopub/mobileads/VastVideoViewController;)Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mopub/mobileads/VastVideoConfig;->getDiskMediaFileUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, p2, p3, v3}, Lcom/mopub/mobileads/VastVideoView;->a(Landroid/media/MediaPlayer;IILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 461
    :goto_0
    return v0

    .line 453
    :cond_0
    iget-object v2, p0, Lcom/mopub/mobileads/VastVideoViewController$7;->b:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-static {v2}, Lcom/mopub/mobileads/VastVideoViewController;->n(Lcom/mopub/mobileads/VastVideoViewController;)V

    .line 454
    iget-object v2, p0, Lcom/mopub/mobileads/VastVideoViewController$7;->b:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {v2}, Lcom/mopub/mobileads/VastVideoViewController;->k()V

    .line 455
    iget-object v2, p0, Lcom/mopub/mobileads/VastVideoViewController$7;->b:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {v2, v1}, Lcom/mopub/mobileads/VastVideoViewController;->a(Z)V

    .line 456
    iget-object v2, p0, Lcom/mopub/mobileads/VastVideoViewController$7;->b:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-static {v2, v0}, Lcom/mopub/mobileads/VastVideoViewController;->d(Lcom/mopub/mobileads/VastVideoViewController;Z)Z

    .line 458
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController$7;->b:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-static {v0}, Lcom/mopub/mobileads/VastVideoViewController;->d(Lcom/mopub/mobileads/VastVideoViewController;)Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object v0

    iget-object v2, p0, Lcom/mopub/mobileads/VastVideoViewController$7;->b:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {v2}, Lcom/mopub/mobileads/VastVideoViewController;->h()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/mopub/mobileads/VastErrorCode;->GENERAL_LINEAR_AD_ERROR:Lcom/mopub/mobileads/VastErrorCode;

    iget-object v4, p0, Lcom/mopub/mobileads/VastVideoViewController$7;->b:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {v4}, Lcom/mopub/mobileads/VastVideoViewController;->j()I

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/mopub/mobileads/VastVideoConfig;->handleError(Landroid/content/Context;Lcom/mopub/mobileads/VastErrorCode;I)V

    move v0, v1

    .line 461
    goto :goto_0
.end method
