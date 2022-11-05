.class Lcom/intentsoftware/addapptr/fullscreens/MillenialFullscreen$1;
.super Ljava/lang/Object;
.source "MillenialFullscreen.java"

# interfaces
.implements Lcom/millennialmedia/InterstitialAd$InterstitialListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intentsoftware/addapptr/fullscreens/MillenialFullscreen;->createListener()Lcom/millennialmedia/InterstitialAd$InterstitialListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intentsoftware/addapptr/fullscreens/MillenialFullscreen;


# direct methods
.method constructor <init>(Lcom/intentsoftware/addapptr/fullscreens/MillenialFullscreen;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/intentsoftware/addapptr/fullscreens/MillenialFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/MillenialFullscreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdLeftApplication(Lcom/millennialmedia/InterstitialAd;)V
    .locals 0

    .prologue
    .line 78
    return-void
.end method

.method public onClicked(Lcom/millennialmedia/InterstitialAd;)V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/MillenialFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/MillenialFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/MillenialFullscreen;->access$600(Lcom/intentsoftware/addapptr/fullscreens/MillenialFullscreen;)V

    .line 74
    return-void
.end method

.method public onClosed(Lcom/millennialmedia/InterstitialAd;)V
    .locals 0

    .prologue
    .line 69
    return-void
.end method

.method public onExpired(Lcom/millennialmedia/InterstitialAd;)V
    .locals 3

    .prologue
    .line 62
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/MillenialFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/MillenialFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/MillenialFullscreen;->access$300(Lcom/intentsoftware/addapptr/fullscreens/MillenialFullscreen;)Lcom/millennialmedia/InterstitialAd;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/MillenialFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/MillenialFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/MillenialFullscreen;->access$400(Lcom/intentsoftware/addapptr/fullscreens/MillenialFullscreen;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/MillenialFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/MillenialFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/MillenialFullscreen;->access$300(Lcom/intentsoftware/addapptr/fullscreens/MillenialFullscreen;)Lcom/millennialmedia/InterstitialAd;

    move-result-object v0

    iget-object v1, p0, Lcom/intentsoftware/addapptr/fullscreens/MillenialFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/MillenialFullscreen;

    invoke-static {v1}, Lcom/intentsoftware/addapptr/fullscreens/MillenialFullscreen;->access$500(Lcom/intentsoftware/addapptr/fullscreens/MillenialFullscreen;)Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/millennialmedia/InterstitialAd;->load(Landroid/content/Context;Lcom/millennialmedia/InterstitialAd$InterstitialAdMetadata;)V

    .line 65
    :cond_0
    return-void
.end method

.method public onLoadFailed(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/InterstitialAd$InterstitialErrorStatus;)V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/MillenialFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/MillenialFullscreen;

    invoke-virtual {p2}, Lcom/millennialmedia/InterstitialAd$InterstitialErrorStatus;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/fullscreens/MillenialFullscreen;->access$200(Lcom/intentsoftware/addapptr/fullscreens/MillenialFullscreen;Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public onLoaded(Lcom/millennialmedia/InterstitialAd;)V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/MillenialFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/MillenialFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/MillenialFullscreen;->access$100(Lcom/intentsoftware/addapptr/fullscreens/MillenialFullscreen;)V

    .line 53
    return-void
.end method

.method public onShowFailed(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/InterstitialAd$InterstitialErrorStatus;)V
    .locals 0

    .prologue
    .line 48
    return-void
.end method

.method public onShown(Lcom/millennialmedia/InterstitialAd;)V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/MillenialFullscreen$1;->this$0:Lcom/intentsoftware/addapptr/fullscreens/MillenialFullscreen;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/fullscreens/MillenialFullscreen;->access$000(Lcom/intentsoftware/addapptr/fullscreens/MillenialFullscreen;)V

    .line 44
    return-void
.end method
