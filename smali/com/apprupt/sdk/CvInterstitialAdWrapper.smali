.class public Lcom/apprupt/sdk/CvInterstitialAdWrapper;
.super Lcom/apprupt/sdk/CvAdWrapper;
.source "CvInterstitialAdWrapper.java"

# interfaces
.implements Lcom/apprupt/sdk/mediation/InterstitialAdWrapper;


# instance fields
.field private final b:Lcom/apprupt/sdk/Logger$log;

.field private volatile c:Lcom/apprupt/sdk/mediation/InterstitialAdWrapper$Listener;

.field private volatile d:Lcom/apprupt/sdk/CvInterstitialActivity;

.field private e:Lcom/apprupt/sdk/MRAIDView;

.field private f:Lcom/apprupt/sdk/mediation/ValueExchangeCompletion;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/mediation/Adapter;Lcom/apprupt/sdk/CvMediator;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/apprupt/sdk/CvAdWrapper;-><init>(Lcom/apprupt/sdk/mediation/Adapter;Lcom/apprupt/sdk/CvMediator;)V

    .line 15
    const-string v0, "Lifecycle.InterstitialWrapper"

    invoke-static {v0}, Lcom/apprupt/sdk/Logger;->a(Ljava/lang/String;)Lcom/apprupt/sdk/Logger$log;

    move-result-object v0

    iput-object v0, p0, Lcom/apprupt/sdk/CvInterstitialAdWrapper;->b:Lcom/apprupt/sdk/Logger$log;

    .line 16
    iput-object v1, p0, Lcom/apprupt/sdk/CvInterstitialAdWrapper;->c:Lcom/apprupt/sdk/mediation/InterstitialAdWrapper$Listener;

    .line 17
    iput-object v1, p0, Lcom/apprupt/sdk/CvInterstitialAdWrapper;->d:Lcom/apprupt/sdk/CvInterstitialActivity;

    .line 18
    iput-object v1, p0, Lcom/apprupt/sdk/CvInterstitialAdWrapper;->e:Lcom/apprupt/sdk/MRAIDView;

    .line 23
    invoke-virtual {p2}, Lcom/apprupt/sdk/CvMediator;->e()Lcom/apprupt/sdk/mediation/ValueExchangeCompletion;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/apprupt/sdk/CvInterstitialAdWrapper;->a(Lcom/apprupt/sdk/mediation/ValueExchangeCompletion;)V

    .line 24
    return-void
.end method

.method static synthetic a(Lcom/apprupt/sdk/CvInterstitialAdWrapper;Lcom/apprupt/sdk/MRAIDView;)Lcom/apprupt/sdk/MRAIDView;
    .locals 0

    .prologue
    .line 13
    iput-object p1, p0, Lcom/apprupt/sdk/CvInterstitialAdWrapper;->e:Lcom/apprupt/sdk/MRAIDView;

    return-object p1
.end method

