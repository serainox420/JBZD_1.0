.class public abstract Lcom/facebook/ads/internal/adapters/InterstitialAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/internal/adapters/AdAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getPlacementType()Lcom/facebook/ads/internal/server/AdPlacementType;
    .locals 1

    sget-object v0, Lcom/facebook/ads/internal/server/AdPlacementType;->INTERSTITIAL:Lcom/facebook/ads/internal/server/AdPlacementType;

    return-object v0
.end method

.method public abstract loadInterstitialAd(Landroid/content/Context;Lcom/facebook/ads/internal/adapters/InterstitialAdapterListener;Ljava/util/Map;Lcom/facebook/ads/internal/g/f;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/ads/internal/adapters/InterstitialAdapterListener;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/facebook/ads/internal/g/f;",
            ")V"
        }
    .end annotation
.end method

.method public abstract show()Z
.end method
