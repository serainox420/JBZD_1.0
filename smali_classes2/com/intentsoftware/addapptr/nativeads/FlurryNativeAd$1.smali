.class Lcom/intentsoftware/addapptr/nativeads/FlurryNativeAd$1;
.super Ljava/lang/Object;
.source "FlurryNativeAd.java"

# interfaces
.implements Lcom/flurry/android/ads/FlurryAdNativeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intentsoftware/addapptr/nativeads/FlurryNativeAd;->createListener()Lcom/flurry/android/ads/FlurryAdNativeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intentsoftware/addapptr/nativeads/FlurryNativeAd;


# direct methods
.method constructor <init>(Lcom/intentsoftware/addapptr/nativeads/FlurryNativeAd;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/intentsoftware/addapptr/nativeads/FlurryNativeAd$1;->this$0:Lcom/intentsoftware/addapptr/nativeads/FlurryNativeAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppExit(Lcom/flurry/android/ads/FlurryAdNative;)V
    .locals 0

    .prologue
    .line 106
    return-void
.end method

.method public onClicked(Lcom/flurry/android/ads/FlurryAdNative;)V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/FlurryNativeAd$1;->this$0:Lcom/intentsoftware/addapptr/nativeads/FlurryNativeAd;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/nativeads/FlurryNativeAd;->access$500(Lcom/intentsoftware/addapptr/nativeads/FlurryNativeAd;)V

    .line 111
    return-void
.end method

.method public onCloseFullscreen(Lcom/flurry/android/ads/FlurryAdNative;)V
    .locals 0

    .prologue
    .line 101
    return-void
.end method

.method public onCollapsed(Lcom/flurry/android/ads/FlurryAdNative;)V
    .locals 0

    .prologue
    .line 126
    return-void
.end method

.method public onError(Lcom/flurry/android/ads/FlurryAdNative;Lcom/flurry/android/ads/FlurryAdErrorType;I)V
    .locals 3

    .prologue
    .line 130
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/FlurryNativeAd$1;->this$0:Lcom/intentsoftware/addapptr/nativeads/FlurryNativeAd;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/nativeads/FlurryNativeAd;->access$700(Lcom/intentsoftware/addapptr/nativeads/FlurryNativeAd;Ljava/lang/String;)V

    .line 131
    return-void
.end method

.method public onExpanded(Lcom/flurry/android/ads/FlurryAdNative;)V
    .locals 0

    .prologue
    .line 121
    return-void
.end method

.method public onFetched(Lcom/flurry/android/ads/FlurryAdNative;)V
    .locals 7

    .prologue
    const/4 v4, 0x1

    .line 59
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/FlurryNativeAd$1;->this$0:Lcom/intentsoftware/addapptr/nativeads/FlurryNativeAd;

    const-string v1, "headline"

    const-string v2, "headline"

    invoke-static {v0, p1, v1, v2}, Lcom/intentsoftware/addapptr/nativeads/FlurryNativeAd;->access$000(Lcom/intentsoftware/addapptr/nativeads/FlurryNativeAd;Lcom/flurry/android/ads/FlurryAdNative;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/FlurryNativeAd$1;->this$0:Lcom/intentsoftware/addapptr/nativeads/FlurryNativeAd;

    const-string v1, "description"

    const-string v2, "summary"

    invoke-static {v0, p1, v1, v2}, Lcom/intentsoftware/addapptr/nativeads/FlurryNativeAd;->access$000(Lcom/intentsoftware/addapptr/nativeads/FlurryNativeAd;Lcom/flurry/android/ads/FlurryAdNative;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/FlurryNativeAd$1;->this$0:Lcom/intentsoftware/addapptr/nativeads/FlurryNativeAd;

    const-string v1, "cta"

    const-string v2, "callToAction"

    invoke-static {v0, p1, v1, v2}, Lcom/intentsoftware/addapptr/nativeads/FlurryNativeAd;->access$000(Lcom/intentsoftware/addapptr/nativeads/FlurryNativeAd;Lcom/flurry/android/ads/FlurryAdNative;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/FlurryNativeAd$1;->this$0:Lcom/intentsoftware/addapptr/nativeads/FlurryNativeAd;

    const-string v1, "advertiser"

    const-string v2, "source"

    invoke-static {v0, p1, v1, v2}, Lcom/intentsoftware/addapptr/nativeads/FlurryNativeAd;->access$000(Lcom/intentsoftware/addapptr/nativeads/FlurryNativeAd;Lcom/flurry/android/ads/FlurryAdNative;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/FlurryNativeAd$1;->this$0:Lcom/intentsoftware/addapptr/nativeads/FlurryNativeAd;

    const-string v1, "source"

    const-string v2, "source"

    invoke-static {v0, p1, v1, v2}, Lcom/intentsoftware/addapptr/nativeads/FlurryNativeAd;->access$000(Lcom/intentsoftware/addapptr/nativeads/FlurryNativeAd;Lcom/flurry/android/ads/FlurryAdNative;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/FlurryNativeAd$1;->this$0:Lcom/intentsoftware/addapptr/nativeads/FlurryNativeAd;

    const-string v1, "icon"

    const-string v2, "secImage"

    invoke-static {v0, p1, v1, v2}, Lcom/intentsoftware/addapptr/nativeads/FlurryNativeAd;->access$000(Lcom/intentsoftware/addapptr/nativeads/FlurryNativeAd;Lcom/flurry/android/ads/FlurryAdNative;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/FlurryNativeAd$1;->this$0:Lcom/intentsoftware/addapptr/nativeads/FlurryNativeAd;

    const-string v1, "main"

    const-string v2, "secHqImage"

    invoke-static {v0, p1, v1, v2}, Lcom/intentsoftware/addapptr/nativeads/FlurryNativeAd;->access$000(Lcom/intentsoftware/addapptr/nativeads/FlurryNativeAd;Lcom/flurry/android/ads/FlurryAdNative;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string v0, "secHqBrandingLogo"

    invoke-virtual {p1, v0}, Lcom/flurry/android/ads/FlurryAdNative;->getAsset(Ljava/lang/String;)Lcom/flurry/android/ads/FlurryAdNativeAsset;

    move-result-object v0

    .line 69
    if-eqz v0, :cond_0

    .line 70
    iget-object v1, p0, Lcom/intentsoftware/addapptr/nativeads/FlurryNativeAd$1;->this$0:Lcom/intentsoftware/addapptr/nativeads/FlurryNativeAd;

    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/intentsoftware/addapptr/nativeads/FlurryNativeAd$1;->this$0:Lcom/intentsoftware/addapptr/nativeads/FlurryNativeAd;

    invoke-static {v3}, Lcom/intentsoftware/addapptr/nativeads/FlurryNativeAd;->access$200(Lcom/intentsoftware/addapptr/nativeads/FlurryNativeAd;)Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2}, Lcom/intentsoftware/addapptr/nativeads/FlurryNativeAd;->access$102(Lcom/intentsoftware/addapptr/nativeads/FlurryNativeAd;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 71
    invoke-virtual {v0}, Lcom/flurry/android/ads/FlurryAdNativeAsset;->getValue()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/intentsoftware/addapptr/nativeads/FlurryNativeAd$1;->this$0:Lcom/intentsoftware/addapptr/nativeads/FlurryNativeAd;

    invoke-static {v1}, Lcom/intentsoftware/addapptr/nativeads/FlurryNativeAd;->access$100(Lcom/intentsoftware/addapptr/nativeads/FlurryNativeAd;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/c/m;->loadBitmapForView(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 74
    :cond_0
    const-string v0, "appRating"

    invoke-virtual {p1, v0}, Lcom/flurry/android/ads/FlurryAdNative;->getAsset(Ljava/lang/String;)Lcom/flurry/android/ads/FlurryAdNativeAsset;

    move-result-object v0

    .line 75
    if-eqz v0, :cond_1

    .line 76
    invoke-virtual {v0}, Lcom/flurry/android/ads/FlurryAdNativeAsset;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 77
    array-length v1, v0

    if-le v1, v4, :cond_1

    .line 79
    const/4 v1, 0x0

    :try_start_0
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 80
    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 81
    iget-object v6, p0, Lcom/intentsoftware/addapptr/nativeads/FlurryNativeAd$1;->this$0:Lcom/intentsoftware/addapptr/nativeads/FlurryNativeAd;

    new-instance v0, Lcom/intentsoftware/addapptr/ad/NativeAd$a;

    iget-object v1, p0, Lcom/intentsoftware/addapptr/nativeads/FlurryNativeAd$1;->this$0:Lcom/intentsoftware/addapptr/nativeads/FlurryNativeAd;

    invoke-direct/range {v0 .. v5}, Lcom/intentsoftware/addapptr/ad/NativeAd$a;-><init>(Lcom/intentsoftware/addapptr/ad/NativeAd;DD)V

    invoke-static {v6, v0}, Lcom/intentsoftware/addapptr/nativeads/FlurryNativeAd;->access$300(Lcom/intentsoftware/addapptr/nativeads/FlurryNativeAd;Lcom/intentsoftware/addapptr/ad/NativeAd$a;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/FlurryNativeAd$1;->this$0:Lcom/intentsoftware/addapptr/nativeads/FlurryNativeAd;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/nativeads/FlurryNativeAd;->access$400(Lcom/intentsoftware/addapptr/nativeads/FlurryNativeAd;)V

    .line 91
    return-void

    .line 82
    :catch_0
    move-exception v0

    .line 83
    const/4 v1, 0x5

    invoke-static {v1}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error when parsing Flurry native ad rating: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/intentsoftware/addapptr/c/c;->w(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onImpressionLogged(Lcom/flurry/android/ads/FlurryAdNative;)V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/FlurryNativeAd$1;->this$0:Lcom/intentsoftware/addapptr/nativeads/FlurryNativeAd;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/nativeads/FlurryNativeAd;->access$600(Lcom/intentsoftware/addapptr/nativeads/FlurryNativeAd;)V

    .line 116
    return-void
.end method

.method public onShowFullscreen(Lcom/flurry/android/ads/FlurryAdNative;)V
    .locals 0

    .prologue
    .line 96
    return-void
.end method
