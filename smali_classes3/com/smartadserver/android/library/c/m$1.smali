.class Lcom/smartadserver/android/library/c/m$1;
.super Ljava/lang/Object;
.source "SASUnityAdsAdapter.java"

# interfaces
.implements Lcom/unity3d/ads/IUnityAdsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartadserver/android/library/c/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/c/m;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/c/m;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/smartadserver/android/library/c/m$1;->a:Lcom/smartadserver/android/library/c/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/unity3d/ads/UnityAds$FinishState;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 91
    iget-object v1, p0, Lcom/smartadserver/android/library/c/m$1;->a:Lcom/smartadserver/android/library/c/m;

    invoke-static {v1}, Lcom/smartadserver/android/library/c/m;->g(Lcom/smartadserver/android/library/c/m;)I

    move-result v1

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/smartadserver/android/library/c/m$1;->a:Lcom/smartadserver/android/library/c/m;

    invoke-static {v1}, Lcom/smartadserver/android/library/c/m;->f(Lcom/smartadserver/android/library/c/m;)Lcom/smartadserver/android/library/model/b;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/unity3d/ads/UnityAds$FinishState;->COMPLETED:Lcom/unity3d/ads/UnityAds$FinishState;

    if-ne p1, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onUnityAdsError(Lcom/unity3d/ads/UnityAds$UnityAdsError;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/smartadserver/android/library/c/m$1;->a:Lcom/smartadserver/android/library/c/m;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/m;->d(Lcom/smartadserver/android/library/c/m;)Lcom/smartadserver/android/library/c/i$a;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/smartadserver/android/library/c/i$a;->a(Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public onUnityAdsFinish(Ljava/lang/String;Lcom/unity3d/ads/UnityAds$FinishState;)V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/smartadserver/android/library/c/m$1;->a:Lcom/smartadserver/android/library/c/m;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/m;->e(Lcom/smartadserver/android/library/c/m;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/smartadserver/android/library/c/m$1;->a:Lcom/smartadserver/android/library/c/m;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/m;->e(Lcom/smartadserver/android/library/c/m;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v0

    new-instance v1, Lcom/smartadserver/android/library/c/m$1$1;

    invoke-direct {v1, p0}, Lcom/smartadserver/android/library/c/m$1$1;-><init>(Lcom/smartadserver/android/library/c/m$1;)V

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/SASAdView;->a(Ljava/lang/Runnable;)V

    .line 78
    invoke-direct {p0, p2}, Lcom/smartadserver/android/library/c/m$1;->a(Lcom/unity3d/ads/UnityAds$FinishState;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/smartadserver/android/library/c/m$1;->a:Lcom/smartadserver/android/library/c/m;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/m;->e(Lcom/smartadserver/android/library/c/m;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v0

    iget-object v1, p0, Lcom/smartadserver/android/library/c/m$1;->a:Lcom/smartadserver/android/library/c/m;

    invoke-static {v1}, Lcom/smartadserver/android/library/c/m;->f(Lcom/smartadserver/android/library/c/m;)Lcom/smartadserver/android/library/model/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/SASAdView;->a(Lcom/smartadserver/android/library/model/b;)V

    .line 80
    iget-object v0, p0, Lcom/smartadserver/android/library/c/m$1;->a:Lcom/smartadserver/android/library/c/m;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/c/m;->a(Lcom/smartadserver/android/library/c/m;Lcom/smartadserver/android/library/model/b;)Lcom/smartadserver/android/library/model/b;

    .line 83
    :cond_0
    return-void
.end method

.method public onUnityAdsReady(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/smartadserver/android/library/c/m$1;->a:Lcom/smartadserver/android/library/c/m;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/m;->a(Lcom/smartadserver/android/library/c/m;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/smartadserver/android/library/c/m$1;->a:Lcom/smartadserver/android/library/c/m;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/m;->b(Lcom/smartadserver/android/library/c/m;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/smartadserver/android/library/c/m$1;->a:Lcom/smartadserver/android/library/c/m;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/m;->c(Lcom/smartadserver/android/library/c/m;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    iget-object v0, p0, Lcom/smartadserver/android/library/c/m$1;->a:Lcom/smartadserver/android/library/c/m;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/m;->d(Lcom/smartadserver/android/library/c/m;)Lcom/smartadserver/android/library/c/i$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/smartadserver/android/library/c/i$a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/smartadserver/android/library/c/m$1;->a:Lcom/smartadserver/android/library/c/m;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/m;->a(Lcom/smartadserver/android/library/c/m;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/smartadserver/android/library/c/m$1;->a:Lcom/smartadserver/android/library/c/m;

    invoke-static {v1}, Lcom/smartadserver/android/library/c/m;->c(Lcom/smartadserver/android/library/c/m;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unity3d/ads/UnityAds;->show(Landroid/app/Activity;Ljava/lang/String;)V

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/smartadserver/android/library/c/m$1;->a:Lcom/smartadserver/android/library/c/m;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/c/m;->a(Lcom/smartadserver/android/library/c/m;Z)Z

    .line 56
    :cond_1
    return-void
.end method

.method public onUnityAdsStart(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/smartadserver/android/library/c/m$1;->a:Lcom/smartadserver/android/library/c/m;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/m;->c(Lcom/smartadserver/android/library/c/m;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/smartadserver/android/library/c/m$1;->a:Lcom/smartadserver/android/library/c/m;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/m;->e(Lcom/smartadserver/android/library/c/m;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/smartadserver/android/library/c/m$1;->a:Lcom/smartadserver/android/library/c/m;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/m;->e(Lcom/smartadserver/android/library/c/m;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->getMRAIDController()Lcom/smartadserver/android/library/controller/mraid/a;

    move-result-object v0

    const-string v1, "default"

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/controller/mraid/a;->setState(Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/smartadserver/android/library/c/m$1;->a:Lcom/smartadserver/android/library/c/m;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/m;->e(Lcom/smartadserver/android/library/c/m;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->getMRAIDController()Lcom/smartadserver/android/library/controller/mraid/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/controller/mraid/a;->setExpandUseCustomCloseProperty(Z)V

    .line 67
    :cond_0
    return-void
.end method
