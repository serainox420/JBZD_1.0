.class Lcom/mopub/mobileads/HtmlInterstitialWebView$a;
.super Ljava/lang/Object;
.source "HtmlInterstitialWebView.java"

# interfaces
.implements Lcom/mopub/mobileads/HtmlWebViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/HtmlInterstitialWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;


# direct methods
.method public constructor <init>(Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/mopub/mobileads/HtmlInterstitialWebView$a;->a:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    .line 36
    return-void
.end method


# virtual methods
.method public onClicked()V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/mopub/mobileads/HtmlInterstitialWebView$a;->a:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialClicked()V

    .line 51
    return-void
.end method

.method public onCollapsed()V
    .locals 0

    .prologue
    .line 56
    return-void
.end method

.method public onFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/mopub/mobileads/HtmlInterstitialWebView$a;->a:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    invoke-interface {v0, p1}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 46
    return-void
.end method

.method public onLoaded(Lcom/mopub/mobileads/BaseHtmlWebView;)V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/mopub/mobileads/HtmlInterstitialWebView$a;->a:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialLoaded()V

    .line 41
    return-void
.end method
