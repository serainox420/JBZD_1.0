.class public Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreenActivity;
.super Landroid/app/Activity;
.source "NexageFullscreenActivity.java"


# static fields
.field public static final ActivityFinish:Ljava/lang/String; = "RTB1_ACTIVITY_FINISH"

.field public static final AdClicked:Ljava/lang/String; = "RTB1_AD_CLICKED"

.field private static final CLOSE_BUTTON_SIZE:I = 0x2c

.field public static final INTENT_BASE_URL:Ljava/lang/String; = "Intent_base_URL"

.field public static final INTENT_HTML:Ljava/lang/String; = "Intent_HTML"


# instance fields
.field private adFrame:Landroid/widget/FrameLayout;

.field private baseUrl:Ljava/lang/String;

.field private htmlString:Ljava/lang/String;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreenActivity;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreenActivity;->finishActivity()V

    return-void
.end method

.method private createWebViewClient()Landroid/webkit/WebViewClient;
    .locals 1

    .prologue
    .line 101
    new-instance v0, Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreenActivity$2;

    invoke-direct {v0, p0}, Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreenActivity$2;-><init>(Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreenActivity;)V

    return-object v0
.end method

.method private finishActivity()V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreenActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 90
    if-eqz v0, :cond_0

    .line 91
    iget-object v1, p0, Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreenActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->stopLoading()V

    .line 92
    iget-object v1, p0, Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreenActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 94
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 95
    const-string v1, "RTB1_ACTIVITY_FINISH"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    invoke-virtual {p0, v0}, Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreenActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 97
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreenActivity;->finish()V

    .line 98
    return-void
.end method

.method private show()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 80
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreenActivity;->adFrame:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreenActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreenActivity;->finishActivity()V

    .line 86
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreenActivity;->requestWindowFeature(I)Z

    .line 45
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreenActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 46
    const-string v1, "Intent_base_URL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreenActivity;->baseUrl:Ljava/lang/String;

    .line 47
    const-string v1, "Intent_HTML"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreenActivity;->htmlString:Ljava/lang/String;

    .line 48
    return-void
.end method

.method protected onStart()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, -0x1

    const/high16 v6, 0x42300000    # 44.0f

    .line 53
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 54
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreenActivity;->adFrame:Landroid/widget/FrameLayout;

    .line 55
    new-instance v0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreenActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreenActivity;->webView:Landroid/webkit/WebView;

    .line 56
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreenActivity;->webView:Landroid/webkit/WebView;

    invoke-direct {p0}, Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreenActivity;->createWebViewClient()Landroid/webkit/WebViewClient;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 57
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreenActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 58
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 59
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreenActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreenActivity;->webView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreenActivity;->baseUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreenActivity;->htmlString:Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "utf-8"

    iget-object v5, p0, Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreenActivity;->baseUrl:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 63
    new-instance v1, Lcom/intentsoftware/addapptr/fullscreens/a;

    invoke-direct {v1, v8}, Lcom/intentsoftware/addapptr/fullscreens/a;-><init>(Z)V

    .line 64
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 65
    new-instance v1, Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreenActivity$1;

    invoke-direct {v1, p0}, Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreenActivity$1;-><init>(Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreenActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreenActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 73
    iget-object v2, p0, Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreenActivity;->adFrame:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreenActivity;->webView:Landroid/webkit/WebView;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    iget-object v2, p0, Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreenActivity;->adFrame:Landroid/widget/FrameLayout;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    mul-float v4, v6, v1

    float-to-int v4, v4

    mul-float/2addr v1, v6

    float-to-int v1, v1

    const/16 v5, 0x35

    invoke-direct {v3, v4, v1, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/fullscreens/NexageFullscreenActivity;->show()V

    .line 77
    return-void
.end method
