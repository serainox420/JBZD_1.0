.class public abstract Lcom/facebook/ads/internal/adapters/x;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/internal/adapters/AdAdapter;


# instance fields
.field protected a:Lcom/facebook/ads/RewardData;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public abstract a(Landroid/content/Context;Lcom/facebook/ads/internal/adapters/y;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/ads/internal/adapters/y;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public a(Lcom/facebook/ads/RewardData;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/x;->a:Lcom/facebook/ads/RewardData;

    return-void
.end method

.method public abstract b()Z
.end method

.method public getPlacementType()Lcom/facebook/ads/internal/server/AdPlacementType;
    .locals 1

    sget-object v0, Lcom/facebook/ads/internal/server/AdPlacementType;->REWARDED_VIDEO:Lcom/facebook/ads/internal/server/AdPlacementType;

    return-object v0
.end method
