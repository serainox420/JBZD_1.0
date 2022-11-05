.class Lcom/mopub/mobileads/HtmlBannerWebView$a;
.super Ljava/lang/Object;
.source "HtmlBannerWebView.java"

# interfaces
.implements Lcom/mopub/mobileads/HtmlWebViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/HtmlBannerWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;


# direct methods
.method public constructor <init>(Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/mopub/mobileads/HtmlBannerWebView$a;->a:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    .line 27
    return-void
.end method


# virtual methods
.method public onClicked()V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/mopub/mobileads/HtmlBannerWebView$a;->a:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerClicked()V

    .line 42
    return-void
.end method

.method public onCollapsed()V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/mopub/mobileads/HtmlBannerWebView$a;->a:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerCollapsed()V

    .line 47
    return-void
.end method

.method public onFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/mopub/mobileads/HtmlBannerWebView$a;->a:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    invoke-interface {v0, p1}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 37
    return-void
.end method

.method public onLoaded(Lcom/mopub/mobileads/BaseHtmlWebView;)V
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/mopub/mobileads/HtmlBannerWebView$a;->a:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    invoke-interface {v0, p1}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerLoaded(Landroid/view/View;)V

    .line 32
    return-void
.end method
