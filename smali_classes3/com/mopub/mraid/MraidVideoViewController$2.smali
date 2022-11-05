.class Lcom/mopub/mraid/MraidVideoViewController$2;
.super Ljava/lang/Object;
.source "MraidVideoViewController.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mraid/MraidVideoViewController;-><init>(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Bundle;Lcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mopub/mraid/MraidVideoViewController;


# direct methods
.method constructor <init>(Lcom/mopub/mraid/MraidVideoViewController;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/mopub/mraid/MraidVideoViewController$2;->a:Lcom/mopub/mraid/MraidVideoViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 52
    iget-object v0, p0, Lcom/mopub/mraid/MraidVideoViewController$2;->a:Lcom/mopub/mraid/MraidVideoViewController;

    invoke-static {v0}, Lcom/mopub/mraid/MraidVideoViewController;->a(Lcom/mopub/mraid/MraidVideoViewController;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 53
    iget-object v0, p0, Lcom/mopub/mraid/MraidVideoViewController$2;->a:Lcom/mopub/mraid/MraidVideoViewController;

    invoke-static {v0, v1}, Lcom/mopub/mraid/MraidVideoViewController;->b(Lcom/mopub/mraid/MraidVideoViewController;Z)V

    .line 55
    return v1
.end method
