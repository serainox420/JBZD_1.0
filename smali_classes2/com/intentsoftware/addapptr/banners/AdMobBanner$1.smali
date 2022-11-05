.class Lcom/intentsoftware/addapptr/banners/AdMobBanner$1;
.super Lcom/google/android/gms/ads/AdListener;
.source "AdMobBanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intentsoftware/addapptr/banners/AdMobBanner;->createAdListener()Lcom/google/android/gms/ads/AdListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intentsoftware/addapptr/banners/AdMobBanner;


# direct methods
.method constructor <init>(Lcom/intentsoftware/addapptr/banners/AdMobBanner;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/intentsoftware/addapptr/banners/AdMobBanner$1;->this$0:Lcom/intentsoftware/addapptr/banners/AdMobBanner;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClosed()V
    .locals 0

    .prologue
    .line 105
    return-void
.end method

.method public onAdFailedToLoad(I)V
    .locals 3

    .prologue
    .line 95
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/AdMobBanner$1;->this$0:Lcom/intentsoftware/addapptr/banners/AdMobBanner;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/banners/AdMobBanner;->access$100(Lcom/intentsoftware/addapptr/banners/AdMobBanner;Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public onAdLeftApplication()V
    .locals 0

    .prologue
    .line 109
    return-void
.end method

.method public onAdLoaded()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/AdMobBanner$1;->this$0:Lcom/intentsoftware/addapptr/banners/AdMobBanner;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/banners/AdMobBanner;->access$000(Lcom/intentsoftware/addapptr/banners/AdMobBanner;)V

    .line 91
    return-void
.end method

.method public onAdOpened()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/AdMobBanner$1;->this$0:Lcom/intentsoftware/addapptr/banners/AdMobBanner;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/banners/AdMobBanner;->access$200(Lcom/intentsoftware/addapptr/banners/AdMobBanner;)V

    .line 101
    return-void
.end method
