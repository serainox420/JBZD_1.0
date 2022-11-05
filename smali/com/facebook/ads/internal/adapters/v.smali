.class public abstract Lcom/facebook/ads/internal/adapters/v;
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
.method public abstract A()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/ads/NativeAd;",
            ">;"
        }
    .end annotation
.end method

.method public abstract B()Ljava/lang/String;
.end method

.method public abstract C()Lcom/facebook/ads/AdNetwork;
.end method

.method public abstract a()V
.end method

.method public abstract a(I)V
.end method

.method public abstract a(Landroid/content/Context;Lcom/facebook/ads/internal/adapters/w;Lcom/facebook/ads/internal/g/f;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/ads/internal/adapters/w;",
            "Lcom/facebook/ads/internal/g/f;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract a(Landroid/view/View;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract a(Lcom/facebook/ads/internal/adapters/w;)V
.end method

.method public abstract a(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract b(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract b()Z
.end method

.method public abstract c()Z
.end method

.method public abstract d()Z
.end method

.method public abstract e()Z
.end method

.method public abstract f()Z
.end method

.method public abstract g()Z
.end method

.method public final getPlacementType()Lcom/facebook/ads/internal/server/AdPlacementType;
    .locals 1

    sget-object v0, Lcom/facebook/ads/internal/server/AdPlacementType;->NATIVE:Lcom/facebook/ads/internal/server/AdPlacementType;

    return-object v0
.end method

.method public abstract h()I
.end method

.method public abstract i()I
.end method

.method public abstract j()I
.end method

.method public abstract k()Lcom/facebook/ads/NativeAd$Image;
.end method

.method public abstract l()Lcom/facebook/ads/NativeAd$Image;
.end method

.method public abstract m()Lcom/facebook/ads/NativeAdViewAttributes;
.end method

.method public abstract n()Ljava/lang/String;
.end method

.method public abstract o()Ljava/lang/String;
.end method

.method public abstract p()Ljava/lang/String;
.end method

.method public abstract q()Ljava/lang/String;
.end method

.method public abstract r()Ljava/lang/String;
.end method

.method public abstract s()Lcom/facebook/ads/NativeAd$Rating;
.end method

.method public abstract t()Lcom/facebook/ads/NativeAd$Image;
.end method

.method public abstract u()Ljava/lang/String;
.end method

.method public abstract v()Ljava/lang/String;
.end method

.method public abstract w()Ljava/lang/String;
.end method

.method public abstract x()Ljava/lang/String;
.end method

.method public abstract y()Lcom/facebook/ads/internal/util/ak;
.end method

.method public abstract z()Ljava/lang/String;
.end method
