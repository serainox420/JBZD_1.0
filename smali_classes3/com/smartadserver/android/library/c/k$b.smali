.class Lcom/smartadserver/android/library/c/k$b;
.super Ljava/lang/Object;
.source "SASMillennialAdapter.java"

# interfaces
.implements Lcom/millennialmedia/InterstitialAd$InterstitialListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartadserver/android/library/c/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/c/k;


# direct methods
.method private constructor <init>(Lcom/smartadserver/android/library/c/k;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/smartadserver/android/library/c/k$b;->a:Lcom/smartadserver/android/library/c/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/smartadserver/android/library/c/k;Lcom/smartadserver/android/library/c/k$1;)V
    .locals 0

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/smartadserver/android/library/c/k$b;-><init>(Lcom/smartadserver/android/library/c/k;)V

    return-void
.end method


# virtual methods
.method public onAdLeftApplication(Lcom/millennialmedia/InterstitialAd;)V
    .locals 2

    .prologue
    .line 118
    const-string v0, "SASMillennialAdapter"

    const-string v1, "Millennial interstitial ad onAdLeftApplication"

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method public onClicked(Lcom/millennialmedia/InterstitialAd;)V
    .locals 2

    .prologue
    .line 123
    const-string v0, "SASMillennialAdapter"

    const-string v1, "Millennial interstitial ad onClicked"

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/smartadserver/android/library/c/k$b;->a:Lcom/smartadserver/android/library/c/k;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/k;->a(Lcom/smartadserver/android/library/c/k;)Lcom/smartadserver/android/library/c/i$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/smartadserver/android/library/c/i$a;->d()V

    .line 125
    return-void
.end method

.method public onClosed(Lcom/millennialmedia/InterstitialAd;)V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/smartadserver/android/library/c/k$b;->a:Lcom/smartadserver/android/library/c/k;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/k;->b(Lcom/smartadserver/android/library/c/k;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/smartadserver/android/library/c/k$b;->a:Lcom/smartadserver/android/library/c/k;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/k;->b(Lcom/smartadserver/android/library/c/k;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v0

    new-instance v1, Lcom/smartadserver/android/library/c/k$b$1;

    invoke-direct {v1, p0}, Lcom/smartadserver/android/library/c/k$b$1;-><init>(Lcom/smartadserver/android/library/c/k$b;)V

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/SASAdView;->a(Ljava/lang/Runnable;)V

    .line 137
    :cond_0
    return-void
.end method

.method public onExpired(Lcom/millennialmedia/InterstitialAd;)V
    .locals 2

    .prologue
    .line 141
    const-string v0, "SASMillennialAdapter"

    const-string v1, "Millennial interstitial ad onExpired"

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method public onLoadFailed(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/InterstitialAd$InterstitialErrorStatus;)V
    .locals 3

    .prologue
    .line 146
    const-string v0, "SASMillennialAdapter"

    const-string v1, "Millennial interstitial ad onLoadFailed"

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/smartadserver/android/library/c/k$b;->a:Lcom/smartadserver/android/library/c/k;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/k;->a(Lcom/smartadserver/android/library/c/k;)Lcom/smartadserver/android/library/c/i$a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/millennialmedia/InterstitialAd$InterstitialErrorStatus;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/millennialmedia/InterstitialAd$InterstitialErrorStatus;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/smartadserver/android/library/c/i$a;->a(Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method public onLoaded(Lcom/millennialmedia/InterstitialAd;)V
    .locals 2

    .prologue
    .line 152
    const-string v0, "SASMillennialAdapter"

    const-string v1, "Millennial interstitial ad onLoaded"

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/smartadserver/android/library/c/k$b;->a:Lcom/smartadserver/android/library/c/k;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/k;->b(Lcom/smartadserver/android/library/c/k;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v0

    new-instance v1, Lcom/smartadserver/android/library/c/k$b$2;

    invoke-direct {v1, p0, p1}, Lcom/smartadserver/android/library/c/k$b$2;-><init>(Lcom/smartadserver/android/library/c/k$b;Lcom/millennialmedia/InterstitialAd;)V

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/SASAdView;->a(Ljava/lang/Runnable;)V

    .line 171
    return-void
.end method

.method public onShowFailed(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/InterstitialAd$InterstitialErrorStatus;)V
    .locals 3

    .prologue
    .line 175
    const-string v0, "SASMillennialAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Millennial interstitial ad onShowFailed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/millennialmedia/InterstitialAd$InterstitialErrorStatus;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/millennialmedia/InterstitialAd$InterstitialErrorStatus;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    return-void
.end method

.method public onShown(Lcom/millennialmedia/InterstitialAd;)V
    .locals 2

    .prologue
    .line 180
    const-string v0, "SASMillennialAdapter"

    const-string v1, "Millennial interstitial ad onShown"

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    return-void
.end method
