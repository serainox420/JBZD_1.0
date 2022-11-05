.class Lcom/smartadserver/android/library/c/l$b;
.super Ljava/lang/Object;
.source "SASMoPubAdapter.java"

# interfaces
.implements Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartadserver/android/library/c/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/c/l;


# direct methods
.method private constructor <init>(Lcom/smartadserver/android/library/c/l;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/smartadserver/android/library/c/l$b;->a:Lcom/smartadserver/android/library/c/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/smartadserver/android/library/c/l;Lcom/smartadserver/android/library/c/l$1;)V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/smartadserver/android/library/c/l$b;-><init>(Lcom/smartadserver/android/library/c/l;)V

    return-void
.end method


# virtual methods
.method public onInterstitialClicked(Lcom/mopub/mobileads/MoPubInterstitial;)V
    .locals 2

    .prologue
    .line 142
    const-string v0, "SASMoPubAdapter"

    const-string v1, "MoPub onInterstitialClicked for interstitial"

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/smartadserver/android/library/c/l$b;->a:Lcom/smartadserver/android/library/c/l;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/l;->a(Lcom/smartadserver/android/library/c/l;)Lcom/smartadserver/android/library/c/i$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/smartadserver/android/library/c/i$a;->d()V

    .line 144
    return-void
.end method

.method public onInterstitialDismissed(Lcom/mopub/mobileads/MoPubInterstitial;)V
    .locals 2

    .prologue
    .line 148
    const-string v0, "SASMoPubAdapter"

    const-string v1, "MoPub onInterstitialDismissed for interstitial"

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/smartadserver/android/library/c/l$b;->a:Lcom/smartadserver/android/library/c/l;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/l;->b(Lcom/smartadserver/android/library/c/l;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/smartadserver/android/library/c/l$b;->a:Lcom/smartadserver/android/library/c/l;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/l;->b(Lcom/smartadserver/android/library/c/l;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v0

    new-instance v1, Lcom/smartadserver/android/library/c/l$b$1;

    invoke-direct {v1, p0}, Lcom/smartadserver/android/library/c/l$b$1;-><init>(Lcom/smartadserver/android/library/c/l$b;)V

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/SASAdView;->a(Ljava/lang/Runnable;)V

    .line 156
    :cond_0
    return-void
.end method

.method public onInterstitialFailed(Lcom/mopub/mobileads/MoPubInterstitial;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 2

    .prologue
    .line 131
    const-string v0, "SASMoPubAdapter"

    const-string v1, "MoPub onInterstitialLoaded for interstitial"

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/smartadserver/android/library/c/l$b;->a:Lcom/smartadserver/android/library/c/l;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/l;->a(Lcom/smartadserver/android/library/c/l;)Lcom/smartadserver/android/library/c/i$a;

    move-result-object v0

    invoke-virtual {p2}, Lcom/mopub/mobileads/MoPubErrorCode;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/smartadserver/android/library/c/i$a;->a(Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method public onInterstitialLoaded(Lcom/mopub/mobileads/MoPubInterstitial;)V
    .locals 2

    .prologue
    .line 120
    const-string v0, "SASMoPubAdapter"

    const-string v1, "MoPub onInterstitialLoaded for interstitial"

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/smartadserver/android/library/c/l$b;->a:Lcom/smartadserver/android/library/c/l;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/l;->a(Lcom/smartadserver/android/library/c/l;)Lcom/smartadserver/android/library/c/i$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smartadserver/android/library/c/l$b;->a:Lcom/smartadserver/android/library/c/l;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/l;->a(Lcom/smartadserver/android/library/c/l;)Lcom/smartadserver/android/library/c/i$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/smartadserver/android/library/c/i$a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smartadserver/android/library/c/l$b;->a:Lcom/smartadserver/android/library/c/l;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/l;->b(Lcom/smartadserver/android/library/c/l;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/smartadserver/android/library/c/l$b;->a:Lcom/smartadserver/android/library/c/l;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/l;->b(Lcom/smartadserver/android/library/c/l;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->getMRAIDController()Lcom/smartadserver/android/library/controller/mraid/a;

    move-result-object v0

    const-string v1, "default"

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/controller/mraid/a;->setState(Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/smartadserver/android/library/c/l$b;->a:Lcom/smartadserver/android/library/c/l;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/l;->b(Lcom/smartadserver/android/library/c/l;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->getMRAIDController()Lcom/smartadserver/android/library/controller/mraid/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/controller/mraid/a;->setExpandUseCustomCloseProperty(Z)V

    .line 125
    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubInterstitial;->show()Z

    .line 127
    :cond_0
    return-void
.end method

.method public onInterstitialShown(Lcom/mopub/mobileads/MoPubInterstitial;)V
    .locals 2

    .prologue
    .line 137
    const-string v0, "SASMoPubAdapter"

    const-string v1, "MoPub onInterstitialShown for interstitial"

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    return-void
.end method