.method static synthetic a(Lcom/apprupt/sdk/CvInterstitialAdWrapper;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/apprupt/sdk/CvInterstitialAdWrapper;->t()V

    return-void
.end method

.method static synthetic a(Lcom/apprupt/sdk/CvInterstitialAdWrapper;Lcom/apprupt/sdk/mediation/ValueExchangeCompletion;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/apprupt/sdk/CvInterstitialAdWrapper;->a(Lcom/apprupt/sdk/mediation/ValueExchangeCompletion;)V

    return-void
.end method

.method private a(Lcom/apprupt/sdk/mediation/ValueExchangeCompletion;)V
    .locals 1

    .prologue
    .line 27
    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/apprupt/sdk/CvInterstitialAdWrapper;->f:Lcom/apprupt/sdk/mediation/ValueExchangeCompletion;

    .line 34
    :goto_0
    return-void

    .line 28
    :cond_0
    new-instance v0, Lcom/apprupt/sdk/CvInterstitialAdWrapper$1;

    invoke-direct {v0, p0}, Lcom/apprupt/sdk/CvInterstitialAdWrapper$1;-><init>(Lcom/apprupt/sdk/CvInterstitialAdWrapper;)V

    iput-object v0, p0, Lcom/apprupt/sdk/CvInterstitialAdWrapper;->f:Lcom/apprupt/sdk/mediation/ValueExchangeCompletion;

    goto :goto_0
.end method

.method static synthetic b(Lcom/apprupt/sdk/CvInterstitialAdWrapper;)Lcom/apprupt/sdk/mediation/ValueExchangeCompletion;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/apprupt/sdk/CvInterstitialAdWrapper;->f:Lcom/apprupt/sdk/mediation/ValueExchangeCompletion;

    return-object v0
.end method

.method private t()V
    .locals 4

    .prologue
    .line 86
    iget-object v0, p0, Lcom/apprupt/sdk/CvInterstitialAdWrapper;->b:Lcom/apprupt/sdk/Logger$log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Present interstitial"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/Logger$log;->b([Ljava/lang/Object;)V

    .line 87
    new-instance v0, Lcom/apprupt/sdk/CvInterstitialAdWrapper$3;

    invoke-direct {v0, p0}, Lcom/apprupt/sdk/CvInterstitialAdWrapper$3;-><init>(Lcom/apprupt/sdk/CvInterstitialAdWrapper;)V

    invoke-static {v0}, Lcom/apprupt/sdk/CvViewHelper;->a(Ljava/lang/Runnable;)V

    .line 94
    return-void
.end method


# virtual methods
.method public a()Lcom/apprupt/sdk/mediation/InterstitialAdWrapper$Listener;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/apprupt/sdk/CvInterstitialAdWrapper;->c:Lcom/apprupt/sdk/mediation/InterstitialAdWrapper$Listener;

    return-object v0
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 136
    :try_start_0
    iget-object v0, p0, Lcom/apprupt/sdk/CvInterstitialAdWrapper;->d:Lcom/apprupt/sdk/CvInterstitialActivity;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/apprupt/sdk/CvInterstitialAdWrapper;->d:Lcom/apprupt/sdk/CvInterstitialActivity;

    invoke-virtual {v0, p1}, Lcom/apprupt/sdk/CvInterstitialActivity;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 139
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method a(Lcom/apprupt/sdk/CvInterstitialActivity;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/apprupt/sdk/CvInterstitialAdWrapper;->d:Lcom/apprupt/sdk/CvInterstitialActivity;

    .line 38
    return-void
.end method

.method public a(Lcom/apprupt/sdk/mediation/InterstitialAdWrapper$Listener;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/apprupt/sdk/CvInterstitialAdWrapper;->c:Lcom/apprupt/sdk/mediation/InterstitialAdWrapper$Listener;

    .line 61
    return-void
.end method

.method public a(Lcom/apprupt/sdk/mediation/Mediator;)V
    .locals 1

    .prologue
    .line 146
    invoke-super {p0, p1}, Lcom/apprupt/sdk/CvAdWrapper;->a(Lcom/apprupt/sdk/mediation/Mediator;)V

    .line 147
    invoke-virtual {p0}, Lcom/apprupt/sdk/CvInterstitialAdWrapper;->m()Lcom/apprupt/sdk/CvMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apprupt/sdk/CvMediator;->e()Lcom/apprupt/sdk/mediation/ValueExchangeCompletion;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/apprupt/sdk/CvInterstitialAdWrapper;->a(Lcom/apprupt/sdk/mediation/ValueExchangeCompletion;)V

    .line 148
    return-void
.end method

.method a(Lcom/apprupt/sdk/mediation/Size;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 47
    invoke-virtual {p0}, Lcom/apprupt/sdk/CvInterstitialAdWrapper;->m()Lcom/apprupt/sdk/CvMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apprupt/sdk/CvMediator;->b()Landroid/content/Context;

    move-result-object v0

    .line 50
    const/4 v1, 0x1

    invoke-virtual {p1, v0, v2, v2, v1}, Lcom/apprupt/sdk/mediation/Size;->a(Landroid/content/Context;IIZ)Lcom/apprupt/sdk/mediation/Size$Computed;

    move-result-object v0

    .line 51
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, v0, Lcom/apprupt/sdk/mediation/Size$Computed;->a:I

    iget v0, v0, Lcom/apprupt/sdk/mediation/Size$Computed;->b:I

    invoke-direct {v1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 52
    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 53
    const/high16 v0, 0x42480000    # 50.0f

    invoke-static {v0}, Lcom/apprupt/sdk/CvViewHelper;->b(F)I

    move-result v0

    .line 54
    iget-object v2, p0, Lcom/apprupt/sdk/CvInterstitialAdWrapper;->e:Lcom/apprupt/sdk/MRAIDView;

    invoke-virtual {v2, v1}, Lcom/apprupt/sdk/MRAIDView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    iget-object v1, p0, Lcom/apprupt/sdk/CvInterstitialAdWrapper;->e:Lcom/apprupt/sdk/MRAIDView;

    invoke-virtual {v1, v0}, Lcom/apprupt/sdk/MRAIDView;->setMinimumHeight(I)V

    .line 56
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 125
    :try_start_0
    iget-object v0, p0, Lcom/apprupt/sdk/CvInterstitialAdWrapper;->d:Lcom/apprupt/sdk/CvInterstitialActivity;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/apprupt/sdk/CvInterstitialAdWrapper;->d:Lcom/apprupt/sdk/CvInterstitialActivity;

    invoke-virtual {v0, p1}, Lcom/apprupt/sdk/CvInterstitialActivity;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 128
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public b()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 70
    iget-object v0, p0, Lcom/apprupt/sdk/CvInterstitialAdWrapper;->b:Lcom/apprupt/sdk/Logger$log;

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "load mraid view..."

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/Logger$log;->b([Ljava/lang/Object;)V

    .line 71
    new-instance v0, Lcom/apprupt/sdk/CvInterstitialAdWrapper$2;

    invoke-direct {v0, p0}, Lcom/apprupt/sdk/CvInterstitialAdWrapper$2;-><init>(Lcom/apprupt/sdk/CvInterstitialAdWrapper;)V

    invoke-static {v0, v4}, Lcom/apprupt/sdk/CvViewHelper;->a(Ljava/lang/Runnable;Z)V

    .line 83
    return-void
.end method

.method c()V
    .locals 2

    .prologue
    .line 97
    new-instance v0, Lcom/apprupt/sdk/CvInterstitialAdWrapper$4;

    invoke-direct {v0, p0}, Lcom/apprupt/sdk/CvInterstitialAdWrapper$4;-><init>(Lcom/apprupt/sdk/CvInterstitialAdWrapper;)V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/apprupt/sdk/CvViewHelper;->a(Ljava/lang/Runnable;Z)V

    .line 104
    return-void
.end method

.method d()Landroid/view/View;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/apprupt/sdk/CvInterstitialAdWrapper;->e:Lcom/apprupt/sdk/MRAIDView;

    return-object v0
.end method

.method l()V
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/apprupt/sdk/CvInterstitialAdWrapper;->m()Lcom/apprupt/sdk/CvMediator;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/apprupt/sdk/CvMediator;->b(Lcom/apprupt/sdk/mediation/AdWrapper;)V

    .line 43
    return-void
.end method

.method p()Lcom/apprupt/sdk/adview/ExpandProperties;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/apprupt/sdk/CvInterstitialAdWrapper;->e:Lcom/apprupt/sdk/MRAIDView;

    invoke-virtual {v0}, Lcom/apprupt/sdk/MRAIDView;->f()Lcom/apprupt/sdk/adview/ExpandProperties;

    move-result-object v0

    return-object v0
.end method

.method q()Lcom/apprupt/sdk/adview/OrientationProperties;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/apprupt/sdk/CvInterstitialAdWrapper;->e:Lcom/apprupt/sdk/MRAIDView;

    invoke-virtual {v0}, Lcom/apprupt/sdk/MRAIDView;->g()Lcom/apprupt/sdk/adview/OrientationProperties;

    move-result-object v0

    return-object v0
.end method

.method r()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/apprupt/sdk/CvInterstitialAdWrapper;->e:Lcom/apprupt/sdk/MRAIDView;

    invoke-virtual {v0}, Lcom/apprupt/sdk/MRAIDView;->e()Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method

.method s()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 151
    iget-object v0, p0, Lcom/apprupt/sdk/CvInterstitialAdWrapper;->e:Lcom/apprupt/sdk/MRAIDView;

    invoke-virtual {v0}, Lcom/apprupt/sdk/MRAIDView;->b()V

    .line 152
    iput-object v1, p0, Lcom/apprupt/sdk/CvInterstitialAdWrapper;->e:Lcom/apprupt/sdk/MRAIDView;

    .line 153
    iput-object v1, p0, Lcom/apprupt/sdk/CvInterstitialAdWrapper;->c:Lcom/apprupt/sdk/mediation/InterstitialAdWrapper$Listener;

    .line 154
    iput-object v1, p0, Lcom/apprupt/sdk/CvInterstitialAdWrapper;->d:Lcom/apprupt/sdk/CvInterstitialActivity;

    .line 155
    iput-object v1, p0, Lcom/apprupt/sdk/CvInterstitialAdWrapper;->f:Lcom/apprupt/sdk/mediation/ValueExchangeCompletion;

    .line 156
    return-void
.end method
