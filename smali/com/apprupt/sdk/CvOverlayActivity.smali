.class public Lcom/apprupt/sdk/CvOverlayActivity;
.super Landroid/app/Activity;
.source "CvOverlayActivity.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SetJavaScriptEnabled"
    }
.end annotation


# instance fields
.field a:Lcom/apprupt/sdk/CvLauncher;

.field b:Landroid/webkit/WebView;

.field private c:Z

.field private d:Z

.field private e:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 39
    iput-boolean v0, p0, Lcom/apprupt/sdk/CvOverlayActivity;->c:Z

    .line 40
    iput-boolean v0, p0, Lcom/apprupt/sdk/CvOverlayActivity;->d:Z

    .line 41
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/apprupt/sdk/CvOverlayActivity;->e:J

    return-void
.end method

.method static synthetic a(Lcom/apprupt/sdk/CvOverlayActivity;Z)Z
    .locals 0

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/apprupt/sdk/CvOverlayActivity;->d:Z

    return p1
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/apprupt/sdk/CvOverlayActivity;->finish()V

    .line 161
    return-void
.end method

.method public onBackPressed()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x1388

    const-wide/16 v8, 0x0

    .line 135
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 136
    iget-boolean v2, p0, Lcom/apprupt/sdk/CvOverlayActivity;->d:Z

    if-nez v2, :cond_0

    iget-wide v2, p0, Lcom/apprupt/sdk/CvOverlayActivity;->e:J

    cmp-long v2, v2, v8

    if-lez v2, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/apprupt/sdk/CvOverlayActivity;->e:J

    sub-long/2addr v2, v4

    cmp-long v2, v2, v10

    if-lez v2, :cond_1

    .line 137
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 141
    :goto_0
    return-void

    .line 139
    :cond_1
    const-string v2, "OVERLAY_PAGE"

    invoke-static {v2}, Lcom/apprupt/sdk/Logger;->a(Ljava/lang/String;)Lcom/apprupt/sdk/Logger$log;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "Back button blocked"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-wide v6, p0, Lcom/apprupt/sdk/CvOverlayActivity;->e:J

    cmp-long v5, v6, v8

    if-lez v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " (time left: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/apprupt/sdk/CvOverlayActivity;->e:J

    sub-long/2addr v0, v6

    sub-long v0, v10, v0

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    aput-object v0, v3, v4

    invoke-interface {v2, v3}, Lcom/apprupt/sdk/Logger$log;->d([Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const-string v0, ""

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const/16 v7, 0x11

    const/4 v4, 0x1

    const/4 v6, -0x2

    const/4 v3, 0x0

    const/4 v5, -0x1

    .line 48
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/apprupt/sdk/CvOverlayActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x1000000

    const/high16 v2, 0x1000000

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFlags(II)V

    .line 56
    :cond_0
    new-instance v0, Lcom/apprupt/sdk/CvLauncher;

    invoke-direct {v0, p0}, Lcom/apprupt/sdk/CvLauncher;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/apprupt/sdk/CvOverlayActivity;->a:Lcom/apprupt/sdk/CvLauncher;

    .line 57
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 58
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    :try_start_0
    sget-object v0, Lcom/apprupt/sdk/CvOverlayLoader;->a:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/apprupt/sdk/CvOverlayActivity;->b:Landroid/webkit/WebView;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    iget-object v0, p0, Lcom/apprupt/sdk/CvOverlayActivity;->b:Landroid/webkit/WebView;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    iget-object v0, p0, Lcom/apprupt/sdk/CvOverlayActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 68
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 69
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 71
    const/16 v0, 0x96

    invoke-static {v0, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 72
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 74
    new-instance v0, Landroid/widget/ProgressBar;

    const/4 v3, 0x0

    const v4, 0x1010288

    invoke-direct {v0, p0, v3, v4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 75
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 76
    iput v7, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 77
    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 83
    new-instance v0, Lcom/apprupt/sdk/CvOverlayActivity$1;

    invoke-direct {v0, p0, v2, v1}, Lcom/apprupt/sdk/CvOverlayActivity$1;-><init>(Lcom/apprupt/sdk/CvOverlayActivity;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;)V

    .line 121
    iget-object v3, p0, Lcom/apprupt/sdk/CvOverlayActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v3, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 122
    iget-object v0, p0, Lcom/apprupt/sdk/CvOverlayActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 123
    if-eqz v0, :cond_1

    instance-of v3, v0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    .line 124
    check-cast v0, Landroid/view/ViewGroup;

    .line 125
    iget-object v3, p0, Lcom/apprupt/sdk/CvOverlayActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/apprupt/sdk/CvOverlayActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 129
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 130
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v0}, Lcom/apprupt/sdk/CvOverlayActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    :goto_0
    return-void

    .line 61
    :catch_0
    move-exception v0

    .line 62
    invoke-virtual {p0}, Lcom/apprupt/sdk/CvOverlayActivity;->a()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 144
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 145
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/apprupt/sdk/CvOverlayActivity;->c:Z

    .line 146
    invoke-static {}, Lcom/apprupt/sdk/CvAdColony;->a()V

    .line 147
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 150
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 151
    invoke-static {p0}, Lcom/apprupt/sdk/CvAdColony;->a(Landroid/app/Activity;)V

    .line 152
    iget-boolean v0, p0, Lcom/apprupt/sdk/CvOverlayActivity;->c:Z

    if-eqz v0, :cond_1

    .line 153
    invoke-virtual {p0}, Lcom/apprupt/sdk/CvOverlayActivity;->finish()V

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    iget-wide v0, p0, Lcom/apprupt/sdk/CvOverlayActivity;->e:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 155
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/apprupt/sdk/CvOverlayActivity;->e:J

    goto :goto_0
.end method
