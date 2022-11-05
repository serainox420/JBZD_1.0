.class Lcom/intentsoftware/addapptr/nativeads/AdMobNativeAd$1;
.super Lcom/google/android/gms/ads/AdListener;
.source "AdMobNativeAd.java"


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
    .line 81
    iput-object p1, p0, Lcom/intentsoftware/addapptr/nativeads/AdMobNativeAd$1;->this$0:Lcom/intentsoftware/addapptr/nativeads/AdMobNativeAd;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdFailedToLoad(I)V
    .locals 3

    .prologue
    .line 84
    invoke-super {p0, p1}, Lcom/google/android/gms/ads/AdListener;->onAdFailedToLoad(I)V

    .line 85
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/AdMobNativeAd$1;->this$0:Lcom/intentsoftware/addapptr/nativeads/AdMobNativeAd;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/nativeads/AdMobNativeAd;->access$000(Lcom/intentsoftware/addapptr/nativeads/AdMobNativeAd;Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public onAdOpened()V
    .locals 1

    .prologue
    .line 90
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdOpened()V

    .line 91
    iget-object v0, p0, Lcom/intentsoftware/addapptr/nativeads/AdMobNativeAd$1;->this$0:Lcom/intentsoftware/addapptr/nativeads/AdMobNativeAd;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/nativeads/AdMobNativeAd;->access$100(Lcom/intentsoftware/addapptr/nativeads/AdMobNativeAd;)V

    .line 92
    return-void
.end method
