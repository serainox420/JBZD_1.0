.class public Lcom/apprupt/sdk/CvInterstitialActivity;
.super Lcom/apprupt/sdk/CvBaseActivityImpl;
.source "CvInterstitialActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apprupt/sdk/CvInterstitialActivity$DummyListener;
    }
.end annotation


# static fields
.field private static final e:Lcom/apprupt/sdk/Logger$log;

.field private static final l:Lcom/apprupt/sdk/Logger$log;

.field private static s:I

.field private static final t:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/apprupt/sdk/CvInterstitialAdWrapper;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private f:Ljava/util/Timer;

.field private g:I

.field private h:Lcom/apprupt/sdk/CvCloseButton;

.field private i:Ljava/lang/Runnable;

.field private j:Lcom/apprupt/sdk/CvSDK$CvInterstitialListener;

.field private k:Landroid/widget/RelativeLayout;

.field private m:J

.field private n:J

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-string v0, "Lifecycle.Interstitial"

    invoke-static {v0}, Lcom/apprupt/sdk/Logger;->a(Ljava/lang/String;)Lcom/apprupt/sdk/Logger$log;

    move-result-object v0

    sput-object v0, Lcom/apprupt/sdk/CvInterstitialActivity;->e:Lcom/apprupt/sdk/Logger$log;

    .line 30
    const-string v0, "INTERSTITIAL"

    invoke-static {v0}, Lcom/apprupt/sdk/Logger;->a(Ljava/lang/String;)Lcom/apprupt/sdk/Logger$log;

    move-result-object v0

    sput-object v0, Lcom/apprupt/sdk/CvInterstitialActivity;->l:Lcom/apprupt/sdk/Logger$log;

    .line 47
    const/4 v0, 0x0

    sput v0, Lcom/apprupt/sdk/CvInterstitialActivity;->s:I

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/apprupt/sdk/CvInterstitialActivity;->t:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 20
    invoke-direct {p0}, Lcom/apprupt/sdk/CvBaseActivityImpl;-><init>()V

    .line 24
    iput-object v1, p0, Lcom/apprupt/sdk/CvInterstitialActivity;->f:Ljava/util/Timer;

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Lcom/apprupt/sdk/CvInterstitialActivity;->g:I

    .line 26
    iput-object v1, p0, Lcom/apprupt/sdk/CvInterstitialActivity;->h:Lcom/apprupt/sdk/CvCloseButton;

    .line 27
    iput-object v1, p0, Lcom/apprupt/sdk/CvInterstitialActivity;->i:Ljava/lang/Runnable;

    .line 28
    iput-object v1, p0, Lcom/apprupt/sdk/CvInterstitialActivity;->j:Lcom/apprupt/sdk/CvSDK$CvInterstitialListener;

    .line 31
    iput-wide v4, p0, Lcom/apprupt/sdk/CvInterstitialActivity;->m:J

    .line 32
    iput-wide v4, p0, Lcom/apprupt/sdk/CvInterstitialActivity;->n:J

    .line 33
    iput-boolean v2, p0, Lcom/apprupt/sdk/CvInterstitialActivity;->o:Z

    .line 34
    iput-boolean v2, p0, Lcom/apprupt/sdk/CvInterstitialActivity;->p:Z

    .line 35
    iput-boolean v2, p0, Lcom/apprupt/sdk/CvInterstitialActivity;->q:Z

    .line 37
    new-instance v0, Lcom/apprupt/sdk/CvInterstitialActivity$1;

    invoke-direct {v0, p0}, Lcom/apprupt/sdk/CvInterstitialActivity$1;-><init>(Lcom/apprupt/sdk/CvInterstitialActivity;)V

    iput-object v0, p0, Lcom/apprupt/sdk/CvInterstitialActivity;->r:Ljava/lang/Runnable;

    return-void
.end method

