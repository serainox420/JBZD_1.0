.class public Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreenActivity;
.super Landroid/app/Activity;
.source "SmartAdServerFullscreenActivity.java"


# static fields
.field private static final CLOSE_BUTTON_SIZE:I = 0x26

.field public static final HASH_PARAM_NAME:Ljava/lang/String; = "viewHashCode"

.field public static final HEIGHT_PARAM_NAME:Ljava/lang/String; = "height"

.field public static final ORIENTATION_PARAM_NAME:Ljava/lang/String; = "orientation"

.field public static final SMART_AD_SERVER_CLICKED:Ljava/lang/String; = "SMART_AD_SERVER_CLICKED"

.field public static final SMART_AD_SERVER_FAILED:Ljava/lang/String; = "SMART_AD_SERVER_FAILED"

.field public static final SMART_AD_SERVER_FINISH:Ljava/lang/String; = "SMART_AD_SERVER_FINISH"

.field public static final WIDTH_PARAM_NAME:Ljava/lang/String; = "width"


# instance fields
.field private closeAdHandler:Landroid/os/Handler;

.field private closeAdRunnable:Ljava/lang/Runnable;

.field private height:I

.field private interstitialView:Lcom/smartadserver/android/library/SASBannerView;

.field private reportedClick:Z

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreenActivity;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreenActivity;->closeAd()V

    return-void
.end method

.method static synthetic access$100(Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreenActivity;)Z
    .locals 1

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreenActivity;->reportedClick:Z

    return v0
.end method

.method static synthetic access$102(Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreenActivity;Z)Z
    .locals 0

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreenActivity;->reportedClick:Z

    return p1
.end method

.method private closeAd()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 136
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreenActivity;->closeAdHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreenActivity;->closeAdRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreenActivity;->closeAdHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreenActivity;->closeAdRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 138
    iput-object v2, p0, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreenActivity;->closeAdRunnable:Ljava/lang/Runnable;

    .line 139
    iput-object v2, p0, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreenActivity;->closeAdHandler:Landroid/os/Handler;

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreenActivity;->interstitialView:Lcom/smartadserver/android/library/SASBannerView;

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreenActivity;->interstitialView:Lcom/smartadserver/android/library/SASBannerView;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/SASBannerView;->n()V

    .line 145
    :cond_1
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreenActivity;->finishActivity()V

    .line 146
    return-void
.end method

.method private createTouchListener()Landroid/view/View$OnTouchListener;
    .locals 1

    .prologue
    .line 149
    new-instance v0, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreenActivity$3;

    invoke-direct {v0, p0}, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreenActivity$3;-><init>(Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreenActivity;)V

    return-object v0
.end method

