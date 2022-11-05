.class public abstract Lcom/facebook/ads/internal/adapters/r;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/internal/adapters/AdAdapter;
.implements Lcom/facebook/ads/internal/util/af;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/ads/internal/adapters/AdAdapter;",
        "Lcom/facebook/ads/internal/util/af",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/content/Context;Lcom/facebook/ads/a/a;Ljava/util/Map;Lcom/facebook/ads/internal/g/f;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/ads/a/a;",
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

.method public abstract d()Z
.end method

.method public getPlacementType()Lcom/facebook/ads/internal/server/AdPlacementType;
    .locals 1

    sget-object v0, Lcom/facebook/ads/internal/server/AdPlacementType;->INSTREAM:Lcom/facebook/ads/internal/server/AdPlacementType;

    return-object v0
.end method
