.class public Lcom/mopub/mobileads/MoPubActivity;
.super Lcom/mopub/mobileads/a;
.source "MoPubActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/MoPubActivity$a;
    }
.end annotation


# instance fields
.field private b:Lcom/mopub/mobileads/HtmlInterstitialWebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/mopub/mobileads/a;-><init>()V

    .line 130
    return-void
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;Lcom/mopub/common/AdReport;ZLjava/lang/String;Ljava/lang/String;Lcom/mopub/common/CreativeOrientation;J)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 56
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mopub/mobileads/MoPubActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 57
    const-string v1, "Html-Response-Body"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    const-string v1, "Scrollable"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 59
    const-string v1, "Clickthrough-Url"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    const-string v1, "Redirect-Url"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    const-string v1, "broadcastIdentifier"

    invoke-virtual {v0, v1, p7, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 62
    const-string v1, "mopub-intent-ad-report"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 63
    const-string v1, "com_mopub_orientation"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 64
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 65
    return-object v0
.end method

.method static synthetic a(Lcom/mopub/mobileads/MoPubActivity;)Lcom/mopub/mobileads/HtmlInterstitialWebView;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubActivity;->b:Lcom/mopub/mobileads/HtmlInterstitialWebView;

    return-object v0
.end method

.method static a(Landroid/content/Context;Lcom/mopub/common/AdReport;Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 71
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/mopub/mobileads/factories/HtmlInterstitialWebViewFactory;->create(Landroid/content/Context;Lcom/mopub/common/AdReport;Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;ZLjava/lang/String;Ljava/lang/String;)Lcom/mopub/mobileads/HtmlInterstitialWebView;

    move-result-object v0

    .line 74
    invoke-virtual {v0, v3}, Lcom/mopub/mobileads/HtmlInterstitialWebView;->b(Z)V

    .line 75
    invoke-virtual {v0}, Lcom/mopub/mobileads/HtmlInterstitialWebView;->a()V

    .line 77
    new-instance v1, Lcom/mopub/mobileads/MoPubActivity$1;

    invoke-direct {v1, p2}, Lcom/mopub/mobileads/MoPubActivity$1;-><init>(Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;)V

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/HtmlInterstitialWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 89
    invoke-virtual {v0, p3}, Lcom/mopub/mobileads/HtmlInterstitialWebView;->a(Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public static start(Landroid/content/Context;Ljava/lang/String;Lcom/mopub/common/AdReport;ZLjava/lang/String;Ljava/lang/String;Lcom/mopub/common/CreativeOrientation;J)V
    .locals 3

    .prologue
    .line 44
    invoke-static/range {p0 .. p8}, Lcom/mopub/mobileads/MoPubActivity;->a(Landroid/content/Context;Ljava/lang/String;Lcom/mopub/common/AdReport;ZLjava/lang/String;Ljava/lang/String;Lcom/mopub/common/CreativeOrientation;J)Landroid/content/Intent;

    move-result-object v0

    .line 47
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :goto_0
    return-void

    .line 48
    :catch_0
    move-exception v0

    .line 49
    const-string v0, "MoPubActivity"

    const-string v1, "MoPubActivity not found - did you declare it in AndroidManifest.xml?"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getAdView()Landroid/view/View;
    .locals 7

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/mopub/mobileads/MoPubActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 95
    const-string v1, "Scrollable"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 96
    const-string v1, "Redirect-Url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 97
    const-string v1, "Clickthrough-Url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 98
    const-string v1, "Html-Response-Body"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 100
    invoke-virtual {p0}, Lcom/mopub/mobileads/MoPubActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/MoPubActivity;->a:Lcom/mopub/common/AdReport;

    new-instance v2, Lcom/mopub/mobileads/MoPubActivity$a;

    invoke-direct {v2, p0}, Lcom/mopub/mobileads/MoPubActivity$a;-><init>(Lcom/mopub/mobileads/MoPubActivity;)V

    invoke-static/range {v0 .. v5}, Lcom/mopub/mobileads/factories/HtmlInterstitialWebViewFactory;->create(Landroid/content/Context;Lcom/mopub/common/AdReport;Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;ZLjava/lang/String;Ljava/lang/String;)Lcom/mopub/mobileads/HtmlInterstitialWebView;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/MoPubActivity;->b:Lcom/mopub/mobileads/HtmlInterstitialWebView;

    .line 101
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubActivity;->b:Lcom/mopub/mobileads/HtmlInterstitialWebView;

    invoke-virtual {v0, v6}, Lcom/mopub/mobileads/HtmlInterstitialWebView;->a(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubActivity;->b:Lcom/mopub/mobileads/HtmlInterstitialWebView;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 108
    invoke-super {p0, p1}, Lcom/mopub/mobileads/a;->onCreate(Landroid/os/Bundle;)V

    .line 111
    invoke-virtual {p0}, Lcom/mopub/mobileads/MoPubActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com_mopub_orientation"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .line 113
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/mopub/common/CreativeOrientation;

    if-nez v1, :cond_1

    .line 114
    :cond_0
    sget-object v0, Lcom/mopub/common/CreativeOrientation;->UNDEFINED:Lcom/mopub/common/CreativeOrientation;

    .line 118
    :goto_0
    invoke-static {p0, v0}, Lcom/mopub/common/util/DeviceUtils;->lockOrientation(Landroid/app/Activity;Lcom/mopub/common/CreativeOrientation;)V

    .line 119
    invoke-virtual {p0}, Lcom/mopub/mobileads/MoPubActivity;->a()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-string v2, "com.mopub.action.interstitial.show"

    invoke-static {p0, v0, v1, v2}, Lcom/mopub/mobileads/EventForwardingBroadcastReceiver;->a(Landroid/content/Context;JLjava/lang/String;)V

    .line 120
    return-void

    .line 116
    :cond_1
    check-cast v0, Lcom/mopub/common/CreativeOrientation;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 124
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubActivity;->b:Lcom/mopub/mobileads/HtmlInterstitialWebView;

    sget-object v1, Lcom/mopub/mobileads/a$a;->WEB_VIEW_DID_CLOSE:Lcom/mopub/mobileads/a$a;

    invoke-virtual {v1}, Lcom/mopub/mobileads/a$a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/HtmlInterstitialWebView;->loadUrl(Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubActivity;->b:Lcom/mopub/mobileads/HtmlInterstitialWebView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/HtmlInterstitialWebView;->destroy()V

    .line 126
    invoke-virtual {p0}, Lcom/mopub/mobileads/MoPubActivity;->a()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-string v2, "com.mopub.action.interstitial.dismiss"

    invoke-static {p0, v0, v1, v2}, Lcom/mopub/mobileads/EventForwardingBroadcastReceiver;->a(Landroid/content/Context;JLjava/lang/String;)V

    .line 127
    invoke-super {p0}, Lcom/mopub/mobileads/a;->onDestroy()V

    .line 128
    return-void
.end method