.method static a(Lcom/apprupt/sdk/CvSDK$CvInterstitialListener;)Lcom/apprupt/sdk/CvSDK$CvInterstitialListener;
    .locals 1

    .prologue
    .line 241
    if-eqz p0, :cond_0

    .line 242
    :goto_0
    return-object p0

    :cond_0
    new-instance p0, Lcom/apprupt/sdk/CvInterstitialActivity$DummyListener;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/apprupt/sdk/CvInterstitialActivity$DummyListener;-><init>(Lcom/apprupt/sdk/CvInterstitialActivity$1;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/apprupt/sdk/CvInterstitialActivity;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/apprupt/sdk/CvInterstitialActivity;->i:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic a(Lcom/apprupt/sdk/CvInterstitialActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lcom/apprupt/sdk/CvInterstitialActivity;->i:Ljava/lang/Runnable;

    return-object p1
.end method

.method static a(Landroid/content/Context;Lcom/apprupt/sdk/CvInterstitialAdWrapper;)V
    .locals 2

    .prologue
    .line 51
    new-instance v0, Lcom/apprupt/sdk/CvInterstitialActivity$2;

    invoke-direct {v0, p0, p1}, Lcom/apprupt/sdk/CvInterstitialActivity$2;-><init>(Landroid/content/Context;Lcom/apprupt/sdk/CvInterstitialAdWrapper;)V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/apprupt/sdk/CvViewHelper;->a(Ljava/lang/Runnable;Z)V

    .line 71
    return-void
.end method

.method static synthetic b(Lcom/apprupt/sdk/CvInterstitialActivity;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/apprupt/sdk/CvInterstitialActivity;->r:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic c(Lcom/apprupt/sdk/CvInterstitialActivity;)Lcom/apprupt/sdk/CvSDK$CvInterstitialListener;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/apprupt/sdk/CvInterstitialActivity;->j:Lcom/apprupt/sdk/CvSDK$CvInterstitialListener;

    return-object v0
.end method

.method static synthetic e()Lcom/apprupt/sdk/Logger$log;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/apprupt/sdk/CvInterstitialActivity;->l:Lcom/apprupt/sdk/Logger$log;

    return-object v0
.end method

.method static synthetic f()I
    .locals 1

    .prologue
    .line 20
    sget v0, Lcom/apprupt/sdk/CvInterstitialActivity;->s:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/apprupt/sdk/CvInterstitialActivity;->s:I

    return v0
.end method

.method static synthetic g()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/apprupt/sdk/CvInterstitialActivity;->t:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic h()I
    .locals 1

    .prologue
    .line 20
    sget v0, Lcom/apprupt/sdk/CvInterstitialActivity;->s:I

    return v0
.end method

.method static synthetic i()Lcom/apprupt/sdk/Logger$log;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/apprupt/sdk/CvInterstitialActivity;->e:Lcom/apprupt/sdk/Logger$log;

    return-object v0
.end method


# virtual methods
.method a(I)V
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/apprupt/sdk/CvInterstitialActivity;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 194
    return-void
.end method

.method a(Z)V
    .locals 2

    .prologue
    .line 189
    iget-object v1, p0, Lcom/apprupt/sdk/CvInterstitialActivity;->h:Lcom/apprupt/sdk/CvCloseButton;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/apprupt/sdk/CvCloseButton;->setVisibility(I)V

    .line 190
    return-void

    .line 189
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public d()J
    .locals 4

    .prologue
    .line 197
    iget-boolean v0, p0, Lcom/apprupt/sdk/CvInterstitialActivity;->o:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/apprupt/sdk/CvInterstitialActivity;->n:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/apprupt/sdk/CvInterstitialActivity;->m:J

    add-long/2addr v0, v2

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/apprupt/sdk/CvInterstitialActivity;->m:J

    goto :goto_0
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 218
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/apprupt/sdk/CvInterstitialActivity;->q:Z

    .line 219
    invoke-super {p0}, Lcom/apprupt/sdk/CvBaseActivityImpl;->finish()V

    .line 220
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/apprupt/sdk/CvInterstitialActivity;->r:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 203
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/high16 v6, 0x1000000

    const/4 v0, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 75
    invoke-super {p0, p1}, Lcom/apprupt/sdk/CvBaseActivityImpl;->onCreate(Landroid/os/Bundle;)V

    .line 76
    sget-object v3, Lcom/apprupt/sdk/CvInterstitialActivity;->e:Lcom/apprupt/sdk/Logger$log;

    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "onCreate..."

    aput-object v5, v4, v1

    invoke-interface {v3, v4}, Lcom/apprupt/sdk/Logger$log;->b([Ljava/lang/Object;)V

    .line 77
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/apprupt/sdk/CvInterstitialActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v6, v6}, Landroid/view/Window;->setFlags(II)V

    .line 84
    :cond_0
    invoke-virtual {p0}, Lcom/apprupt/sdk/CvInterstitialActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 85
    if-eqz v3, :cond_7

    .line 86
    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 87
    if-eqz v3, :cond_7

    .line 88
    const-string v4, "interstitialId"

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    move v3, v0

    .line 91
    :goto_0
    const/4 v0, 0x0

    .line 92
    if-lez v3, :cond_6

    sget-object v4, Lcom/apprupt/sdk/CvInterstitialActivity;->t:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 93
    sget-object v0, Lcom/apprupt/sdk/CvInterstitialActivity;->t:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apprupt/sdk/CvInterstitialAdWrapper;

    move-object v3, v0

    .line 95
    :goto_1
    if-nez v3, :cond_1

    .line 96
    sget-object v0, Lcom/apprupt/sdk/CvInterstitialActivity;->e:Lcom/apprupt/sdk/Logger$log;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Cannot find intestitial data.. quiting"

    aput-object v3, v2, v1

    invoke-interface {v0, v2}, Lcom/apprupt/sdk/Logger$log;->d([Ljava/lang/Object;)V

    .line 97
    invoke-virtual {p0}, Lcom/apprupt/sdk/CvInterstitialActivity;->finish()V

    .line 186
    :goto_2
    return-void

    .line 99
    :cond_1
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/apprupt/sdk/CvInterstitialActivity;->k:Landroid/widget/RelativeLayout;

    .line 100
    iget-object v0, p0, Lcom/apprupt/sdk/CvInterstitialActivity;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/apprupt/sdk/CvInterstitialActivity;->setContentView(Landroid/view/View;)V

    .line 102
    invoke-virtual {v3}, Lcom/apprupt/sdk/CvInterstitialAdWrapper;->m()Lcom/apprupt/sdk/CvMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apprupt/sdk/CvMediator;->a()Lcom/apprupt/sdk/CvContentOptions;

    move-result-object v0

    iget-object v0, v0, Lcom/apprupt/sdk/CvContentOptions;->i:Lcom/apprupt/sdk/CvSDK$CvInterstitialListener;

    invoke-static {v0}, Lcom/apprupt/sdk/CvInterstitialActivity;->a(Lcom/apprupt/sdk/CvSDK$CvInterstitialListener;)Lcom/apprupt/sdk/CvSDK$CvInterstitialListener;

    move-result-object v0

    iput-object v0, p0, Lcom/apprupt/sdk/CvInterstitialActivity;->j:Lcom/apprupt/sdk/CvSDK$CvInterstitialListener;

    .line 103
    invoke-virtual {v3}, Lcom/apprupt/sdk/CvInterstitialAdWrapper;->m()Lcom/apprupt/sdk/CvMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apprupt/sdk/CvMediator;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/apprupt/sdk/CvInterstitialActivity;->g:I

    .line 104
    invoke-virtual {v3}, Lcom/apprupt/sdk/CvInterstitialAdWrapper;->d()Landroid/view/View;

    move-result-object v4

    .line 105
    const v5, 0xf42bb

    .line 106
    invoke-virtual {v4, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 107
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/apprupt/sdk/CvContext;

    invoke-virtual {v0, p0}, Lcom/apprupt/sdk/CvContext;->a(Landroid/content/Context;)V

    .line 108
    invoke-virtual {v4, v5}, Landroid/view/View;->setId(I)V

    .line 109
    iget-object v0, p0, Lcom/apprupt/sdk/CvInterstitialActivity;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 111
    invoke-virtual {v3}, Lcom/apprupt/sdk/CvInterstitialAdWrapper;->p()Lcom/apprupt/sdk/adview/ExpandProperties;

    move-result-object v0

    .line 112
    invoke-virtual {v3}, Lcom/apprupt/sdk/CvInterstitialAdWrapper;->r()Ljava/lang/Runnable;

    move-result-object v4

    iput-object v4, p0, Lcom/apprupt/sdk/CvInterstitialActivity;->i:Ljava/lang/Runnable;

    .line 113
    new-instance v4, Lcom/apprupt/sdk/CvCloseButton;

    invoke-direct {v4, p0}, Lcom/apprupt/sdk/CvCloseButton;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/apprupt/sdk/CvInterstitialActivity;->h:Lcom/apprupt/sdk/CvCloseButton;

    .line 114
    iget-object v4, p0, Lcom/apprupt/sdk/CvInterstitialActivity;->h:Lcom/apprupt/sdk/CvCloseButton;

    new-instance v6, Lcom/apprupt/sdk/CvInterstitialActivity$3;

    invoke-direct {v6, p0}, Lcom/apprupt/sdk/CvInterstitialActivity$3;-><init>(Lcom/apprupt/sdk/CvInterstitialActivity;)V

    invoke-virtual {v4, v6}, Lcom/apprupt/sdk/CvCloseButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    iget-object v4, p0, Lcom/apprupt/sdk/CvInterstitialActivity;->h:Lcom/apprupt/sdk/CvCloseButton;

    invoke-virtual {v0}, Lcom/apprupt/sdk/adview/ExpandProperties;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x8

    :goto_3
    invoke-virtual {v4, v0}, Lcom/apprupt/sdk/CvCloseButton;->setVisibility(I)V

    .line 121
    sget v0, Lcom/apprupt/sdk/CvCloseButton;->a:F

    invoke-static {v0}, Lcom/apprupt/sdk/CvViewHelper;->b(F)I

    move-result v0

    .line 122
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 123
    const/4 v6, 0x2

    invoke-virtual {v4, v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 124
    invoke-virtual {v4, v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 125
    neg-int v5, v0

    neg-int v0, v0

    invoke-virtual {v4, v5, v1, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 126
    iget-object v0, p0, Lcom/apprupt/sdk/CvInterstitialActivity;->h:Lcom/apprupt/sdk/CvCloseButton;

    invoke-virtual {v0, v4}, Lcom/apprupt/sdk/CvCloseButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    iget-object v0, p0, Lcom/apprupt/sdk/CvInterstitialActivity;->k:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/apprupt/sdk/CvInterstitialActivity;->h:Lcom/apprupt/sdk/CvCloseButton;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 129
    invoke-virtual {v3, p0}, Lcom/apprupt/sdk/CvInterstitialAdWrapper;->a(Lcom/apprupt/sdk/CvInterstitialActivity;)V

    .line 130
    new-instance v0, Lcom/apprupt/sdk/CvInterstitialActivity$4;

    invoke-direct {v0, p0}, Lcom/apprupt/sdk/CvInterstitialActivity$4;-><init>(Lcom/apprupt/sdk/CvInterstitialActivity;)V

    invoke-virtual {v3, v0}, Lcom/apprupt/sdk/CvInterstitialAdWrapper;->a(Lcom/apprupt/sdk/mediation/InterstitialAdWrapper$Listener;)V

    .line 175
    invoke-virtual {v3}, Lcom/apprupt/sdk/CvInterstitialAdWrapper;->q()Lcom/apprupt/sdk/adview/OrientationProperties;

    move-result-object v0

    .line 176
    invoke-virtual {v0}, Lcom/apprupt/sdk/adview/OrientationProperties;->b()Lcom/apprupt/sdk/adview/Orientation;

    move-result-object v3

    .line 177
    sget-object v4, Lcom/apprupt/sdk/adview/Orientation;->NONE:Lcom/apprupt/sdk/adview/Orientation;

    if-eq v3, v4, :cond_5

    .line 178
    sget-object v0, Lcom/apprupt/sdk/adview/Orientation;->LANDSCAPE:Lcom/apprupt/sdk/adview/Orientation;

    if-ne v3, v0, :cond_4

    :goto_4
    invoke-virtual {p0, v1}, Lcom/apprupt/sdk/CvInterstitialActivity;->setRequestedOrientation(I)V

    .line 183
    :cond_2
    :goto_5
    iget-object v0, p0, Lcom/apprupt/sdk/CvInterstitialActivity;->j:Lcom/apprupt/sdk/CvSDK$CvInterstitialListener;

    iget v1, p0, Lcom/apprupt/sdk/CvInterstitialActivity;->g:I

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/CvSDK$CvInterstitialListener;->cvInterstitialWillAppear(I)V

    goto/16 :goto_2

    :cond_3
    move v0, v1

    .line 120
    goto :goto_3

    :cond_4
    move v1, v2

    .line 178
    goto :goto_4

    .line 179
    :cond_5
    invoke-virtual {v0}, Lcom/apprupt/sdk/adview/OrientationProperties;->c()Z

    move-result v0

    if-nez v0, :cond_2

    .line 180
    invoke-virtual {p0}, Lcom/apprupt/sdk/CvInterstitialActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0, v0}, Lcom/apprupt/sdk/CvInterstitialActivity;->setRequestedOrientation(I)V

    goto :goto_5

    :cond_6
    move-object v3, v0

    goto/16 :goto_1

    :cond_7
    move v3, v0

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 234
    invoke-super {p0}, Lcom/apprupt/sdk/CvBaseActivityImpl;->onDestroy()V

    .line 235
    iget-boolean v0, p0, Lcom/apprupt/sdk/CvInterstitialActivity;->q:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/apprupt/sdk/CvInterstitialActivity;->p:Z

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/apprupt/sdk/CvInterstitialActivity;->j:Lcom/apprupt/sdk/CvSDK$CvInterstitialListener;

    iget v1, p0, Lcom/apprupt/sdk/CvInterstitialActivity;->g:I

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/CvSDK$CvInterstitialListener;->cvInterstitialDidDisappear(I)V

    .line 238
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 4

    .prologue
    .line 224
    invoke-super {p0}, Lcom/apprupt/sdk/CvBaseActivityImpl;->onPause()V

    .line 225
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/apprupt/sdk/CvInterstitialActivity;->n:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/apprupt/sdk/CvInterstitialActivity;->m:J

    .line 226
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/apprupt/sdk/CvInterstitialActivity;->o:Z

    .line 227
    iget-boolean v0, p0, Lcom/apprupt/sdk/CvInterstitialActivity;->q:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/apprupt/sdk/CvInterstitialActivity;->p:Z

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/apprupt/sdk/CvInterstitialActivity;->j:Lcom/apprupt/sdk/CvSDK$CvInterstitialListener;

    iget v1, p0, Lcom/apprupt/sdk/CvInterstitialActivity;->g:I

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/CvSDK$CvInterstitialListener;->cvInterstitialWillDisappear(I)V

    .line 230
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 207
    invoke-super {p0}, Lcom/apprupt/sdk/CvBaseActivityImpl;->onResume()V

    .line 208
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/apprupt/sdk/CvInterstitialActivity;->n:J

    .line 209
    iput-boolean v2, p0, Lcom/apprupt/sdk/CvInterstitialActivity;->o:Z

    .line 210
    iget-boolean v0, p0, Lcom/apprupt/sdk/CvInterstitialActivity;->p:Z

    if-nez v0, :cond_0

    .line 211
    iput-boolean v2, p0, Lcom/apprupt/sdk/CvInterstitialActivity;->p:Z

    .line 212
    iget-object v0, p0, Lcom/apprupt/sdk/CvInterstitialActivity;->j:Lcom/apprupt/sdk/CvSDK$CvInterstitialListener;

    iget v1, p0, Lcom/apprupt/sdk/CvInterstitialActivity;->g:I

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/CvSDK$CvInterstitialListener;->cvInterstitialDidAppear(I)V

    .line 214
    :cond_0
    return-void
.end method
