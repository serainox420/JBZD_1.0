.class Lcom/smartadserver/android/library/c/c$5;
.super Ljava/lang/Object;
.source "SASAppLovinAdapter.java"

# interfaces
.implements Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/c/c;->a(Landroid/content/Context;Lcom/smartadserver/android/library/ui/SASAdView;Ljava/util/HashMap;Lcom/smartadserver/android/library/c/i$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/c/c;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/c/c;)V
    .locals 0

    .prologue
    .line 343
    iput-object p1, p0, Lcom/smartadserver/android/library/c/c$5;->a:Lcom/smartadserver/android/library/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNativeAdsFailedToLoad(I)V
    .locals 3

    .prologue
    .line 355
    const-string v0, "SASAppLovinAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Applovin onNativeAdsFailedToLoad (error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    iget-object v0, p0, Lcom/smartadserver/android/library/c/c$5;->a:Lcom/smartadserver/android/library/c/c;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/c;->a(Lcom/smartadserver/android/library/c/c;)Lcom/smartadserver/android/library/c/i$a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "errorCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/smartadserver/android/library/c/i$a;->a(Ljava/lang/String;)V

    .line 357
    return-void
.end method

.method public onNativeAdsLoaded(Ljava/util/List;)V
    .locals 4

    .prologue
    .line 346
    const-string v0, "SASAppLovinAdapter"

    const-string v1, "Applovin onNativeAdsLoaded"

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    iget-object v0, p0, Lcom/smartadserver/android/library/c/c$5;->a:Lcom/smartadserver/android/library/c/c;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/c;->a(Lcom/smartadserver/android/library/c/c;)Lcom/smartadserver/android/library/c/i$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 348
    iget-object v1, p0, Lcom/smartadserver/android/library/c/c$5;->a:Lcom/smartadserver/android/library/c/c;

    new-instance v2, Lcom/smartadserver/android/library/c/c$a;

    iget-object v3, p0, Lcom/smartadserver/android/library/c/c$5;->a:Lcom/smartadserver/android/library/c/c;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/nativeAds/AppLovinNativeAd;

    invoke-direct {v2, v3, v0}, Lcom/smartadserver/android/library/c/c$a;-><init>(Lcom/smartadserver/android/library/c/c;Lcom/applovin/nativeAds/AppLovinNativeAd;)V

    invoke-static {v1, v2}, Lcom/smartadserver/android/library/c/c;->a(Lcom/smartadserver/android/library/c/c;Lcom/smartadserver/android/library/c/g$a;)Lcom/smartadserver/android/library/c/g$a;

    .line 349
    iget-object v0, p0, Lcom/smartadserver/android/library/c/c$5;->a:Lcom/smartadserver/android/library/c/c;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/c;->a(Lcom/smartadserver/android/library/c/c;)Lcom/smartadserver/android/library/c/i$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/smartadserver/android/library/c/i$a;->c()Z

    .line 351
    :cond_0
    return-void
.end method
