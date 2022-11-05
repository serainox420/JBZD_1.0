.class public Lcom/smaato/soma/interstitial/BaseActivity;
.super Landroid/app/Activity;
.source "BaseActivity.java"


# instance fields
.field private a:Landroid/widget/RelativeLayout;

.field private b:Lcom/smaato/soma/b/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/smaato/soma/interstitial/BaseActivity;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/smaato/soma/interstitial/BaseActivity;->a:Landroid/widget/RelativeLayout;

    return-object p1
.end method

.method static synthetic a(Lcom/smaato/soma/interstitial/BaseActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/RequestingActivityFeaturesFailed;
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/smaato/soma/interstitial/BaseActivity;->c()V

    return-void
.end method

.method static synthetic b(Lcom/smaato/soma/interstitial/BaseActivity;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/smaato/soma/interstitial/BaseActivity;->a:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private c()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/RequestingActivityFeaturesFailed;
        }
    .end annotation

    .prologue
    .line 99
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/smaato/soma/interstitial/BaseActivity;->requestWindowFeature(I)Z

    .line 100
    invoke-virtual {p0}, Lcom/smaato/soma/interstitial/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 106
    return-void

    .line 101
    :catch_0
    move-exception v0

    .line 102
    throw v0

    .line 103
    :catch_1
    move-exception v0

    .line 104
    new-instance v1, Lcom/smaato/soma/exception/RequestingActivityFeaturesFailed;

    invoke-direct {v1, v0}, Lcom/smaato/soma/exception/RequestingActivityFeaturesFailed;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method protected a()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/smaato/soma/interstitial/BaseActivity;->a:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method protected b()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/AddingCloseButtonToInterstitialFailed;
        }
    .end annotation

    .prologue
    .line 70
    :try_start_0
    new-instance v0, Lcom/smaato/soma/b/b;

    invoke-virtual {p0}, Lcom/smaato/soma/interstitial/BaseActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/smaato/soma/b/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smaato/soma/interstitial/BaseActivity;->b:Lcom/smaato/soma/b/b;

    .line 71
    invoke-static {}, Lcom/smaato/soma/internal/c/d;->a()Lcom/smaato/soma/internal/c/d;

    move-result-object v0

    invoke-virtual {p0}, Lcom/smaato/soma/interstitial/BaseActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x32

    invoke-virtual {v0, v1, v2}, Lcom/smaato/soma/internal/c/d;->a(Landroid/content/Context;I)I

    move-result v0

    .line 72
    iget-object v1, p0, Lcom/smaato/soma/interstitial/BaseActivity;->b:Lcom/smaato/soma/b/b;

    invoke-virtual {v1}, Lcom/smaato/soma/b/b;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 73
    iget-object v1, p0, Lcom/smaato/soma/interstitial/BaseActivity;->b:Lcom/smaato/soma/b/b;

    invoke-virtual {v1}, Lcom/smaato/soma/b/b;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 74
    iget-object v0, p0, Lcom/smaato/soma/interstitial/BaseActivity;->b:Lcom/smaato/soma/b/b;

    new-instance v1, Lcom/smaato/soma/interstitial/BaseActivity$2;

    invoke-direct {v1, p0}, Lcom/smaato/soma/interstitial/BaseActivity$2;-><init>(Lcom/smaato/soma/interstitial/BaseActivity;)V

    invoke-virtual {v0, v1}, Lcom/smaato/soma/b/b;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object v0, p0, Lcom/smaato/soma/interstitial/BaseActivity;->a:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/smaato/soma/interstitial/BaseActivity;->b:Lcom/smaato/soma/b/b;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 91
    return-void

    .line 86
    :catch_0
    move-exception v0

    .line 87
    throw v0

    .line 88
    :catch_1
    move-exception v0

    .line 89
    new-instance v1, Lcom/smaato/soma/exception/AddingCloseButtonToInterstitialFailed;

    invoke-direct {v1, v0}, Lcom/smaato/soma/exception/AddingCloseButtonToInterstitialFailed;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    new-instance v0, Lcom/smaato/soma/interstitial/BaseActivity$1;

    invoke-direct {v0, p0}, Lcom/smaato/soma/interstitial/BaseActivity$1;-><init>(Lcom/smaato/soma/interstitial/BaseActivity;)V

    .line 53
    invoke-virtual {v0}, Lcom/smaato/soma/interstitial/BaseActivity$1;->c()Ljava/lang/Object;

    .line 54
    return-void
.end method
