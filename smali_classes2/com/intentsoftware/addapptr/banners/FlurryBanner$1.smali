.class Lcom/intentsoftware/addapptr/banners/FlurryBanner$1;
.super Ljava/lang/Object;
.source "FlurryBanner.java"

# interfaces
.implements Lcom/flurry/android/ads/FlurryAdBannerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intentsoftware/addapptr/banners/FlurryBanner;->createListener()Lcom/flurry/android/ads/FlurryAdBannerListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intentsoftware/addapptr/banners/FlurryBanner;


# direct methods
.method constructor <init>(Lcom/intentsoftware/addapptr/banners/FlurryBanner;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/intentsoftware/addapptr/banners/FlurryBanner$1;->this$0:Lcom/intentsoftware/addapptr/banners/FlurryBanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppExit(Lcom/flurry/android/ads/FlurryAdBanner;)V
    .locals 0

    .prologue
    .line 69
    return-void
.end method

.method public onClicked(Lcom/flurry/android/ads/FlurryAdBanner;)V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/FlurryBanner$1;->this$0:Lcom/intentsoftware/addapptr/banners/FlurryBanner;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/banners/FlurryBanner;->access$200(Lcom/intentsoftware/addapptr/banners/FlurryBanner;)V

    .line 74
    return-void
.end method

.method public onCloseFullscreen(Lcom/flurry/android/ads/FlurryAdBanner;)V
    .locals 0

    .prologue
    .line 64
    return-void
.end method

.method public onError(Lcom/flurry/android/ads/FlurryAdBanner;Lcom/flurry/android/ads/FlurryAdErrorType;I)V
    .locals 3

    .prologue
    .line 83
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/FlurryBanner$1;->this$0:Lcom/intentsoftware/addapptr/banners/FlurryBanner;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/banners/FlurryBanner;->access$300(Lcom/intentsoftware/addapptr/banners/FlurryBanner;Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public onFetched(Lcom/flurry/android/ads/FlurryAdBanner;)V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/FlurryBanner$1;->this$0:Lcom/intentsoftware/addapptr/banners/FlurryBanner;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/banners/FlurryBanner;->access$000(Lcom/intentsoftware/addapptr/banners/FlurryBanner;)Lcom/flurry/android/ads/FlurryAdBanner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/ads/FlurryAdBanner;->displayAd()V

    .line 48
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/FlurryBanner$1;->this$0:Lcom/intentsoftware/addapptr/banners/FlurryBanner;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/banners/FlurryBanner;->access$100(Lcom/intentsoftware/addapptr/banners/FlurryBanner;)V

    .line 49
    return-void
.end method

.method public onRendered(Lcom/flurry/android/ads/FlurryAdBanner;)V
    .locals 0

    .prologue
    .line 54
    return-void
.end method

.method public onShowFullscreen(Lcom/flurry/android/ads/FlurryAdBanner;)V
    .locals 0

    .prologue
    .line 59
    return-void
.end method

.method public onVideoCompleted(Lcom/flurry/android/ads/FlurryAdBanner;)V
    .locals 0

    .prologue
    .line 79
    return-void
.end method
