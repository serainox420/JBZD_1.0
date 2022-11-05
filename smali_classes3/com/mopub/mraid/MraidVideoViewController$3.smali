.class Lcom/mopub/mraid/MraidVideoViewController$3;
.super Ljava/lang/Object;
.source "MraidVideoViewController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mraid/MraidVideoViewController;->i()V
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
    .line 105
    iput-object p1, p0, Lcom/mopub/mraid/MraidVideoViewController$3;->a:Lcom/mopub/mraid/MraidVideoViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/mopub/mraid/MraidVideoViewController$3;->a:Lcom/mopub/mraid/MraidVideoViewController;

    invoke-static {v0}, Lcom/mopub/mraid/MraidVideoViewController;->b(Lcom/mopub/mraid/MraidVideoViewController;)Lcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;->onFinish()V

    .line 108
    return-void
.end method
