.class Lcom/openx/view/tp/adapters/interstitials/AdColonyInterstitialAdapter$1;
.super Ljava/lang/Object;
.source "AdColonyInterstitialAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openx/view/tp/adapters/interstitials/AdColonyInterstitialAdapter;->onAdColonyAdAvailabilityChange(ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openx/view/tp/adapters/interstitials/AdColonyInterstitialAdapter;


# direct methods
.method constructor <init>(Lcom/openx/view/tp/adapters/interstitials/AdColonyInterstitialAdapter;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/openx/view/tp/adapters/interstitials/AdColonyInterstitialAdapter$1;->this$0:Lcom/openx/view/tp/adapters/interstitials/AdColonyInterstitialAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 74
    iget-object v0, p0, Lcom/openx/view/tp/adapters/interstitials/AdColonyInterstitialAdapter$1;->this$0:Lcom/openx/view/tp/adapters/interstitials/AdColonyInterstitialAdapter;

    invoke-static {v0}, Lcom/openx/view/tp/adapters/interstitials/AdColonyInterstitialAdapter;->access$100(Lcom/openx/view/tp/adapters/interstitials/AdColonyInterstitialAdapter;)Lcom/openx/view/tp/chain/SDKAdEventsListener;

    move-result-object v0

    sget-object v1, Lcom/openx/view/tp/chain/SDK;->AdColony:Lcom/openx/view/tp/chain/SDK;

    iget-object v2, p0, Lcom/openx/view/tp/adapters/interstitials/AdColonyInterstitialAdapter$1;->this$0:Lcom/openx/view/tp/adapters/interstitials/AdColonyInterstitialAdapter;

    invoke-static {v2}, Lcom/openx/view/tp/adapters/interstitials/AdColonyInterstitialAdapter;->access$000(Lcom/openx/view/tp/adapters/interstitials/AdColonyInterstitialAdapter;)Lcom/jirbo/adcolony/AdColonyVideoAd;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/openx/view/tp/chain/SDKAdEventsListener;->onAdDidLoad(Lcom/openx/view/tp/chain/SDK;Ljava/lang/Object;)V

    .line 76
    return-void
.end method
