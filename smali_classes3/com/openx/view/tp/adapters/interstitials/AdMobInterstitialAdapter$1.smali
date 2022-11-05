.class Lcom/openx/view/tp/adapters/interstitials/AdMobInterstitialAdapter$1;
.super Ljava/lang/Object;
.source "AdMobInterstitialAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openx/view/tp/adapters/interstitials/AdMobInterstitialAdapter;->loadAd(Lcom/openx/view/tp/chain/parser/ChainItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openx/view/tp/adapters/interstitials/AdMobInterstitialAdapter;

.field final synthetic val$chainItem:Lcom/openx/view/tp/chain/parser/ChainItem;


# direct methods
.method constructor <init>(Lcom/openx/view/tp/adapters/interstitials/AdMobInterstitialAdapter;Lcom/openx/view/tp/chain/parser/ChainItem;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/openx/view/tp/adapters/interstitials/AdMobInterstitialAdapter$1;->this$0:Lcom/openx/view/tp/adapters/interstitials/AdMobInterstitialAdapter;

    iput-object p2, p0, Lcom/openx/view/tp/adapters/interstitials/AdMobInterstitialAdapter$1;->val$chainItem:Lcom/openx/view/tp/chain/parser/ChainItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 51
    iget-object v0, p0, Lcom/openx/view/tp/adapters/interstitials/AdMobInterstitialAdapter$1;->this$0:Lcom/openx/view/tp/adapters/interstitials/AdMobInterstitialAdapter;

    invoke-static {v0}, Lcom/openx/view/tp/adapters/interstitials/AdMobInterstitialAdapter;->access$000(Lcom/openx/view/tp/adapters/interstitials/AdMobInterstitialAdapter;)Lcom/google/android/gms/ads/InterstitialAd;

    move-result-object v1

    iget-object v0, p0, Lcom/openx/view/tp/adapters/interstitials/AdMobInterstitialAdapter$1;->val$chainItem:Lcom/openx/view/tp/chain/parser/ChainItem;

    iget-object v0, v0, Lcom/openx/view/tp/chain/parser/ChainItem;->sdkParams:Lcom/openx/view/tp/chain/parser/SDKParams;

    iget-object v0, v0, Lcom/openx/view/tp/chain/parser/SDKParams;->dictionary:Ljava/util/HashMap;

    const-string v2, "adUnit"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/InterstitialAd;->setAdUnitId(Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/openx/view/tp/adapters/interstitials/AdMobInterstitialAdapter$1;->this$0:Lcom/openx/view/tp/adapters/interstitials/AdMobInterstitialAdapter;

    invoke-static {v0}, Lcom/openx/view/tp/adapters/interstitials/AdMobInterstitialAdapter;->access$000(Lcom/openx/view/tp/adapters/interstitials/AdMobInterstitialAdapter;)Lcom/google/android/gms/ads/InterstitialAd;

    move-result-object v0

    iget-object v1, p0, Lcom/openx/view/tp/adapters/interstitials/AdMobInterstitialAdapter$1;->this$0:Lcom/openx/view/tp/adapters/interstitials/AdMobInterstitialAdapter;

    iget-object v1, v1, Lcom/openx/view/tp/adapters/interstitials/AdMobInterstitialAdapter;->adListener:Lcom/google/android/gms/ads/AdListener;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 56
    new-instance v1, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    .line 58
    sget-object v0, Lcom/openx/view/tp/chain/ChainManager;->testDeviceIds:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 60
    const/4 v0, 0x0

    :goto_0
    sget-object v2, Lcom/openx/view/tp/chain/ChainManager;->testDeviceIds:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 62
    sget-object v2, Lcom/openx/view/tp/chain/ChainManager;->testDeviceIds:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/AdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    .line 60
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 66
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    .line 68
    iget-object v1, p0, Lcom/openx/view/tp/adapters/interstitials/AdMobInterstitialAdapter$1;->this$0:Lcom/openx/view/tp/adapters/interstitials/AdMobInterstitialAdapter;

    invoke-static {v1}, Lcom/openx/view/tp/adapters/interstitials/AdMobInterstitialAdapter;->access$000(Lcom/openx/view/tp/adapters/interstitials/AdMobInterstitialAdapter;)Lcom/google/android/gms/ads/InterstitialAd;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/InterstitialAd;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 70
    return-void
.end method
