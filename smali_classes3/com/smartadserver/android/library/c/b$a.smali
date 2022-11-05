.class Lcom/smartadserver/android/library/c/b$a;
.super Lcom/google/android/gms/ads/AdListener;
.source "SASAdMobAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartadserver/android/library/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/c/b;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/smartadserver/android/library/c/b;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/smartadserver/android/library/c/b$a;->a:Lcom/smartadserver/android/library/c/b;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    .line 93
    iput-object p2, p0, Lcom/smartadserver/android/library/c/b$a;->b:Ljava/lang/String;

    .line 94
    return-void
.end method


# virtual methods
.method public onAdClosed()V
    .locals 3

    .prologue
    .line 97
    const-string v0, "SASAdMobAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AdMob onAdClosed for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/smartadserver/android/library/c/b$a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/smartadserver/android/library/c/b$a;->a:Lcom/smartadserver/android/library/c/b;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/b;->b(Lcom/smartadserver/android/library/c/b;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v0

    instance-of v0, v0, Lcom/smartadserver/android/library/SASInterstitialView;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/smartadserver/android/library/c/b$a;->a:Lcom/smartadserver/android/library/c/b;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/b;->b(Lcom/smartadserver/android/library/c/b;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v0

    new-instance v1, Lcom/smartadserver/android/library/c/b$a$1;

    invoke-direct {v1, p0}, Lcom/smartadserver/android/library/c/b$a$1;-><init>(Lcom/smartadserver/android/library/c/b$a;)V

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/SASAdView;->a(Ljava/lang/Runnable;)V

    .line 105
    :cond_0
    return-void
.end method

.method public onAdFailedToLoad(I)V
    .locals 3

    .prologue
    .line 108
    const-string v0, "SASAdMobAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AdMob onAdFailedToLoad for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/smartadserver/android/library/c/b$a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (error code:"

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

    .line 109
    iget-object v0, p0, Lcom/smartadserver/android/library/c/b$a;->a:Lcom/smartadserver/android/library/c/b;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/b;->a(Lcom/smartadserver/android/library/c/b;)Lcom/smartadserver/android/library/c/i$a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AdMob ad loading error code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/smartadserver/android/library/c/i$a;->a(Ljava/lang/String;)V

    .line 110
    return-void
.end method

.method public onAdLeftApplication()V
    .locals 3

    .prologue
    .line 113
    const-string v0, "SASAdMobAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AdMob onAdLeftApplication for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/smartadserver/android/library/c/b$a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/smartadserver/android/library/c/b$a;->a:Lcom/smartadserver/android/library/c/b;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/b;->a(Lcom/smartadserver/android/library/c/b;)Lcom/smartadserver/android/library/c/i$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/smartadserver/android/library/c/i$a;->d()V

    .line 115
    return-void
.end method

.method public onAdLoaded()V
    .locals 3

    .prologue
    .line 122
    const-string v0, "SASAdMobAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AdMob ad onAdLoaded for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/smartadserver/android/library/c/b$a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/smartadserver/android/library/c/b$a;->a:Lcom/smartadserver/android/library/c/b;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/b;->a(Lcom/smartadserver/android/library/c/b;)Lcom/smartadserver/android/library/c/i$a;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/smartadserver/android/library/c/b$a;->a:Lcom/smartadserver/android/library/c/b;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/b;->a(Lcom/smartadserver/android/library/c/b;)Lcom/smartadserver/android/library/c/i$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/smartadserver/android/library/c/i$a;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/smartadserver/android/library/c/b$a;->a:Lcom/smartadserver/android/library/c/b;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/b;->b(Lcom/smartadserver/android/library/c/b;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 124
    iget-object v0, p0, Lcom/smartadserver/android/library/c/b$a;->a:Lcom/smartadserver/android/library/c/b;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/b;->c(Lcom/smartadserver/android/library/c/b;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/smartadserver/android/library/c/b$a;->a:Lcom/smartadserver/android/library/c/b;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/b;->d(Lcom/smartadserver/android/library/c/b;)I

    move-result v0

    if-lez v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/smartadserver/android/library/c/b$a;->a:Lcom/smartadserver/android/library/c/b;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/b;->b(Lcom/smartadserver/android/library/c/b;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->getCurrentAdElement()Lcom/smartadserver/android/library/model/SASAdElement;

    move-result-object v0

    iget-object v1, p0, Lcom/smartadserver/android/library/c/b$a;->a:Lcom/smartadserver/android/library/c/b;

    invoke-static {v1}, Lcom/smartadserver/android/library/c/b;->c(Lcom/smartadserver/android/library/c/b;)I

    move-result v1

    iget-object v2, p0, Lcom/smartadserver/android/library/c/b$a;->a:Lcom/smartadserver/android/library/c/b;

    invoke-static {v2}, Lcom/smartadserver/android/library/c/b;->b(Lcom/smartadserver/android/library/c/b;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartadserver/android/library/ui/SASAdView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/smartadserver/android/library/g/c;->a(ILandroid/content/res/Resources;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/model/SASAdElement;->setPortraitHeight(I)V

    .line 127
    iget-object v0, p0, Lcom/smartadserver/android/library/c/b$a;->a:Lcom/smartadserver/android/library/c/b;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/b;->b(Lcom/smartadserver/android/library/c/b;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->getCurrentAdElement()Lcom/smartadserver/android/library/model/SASAdElement;

    move-result-object v0

    iget-object v1, p0, Lcom/smartadserver/android/library/c/b$a;->a:Lcom/smartadserver/android/library/c/b;

    invoke-static {v1}, Lcom/smartadserver/android/library/c/b;->b(Lcom/smartadserver/android/library/c/b;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartadserver/android/library/ui/SASAdView;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/model/SASAdElement;->setPortraitWidth(I)V

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/smartadserver/android/library/c/b$a;->a:Lcom/smartadserver/android/library/c/b;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/b;->b(Lcom/smartadserver/android/library/c/b;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->getMRAIDController()Lcom/smartadserver/android/library/controller/mraid/a;

    move-result-object v0

    const-string v1, "default"

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/controller/mraid/a;->setState(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/smartadserver/android/library/c/b$a;->a:Lcom/smartadserver/android/library/c/b;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/b;->b(Lcom/smartadserver/android/library/c/b;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v0

    instance-of v0, v0, Lcom/smartadserver/android/library/SASInterstitialView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/smartadserver/android/library/c/b$a;->a:Lcom/smartadserver/android/library/c/b;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/b;->e(Lcom/smartadserver/android/library/c/b;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    .line 131
    iget-object v0, p0, Lcom/smartadserver/android/library/c/b$a;->a:Lcom/smartadserver/android/library/c/b;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/b;->b(Lcom/smartadserver/android/library/c/b;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 133
    iget-object v0, p0, Lcom/smartadserver/android/library/c/b$a;->a:Lcom/smartadserver/android/library/c/b;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/b;->b(Lcom/smartadserver/android/library/c/b;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->getMRAIDController()Lcom/smartadserver/android/library/controller/mraid/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/controller/mraid/a;->setExpandUseCustomCloseProperty(Z)V

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/smartadserver/android/library/c/b$a;->a:Lcom/smartadserver/android/library/c/b;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/b;->f(Lcom/smartadserver/android/library/c/b;)Lcom/google/android/gms/ads/InterstitialAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->show()V

    .line 138
    :cond_2
    return-void
.end method

.method public onAdOpened()V
    .locals 3

    .prologue
    .line 118
    const-string v0, "SASAdMobAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AdMob onAdOpened for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/smartadserver/android/library/c/b$a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    return-void
.end method
