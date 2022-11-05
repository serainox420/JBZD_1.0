.class Lcom/mopub/mobileads/VastVideoViewController$9;
.super Ljava/lang/Object;
.source "VastVideoViewController.java"

# interfaces
.implements Lcom/mopub/mobileads/m$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/VastVideoViewController;->a(Landroid/content/Context;Lcom/mopub/mobileads/g;I)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mopub/mobileads/g;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/mopub/mobileads/VastVideoViewController;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/VastVideoViewController;Lcom/mopub/mobileads/g;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 696
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController$9;->c:Lcom/mopub/mobileads/VastVideoViewController;

    iput-object p2, p0, Lcom/mopub/mobileads/VastVideoViewController$9;->a:Lcom/mopub/mobileads/g;

    iput-object p3, p0, Lcom/mopub/mobileads/VastVideoViewController$9;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVastWebViewClick()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 699
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController$9;->a:Lcom/mopub/mobileads/g;

    invoke-virtual {v0}, Lcom/mopub/mobileads/g;->f()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController$9;->c:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {v1}, Lcom/mopub/mobileads/VastVideoViewController;->j()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/mopub/mobileads/VastVideoViewController$9;->c:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {v2}, Lcom/mopub/mobileads/VastVideoViewController;->o()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mopub/mobileads/VastVideoViewController$9;->b:Landroid/content/Context;

    invoke-static {v0, v4, v1, v2, v3}, Lcom/mopub/network/TrackingRequest;->makeVastTrackingHttpRequest(Ljava/util/List;Lcom/mopub/mobileads/VastErrorCode;Ljava/lang/Integer;Ljava/lang/String;Landroid/content/Context;)V

    .line 706
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController$9;->a:Lcom/mopub/mobileads/g;

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController$9;->c:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {v1}, Lcom/mopub/mobileads/VastVideoViewController;->h()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/mopub/mobileads/VastVideoViewController$9;->c:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-static {v2}, Lcom/mopub/mobileads/VastVideoViewController;->d(Lcom/mopub/mobileads/VastVideoViewController;)Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mopub/mobileads/VastVideoConfig;->getDspCreativeId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v4, v2}, Lcom/mopub/mobileads/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    return-void
.end method
