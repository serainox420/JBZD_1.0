.class public Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreenActivity;
.super Landroid/app/Activity;
.source "PromoHouseFullscreenActivity.java"


# static fields
.field public static final INTENT_URL:Ljava/lang/String; = "Intent_URL"

.field public static final PromoHouseActivityFinish:Ljava/lang/String; = "PROMO_HOUSE_ACTIVITY_FINISH"

.field public static final PromoHouseAdClicked:Ljava/lang/String; = "PROMO_HOUSE_AD_CLICKED"

.field public static final PromoHouseAdFailed:Ljava/lang/String; = "PROMO_HOUSE_AD_FAILED"

.field private static final ServerResponseClose:Ljava/lang/String; = "krassapp://close"

.field private static final ServerResponseNoAd:Ljava/lang/String; = "internal:noad"


# instance fields
.field private currentUrl:Ljava/lang/String;

.field private intent:Landroid/content/Intent;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreenActivity;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreenActivity;->finishActivity()V

    return-void
.end method

.method static synthetic access$100(Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreenActivity;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreenActivity;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$102(Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreenActivity;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreenActivity;->intent:Landroid/content/Intent;

    return-object p1
.end method

.method private createWebViewClient()Landroid/webkit/WebViewClient;
    .locals 1

    .prologue
    .line 83
    new-instance v0, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreenActivity$1;

    invoke-direct {v0, p0}, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreenActivity$1;-><init>(Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreenActivity;)V

    return-object v0
.end method

.method private finishActivity()V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreenActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 72
    if-eqz v0, :cond_0

    .line 73
    iget-object v1, p0, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreenActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->stopLoading()V

    .line 74
    iget-object v1, p0, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreenActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 76
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreenActivity;->intent:Landroid/content/Intent;

    .line 77
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreenActivity;->intent:Landroid/content/Intent;

    const-string v1, "PROMO_HOUSE_ACTIVITY_FINISH"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreenActivity;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreenActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 79
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreenActivity;->finish()V

    .line 80
    return-void
.end method

.method private show()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 61
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreenActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreenActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreenActivity;->finishActivity()V

    .line 68
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreenActivity;->requestWindowFeature(I)Z

    .line 43
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreenActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 44
    const-string v1, "Intent_URL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreenActivity;->currentUrl:Ljava/lang/String;

    .line 45
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 49
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 50
    new-instance v0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreenActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreenActivity;->webView:Landroid/webkit/WebView;

    .line 51
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreenActivity;->webView:Landroid/webkit/WebView;

    invoke-direct {p0}, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreenActivity;->createWebViewClient()Landroid/webkit/WebViewClient;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 52
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreenActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 53
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 54
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreenActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreenActivity;->webView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreenActivity;->currentUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 57
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/fullscreens/PromoHouseFullscreenActivity;->show()V

    .line 58
    return-void
.end method