.method private finishActivity()V
    .locals 2

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreenActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 174
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreenActivity;->interstitialView:Lcom/smartadserver/android/library/SASBannerView;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreenActivity;->interstitialView:Lcom/smartadserver/android/library/SASBannerView;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/SASBannerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 176
    if-eqz v0, :cond_0

    .line 177
    iget-object v1, p0, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreenActivity;->interstitialView:Lcom/smartadserver/android/library/SASBannerView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 180
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 181
    const-string v1, "SMART_AD_SERVER_FINISH"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    invoke-virtual {p0, v0}, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreenActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 183
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreenActivity;->finish()V

    .line 185
    :cond_1
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 169
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreenActivity;->closeAd()V

    .line 170
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 46
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    invoke-virtual {p0, v3}, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreenActivity;->requestWindowFeature(I)Z

    .line 48
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreenActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 49
    if-eqz v0, :cond_1

    .line 50
    const-string v1, "viewHashCode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreen;->getCachedView(I)Lcom/smartadserver/android/library/SASBannerView;

    move-result-object v1

    iput-object v1, p0, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreenActivity;->interstitialView:Lcom/smartadserver/android/library/SASBannerView;

    .line 51
    const-string v1, "orientation"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 52
    if-ne v1, v3, :cond_2

    .line 53
    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreenActivity;->setRequestedOrientation(I)V

    .line 57
    :cond_0
    :goto_0
    const-string v1, "width"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreenActivity;->width:I

    .line 58
    const-string v1, "height"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreenActivity;->height:I

    .line 61
    :cond_1
    return-void

    .line 54
    :cond_2
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 55
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreenActivity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi",
            "RtlHardcoded"
        }
    .end annotation

    .prologue
    const/high16 v7, 0x42180000    # 38.0f

    const/4 v2, 0x1

    const/4 v6, -0x1

    .line 67
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 69
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreenActivity;->interstitialView:Lcom/smartadserver/android/library/SASBannerView;

    if-eqz v0, :cond_3

    .line 71
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreenActivity;->interstitialView:Lcom/smartadserver/android/library/SASBannerView;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/SASBannerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 72
    if-eqz v0, :cond_0

    .line 73
    iget-object v1, p0, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreenActivity;->interstitialView:Lcom/smartadserver/android/library/SASBannerView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreenActivity;->interstitialView:Lcom/smartadserver/android/library/SASBannerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/SASBannerView;->setVisibility(I)V

    .line 77
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreenActivity;->interstitialView:Lcom/smartadserver/android/library/SASBannerView;

    invoke-virtual {v0, v2}, Lcom/smartadserver/android/library/SASBannerView;->setEnabled(Z)V

    .line 78
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreenActivity;->interstitialView:Lcom/smartadserver/android/library/SASBannerView;

    invoke-virtual {v0, v2}, Lcom/smartadserver/android/library/SASBannerView;->setClickable(Z)V

    .line 79
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 80
    new-instance v0, Lcom/intentsoftware/addapptr/fullscreens/a;

    invoke-direct {v0, v2}, Lcom/intentsoftware/addapptr/fullscreens/a;-><init>(Z)V

    .line 81
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 82
    new-instance v0, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreenActivity$1;

    invoke-direct {v0, p0}, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreenActivity$1;-><init>(Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreenActivity;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 90
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreenActivity;->createTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 92
    iget-object v2, p0, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreenActivity;->interstitialView:Lcom/smartadserver/android/library/SASBannerView;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0, v3}, Lcom/smartadserver/android/library/SASBannerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreenActivity;->interstitialView:Lcom/smartadserver/android/library/SASBannerView;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/SASBannerView;->o()V

    .line 95
    iget-object v0, p0, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreenActivity;->interstitialView:Lcom/smartadserver/android/library/SASBannerView;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/SASBannerView;->getCurrentAdElement()Lcom/smartadserver/android/library/model/SASAdElement;

    move-result-object v0

    .line 96
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/smartadserver/android/library/model/SASAdElement;->getAdDuration()I

    move-result v2

    if-lez v2, :cond_1

    .line 97
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreenActivity;->closeAdHandler:Landroid/os/Handler;

    .line 98
    new-instance v2, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreenActivity$2;

    invoke-direct {v2, p0}, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreenActivity$2;-><init>(Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreenActivity;)V

    iput-object v2, p0, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreenActivity;->closeAdRunnable:Ljava/lang/Runnable;

    .line 104
    iget-object v2, p0, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreenActivity;->closeAdHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreenActivity;->closeAdRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/model/SASAdElement;->getAdDuration()I

    move-result v0

    int-to-long v4, v0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 107
    :cond_1
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 109
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreenActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 110
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    mul-float v4, v7, v0

    float-to-int v4, v4

    mul-float/2addr v0, v7

    float-to-int v0, v0

    invoke-direct {v3, v4, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 111
    const/16 v0, 0x33

    iput v0, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 114
    iget v0, p0, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreenActivity;->width:I

    if-lez v0, :cond_2

    iget v0, p0, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreenActivity;->height:I

    if-lez v0, :cond_2

    .line 115
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v4, p0, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreenActivity;->width:I

    iget v5, p0, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreenActivity;->height:I

    invoke-direct {v0, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 119
    :goto_0
    const/16 v4, 0x11

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 121
    iget-object v4, p0, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreenActivity;->interstitialView:Lcom/smartadserver/android/library/SASBannerView;

    invoke-virtual {v2, v4, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    invoke-virtual {v2, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    const/high16 v0, -0x1000000

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 125
    invoke-virtual {p0, v2}, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreenActivity;->setContentView(Landroid/view/View;)V

    .line 133
    :goto_1
    return-void

    .line 117
    :cond_2
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    goto :goto_0

    .line 128
    :cond_3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 129
    const-string v1, "SMART_AD_SERVER_FAILED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    invoke-virtual {p0, v0}, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreenActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 131
    invoke-direct {p0}, Lcom/intentsoftware/addapptr/fullscreens/SmartAdServerFullscreenActivity;->finishActivity()V

    goto :goto_1
.end method
