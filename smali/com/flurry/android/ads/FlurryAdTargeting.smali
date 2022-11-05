.class public final Lcom/flurry/android/ads/FlurryAdTargeting;
.super Lcom/flurry/sdk/e;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/flurry/sdk/e;-><init>()V

    .line 20
    return-void
.end method


# virtual methods
.method public final clearAge()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 120
    return-void
.end method

.method public final clearGender()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 143
    return-void
.end method

.method public final clearKeywords()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 96
    return-void
.end method

.method public final clearLocation()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 45
    return-void
.end method

.method public final clearUserCookies()V
    .locals 0

    .prologue
    .line 68
    invoke-super {p0}, Lcom/flurry/sdk/e;->clearUserCookies()V

    .line 69
    return-void
.end method

.method public final setAge(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 110
    return-void
.end method

.method public final setEnableTestAds(Z)V
    .locals 0

    .prologue
    .line 154
    invoke-super {p0, p1}, Lcom/flurry/sdk/e;->setEnableTestAds(Z)V

    .line 155
    return-void
.end method

.method public final setGender(Lcom/flurry/android/ads/FlurryGender;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 133
    return-void
.end method

.method public final setKeywords(Ljava/util/Map;)V
    .locals 0
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 86
    return-void
.end method

.method public final setLocation(FF)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 35
    return-void
.end method

.method public final setUserCookies(Ljava/util/Map;)V
    .locals 0
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

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/flurry/sdk/e;->setUserCookies(Ljava/util/Map;)V

    .line 61
    return-void
.end method
