.class Lcom/intentsoftware/addapptr/nativeads/AdMobNativeAd$3;
.super Ljava/lang/Object;
.source "AdMobNativeAd.java"

# interfaces
.implements Lcom/google/android/gms/ads/formats/NativeAppInstallAd$OnAppInstallAdLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intentsoftware/addapptr/nativeads/AdMobNativeAd;->load(Landroid/app/Activity;Ljava/lang/String;Lcom/intentsoftware/addapptr/BannerSize;Lcom/intentsoftware/addapptr/c/k;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intentsoftware/addapptr/nativeads/AdMobNativeAd;


# direct methods
.method constructor <init>(Lcom/intentsoftware/addapptr/nativeads/AdMobNativeAd;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/intentsoftware/addapptr/nativeads/AdMobNativeAd$3;->this$0:Lcom/intentsoftware/addapptr/nativeads/AdMobNativeAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppInstallAdLoaded(Lcom/google/android/gms/ads/formats/NativeAppInstallAd;)V
    .locals 7

    .prologue
    .line 42
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/AdMobNativeAd$3;->this$0:Lcom/intentsoftware/addapptr/nativeads/AdMobNativeAd;

    const-string v1, "headline"

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeAppInstallAd;->getHeadline()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/intentsoftware/addapptr/nativeads/AdMobNativeAd;->access$200(Lcom/intentsoftware/addapptr/nativeads/AdMobNativeAd;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 43
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/AdMobNativeAd$3;->this$0:Lcom/intentsoftware/addapptr/nativeads/AdMobNativeAd;

    const-string v1, "description"

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeAppInstallAd;->getBody()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/intentsoftware/addapptr/nativeads/AdMobNativeAd;->access$200(Lcom/intentsoftware/addapptr/nativeads/AdMobNativeAd;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 44
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/AdMobNativeAd$3;->this$0:Lcom/intentsoftware/addapptr/nativeads/AdMobNativeAd;

    const-string v1, "cta"

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeAppInstallAd;->getCallToAction()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/intentsoftware/addapptr/nativeads/AdMobNativeAd;->access$200(Lcom/intentsoftware/addapptr/nativeads/AdMobNativeAd;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 46
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeAppInstallAd;->getIcon()Lcom/google/android/gms/ads/formats/NativeAd$Image;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/AdMobNativeAd$3;->this$0:Lcom/intentsoftware/addapptr/nativeads/AdMobNativeAd;

    const-string v1, "icon"

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeAppInstallAd;->getIcon()Lcom/google/android/gms/ads/formats/NativeAd$Image;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/ads/formats/NativeAd$Image;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/intentsoftware/addapptr/nativeads/AdMobNativeAd;->access$800(Lcom/intentsoftware/addapptr/nativeads/AdMobNativeAd;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeAppInstallAd;->getImages()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeAppInstallAd;->getImages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 50
    iget-object v1, p0, Lcom/intentsoftware/addapptr/nativeads/AdMobNativeAd$3;->this$0:Lcom/intentsoftware/addapptr/nativeads/AdMobNativeAd;

    const-string v2, "main"

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeAppInstallAd;->getImages()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/formats/NativeAd$Image;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/NativeAd$Image;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/intentsoftware/addapptr/nativeads/AdMobNativeAd;->access$900(Lcom/intentsoftware/addapptr/nativeads/AdMobNativeAd;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeAppInstallAd;->getStarRating()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 53
    iget-object v6, p0, Lcom/intentsoftware/addapptr/nativeads/AdMobNativeAd$3;->this$0:Lcom/intentsoftware/addapptr/nativeads/AdMobNativeAd;

    new-instance v0, Lcom/intentsoftware/addapptr/ad/NativeAd$a;

    iget-object v1, p0, Lcom/intentsoftware/addapptr/nativeads/AdMobNativeAd$3;->this$0:Lcom/intentsoftware/addapptr/nativeads/AdMobNativeAd;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeAppInstallAd;->getStarRating()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    invoke-direct/range {v0 .. v5}, Lcom/intentsoftware/addapptr/ad/NativeAd$a;-><init>(Lcom/intentsoftware/addapptr/ad/NativeAd;DD)V

    invoke-static {v6, v0}, Lcom/intentsoftware/addapptr/nativeads/AdMobNativeAd;->access$1000(Lcom/intentsoftware/addapptr/nativeads/AdMobNativeAd;Lcom/intentsoftware/addapptr/ad/NativeAd$a;)V

    .line 56
    :cond_2
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/AdMobNativeAd$3;->this$0:Lcom/intentsoftware/addapptr/nativeads/AdMobNativeAd;

    sget-object v1, Lcom/intentsoftware/addapptr/ad/NativeAd$Type;->APP_INSTALL:Lcom/intentsoftware/addapptr/ad/NativeAd$Type;

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/nativeads/AdMobNativeAd;->access$502(Lcom/intentsoftware/addapptr/nativeads/AdMobNativeAd;Lcom/intentsoftware/addapptr/ad/NativeAd$Type;)Lcom/intentsoftware/addapptr/ad/NativeAd$Type;

    .line 57
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/AdMobNativeAd$3;->this$0:Lcom/intentsoftware/addapptr/nativeads/AdMobNativeAd;

    invoke-static {v0, p1}, Lcom/intentsoftware/addapptr/nativeads/AdMobNativeAd;->access$1102(Lcom/intentsoftware/addapptr/nativeads/AdMobNativeAd;Lcom/google/android/gms/ads/formats/NativeAppInstallAd;)Lcom/google/android/gms/ads/formats/NativeAppInstallAd;

    .line 58
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/AdMobNativeAd$3;->this$0:Lcom/intentsoftware/addapptr/nativeads/AdMobNativeAd;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/nativeads/AdMobNativeAd;->access$1200(Lcom/intentsoftware/addapptr/nativeads/AdMobNativeAd;)V

    .line 59
    return-void
.end method
