.class public Lcom/mopub/mobileads/HtmlBannerWebView;
.super Lcom/mopub/mobileads/BaseHtmlWebView;
.source "HtmlBannerWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/HtmlBannerWebView$a;
    }
.end annotation


# static fields
.field public static final EXTRA_AD_CLICK_DATA:Ljava/lang/String; = "com.mopub.intent.extra.AD_CLICK_DATA"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mopub/common/AdReport;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lcom/mopub/mobileads/BaseHtmlWebView;-><init>(Landroid/content/Context;Lcom/mopub/common/AdReport;)V

    .line 14
    return-void
.end method


# virtual methods
.method public init(Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 17
    invoke-super {p0, p2}, Lcom/mopub/mobileads/BaseHtmlWebView;->init(Z)V

    .line 19
    new-instance v0, Lcom/mopub/mobileads/b;

    new-instance v1, Lcom/mopub/mobileads/HtmlBannerWebView$a;

    invoke-direct {v1, p1}, Lcom/mopub/mobileads/HtmlBannerWebView$a;-><init>(Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;)V

    move-object v2, p0

    move-object v3, p4

    move-object v4, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/mopub/mobileads/b;-><init>(Lcom/mopub/mobileads/HtmlWebViewListener;Lcom/mopub/mobileads/BaseHtmlWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/HtmlBannerWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 20
    return-void
.end method
