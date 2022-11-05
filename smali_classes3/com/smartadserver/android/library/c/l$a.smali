.class Lcom/smartadserver/android/library/c/l$a;
.super Ljava/lang/Object;
.source "SASMoPubAdapter.java"

# interfaces
.implements Lcom/mopub/mobileads/MoPubView$BannerAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartadserver/android/library/c/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/c/l;


# direct methods
.method private constructor <init>(Lcom/smartadserver/android/library/c/l;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/smartadserver/android/library/c/l$a;->a:Lcom/smartadserver/android/library/c/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/smartadserver/android/library/c/l;Lcom/smartadserver/android/library/c/l$1;)V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/smartadserver/android/library/c/l$a;-><init>(Lcom/smartadserver/android/library/c/l;)V

    return-void
.end method


# virtual methods
.method public onBannerClicked(Lcom/mopub/mobileads/MoPubView;)V
    .locals 2

    .prologue
    .line 97
    const-string v0, "SASMoPubAdapter"

    const-string v1, "MoPub onBannerClicked for banner"

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/smartadserver/android/library/c/l$a;->a:Lcom/smartadserver/android/library/c/l;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/l;->a(Lcom/smartadserver/android/library/c/l;)Lcom/smartadserver/android/library/c/i$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/smartadserver/android/library/c/i$a;->d()V

    .line 99
    return-void
.end method

.method public onBannerCollapsed(Lcom/mopub/mobileads/MoPubView;)V
    .locals 2

    .prologue
    .line 109
    const-string v0, "SASMoPubAdapter"

    const-string v1, "MoPub onBannerCollapsed for banner"

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/smartadserver/android/library/c/l$a;->a:Lcom/smartadserver/android/library/c/l;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/l;->b(Lcom/smartadserver/android/library/c/l;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->getMRAIDController()Lcom/smartadserver/android/library/controller/mraid/a;

    move-result-object v0

    const-string v1, "default"

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/controller/mraid/a;->setState(Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method public onBannerExpanded(Lcom/mopub/mobileads/MoPubView;)V
    .locals 2

    .prologue
    .line 103
    const-string v0, "SASMoPubAdapter"

    const-string v1, "MoPub onBannerExpanded for banner"

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/smartadserver/android/library/c/l$a;->a:Lcom/smartadserver/android/library/c/l;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/l;->b(Lcom/smartadserver/android/library/c/l;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->getMRAIDController()Lcom/smartadserver/android/library/controller/mraid/a;

    move-result-object v0

    const-string v1, "expanded"

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/controller/mraid/a;->setState(Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method public onBannerFailed(Lcom/mopub/mobileads/MoPubView;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 2

    .prologue
    .line 91
    const-string v0, "SASMoPubAdapter"

    const-string v1, "MoPub onBannerFailed for banner"

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/smartadserver/android/library/c/l$a;->a:Lcom/smartadserver/android/library/c/l;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/l;->a(Lcom/smartadserver/android/library/c/l;)Lcom/smartadserver/android/library/c/i$a;

    move-result-object v0

    invoke-virtual {p2}, Lcom/mopub/mobileads/MoPubErrorCode;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/smartadserver/android/library/c/i$a;->a(Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public onBannerLoaded(Lcom/mopub/mobileads/MoPubView;)V
    .locals 2

    .prologue
    .line 84
    const-string v0, "SASMoPubAdapter"

    const-string v1, "MoPub onBannerLoaded for banner"

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/smartadserver/android/library/c/l$a;->a:Lcom/smartadserver/android/library/c/l;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/l;->a(Lcom/smartadserver/android/library/c/l;)Lcom/smartadserver/android/library/c/i$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/smartadserver/android/library/c/i$a;->c()Z

    .line 86
    iget-object v0, p0, Lcom/smartadserver/android/library/c/l$a;->a:Lcom/smartadserver/android/library/c/l;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/l;->b(Lcom/smartadserver/android/library/c/l;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->getMRAIDController()Lcom/smartadserver/android/library/controller/mraid/a;

    move-result-object v0

    const-string v1, "default"

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/controller/mraid/a;->setState(Ljava/lang/String;)V

    .line 87
    return-void
.end method
