.class public Lcom/mopub/mobileads/HtmlInterstitialWebView;
.super Lcom/mopub/mobileads/BaseHtmlWebView;
.source "HtmlInterstitialWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/HtmlInterstitialWebView$a;
    }
.end annotation


# instance fields
.field private b:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mopub/common/AdReport;)V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Lcom/mopub/mobileads/BaseHtmlWebView;-><init>(Landroid/content/Context;Lcom/mopub/common/AdReport;)V

    .line 16
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/HtmlInterstitialWebView;->b:Landroid/os/Handler;

    .line 17
    return-void
.end method


# virtual methods
.method public init(Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 20
    invoke-super {p0, p2}, Lcom/mopub/mobileads/BaseHtmlWebView;->init(Z)V

    .line 22
    new-instance v1, Lcom/mopub/mobileads/HtmlInterstitialWebView$a;

    invoke-direct {v1, p1}, Lcom/mopub/mobileads/HtmlInterstitialWebView$a;-><init>(Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;)V

    .line 23
    new-instance v0, Lcom/mopub/mobileads/b;

    move-object v2, p0

    move-object v3, p4

    move-object v4, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/mopub/mobileads/b;-><init>(Lcom/mopub/mobileads/HtmlWebViewListener;Lcom/mopub/mobileads/BaseHtmlWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/HtmlInterstitialWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 25
    return-void
.end method
