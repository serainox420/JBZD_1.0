.class public Lcom/smaato/soma/interstitial/b;
.super Lcom/smaato/soma/j;
.source "InterstitialBannerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smaato/soma/interstitial/b$a;
    }
.end annotation


# instance fields
.field private a:Lcom/smaato/soma/interstitial/b$a;

.field private m:Z

.field private n:Lcom/smaato/soma/interstitial/Interstitial;

.field private o:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/smaato/soma/mediation/j;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private p:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/smaato/soma/mediation/j;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/smaato/soma/j;-><init>(Landroid/content/Context;)V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smaato/soma/interstitial/b;->m:Z

    .line 61
    return-void
.end method

.method static synthetic a(Lcom/smaato/soma/interstitial/b;)Lcom/smaato/soma/bannerutilities/a;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/smaato/soma/interstitial/b;->g:Lcom/smaato/soma/bannerutilities/a;

    return-object v0
.end method

.method static synthetic a(Lcom/smaato/soma/interstitial/b;Z)Z
    .locals 0

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/smaato/soma/interstitial/b;->m:Z

    return p1
.end method

.method static synthetic b(Lcom/smaato/soma/interstitial/b;)Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/smaato/soma/interstitial/b;->m:Z

    return v0
.end method

.method static synthetic c(Lcom/smaato/soma/interstitial/b;)Lcom/smaato/soma/interstitial/Interstitial;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/smaato/soma/interstitial/b;->n:Lcom/smaato/soma/interstitial/Interstitial;

    return-object v0
.end method

.method static synthetic d(Lcom/smaato/soma/interstitial/b;)Lcom/smaato/soma/bannerutilities/a;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/smaato/soma/interstitial/b;->getCurrentPackage()Lcom/smaato/soma/bannerutilities/a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Lcom/smaato/soma/interstitial/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/UnableToPauseAutoReload;
        }
    .end annotation

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/smaato/soma/interstitial/b;->c()V

    return-void
.end method

.method static synthetic f(Lcom/smaato/soma/interstitial/b;)Lcom/smaato/soma/bannerutilities/a;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/smaato/soma/interstitial/b;->getCurrentPackage()Lcom/smaato/soma/bannerutilities/a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic g(Lcom/smaato/soma/interstitial/b;)Lcom/smaato/soma/bannerutilities/a;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/smaato/soma/interstitial/b;->g:Lcom/smaato/soma/bannerutilities/a;

    return-object v0
.end method

.method static synthetic h(Lcom/smaato/soma/interstitial/b;)Lcom/smaato/soma/bannerutilities/a;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/smaato/soma/interstitial/b;->g:Lcom/smaato/soma/bannerutilities/a;

    return-object v0
.end method

.method static synthetic i(Lcom/smaato/soma/interstitial/b;)Lcom/smaato/soma/bannerutilities/a;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/smaato/soma/interstitial/b;->g:Lcom/smaato/soma/bannerutilities/a;

    return-object v0
.end method

.method static synthetic j(Lcom/smaato/soma/interstitial/b;)Lcom/smaato/soma/bannerutilities/a;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/smaato/soma/interstitial/b;->getCurrentPackage()Lcom/smaato/soma/bannerutilities/a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic k(Lcom/smaato/soma/interstitial/b;)Lcom/smaato/soma/bannerutilities/a;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/smaato/soma/interstitial/b;->getCurrentPackage()Lcom/smaato/soma/bannerutilities/a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic l(Lcom/smaato/soma/interstitial/b;)Lcom/smaato/soma/bannerutilities/a;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/smaato/soma/interstitial/b;->g:Lcom/smaato/soma/bannerutilities/a;

    return-object v0
.end method

.method static synthetic m(Lcom/smaato/soma/interstitial/b;)Lcom/smaato/soma/bannerutilities/a;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/smaato/soma/interstitial/b;->g:Lcom/smaato/soma/bannerutilities/a;

    return-object v0
.end method

.method static synthetic n(Lcom/smaato/soma/interstitial/b;)Lcom/smaato/soma/bannerutilities/a;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/smaato/soma/interstitial/b;->getCurrentPackage()Lcom/smaato/soma/bannerutilities/a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic o(Lcom/smaato/soma/interstitial/b;)Lcom/smaato/soma/bannerutilities/a;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/smaato/soma/interstitial/b;->getCurrentPackage()Lcom/smaato/soma/bannerutilities/a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic p(Lcom/smaato/soma/interstitial/b;)Lcom/smaato/soma/bannerutilities/a;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/smaato/soma/interstitial/b;->getCurrentPackage()Lcom/smaato/soma/bannerutilities/a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic q(Lcom/smaato/soma/interstitial/b;)Lcom/smaato/soma/bannerutilities/a;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/smaato/soma/interstitial/b;->getCurrentPackage()Lcom/smaato/soma/bannerutilities/a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic r(Lcom/smaato/soma/interstitial/b;)Lcom/smaato/soma/bannerutilities/a;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/smaato/soma/interstitial/b;->getCurrentPackage()Lcom/smaato/soma/bannerutilities/a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic s(Lcom/smaato/soma/interstitial/b;)Lcom/smaato/soma/bannerutilities/a;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/smaato/soma/interstitial/b;->getCurrentPackage()Lcom/smaato/soma/bannerutilities/a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic t(Lcom/smaato/soma/interstitial/b;)Lcom/smaato/soma/bannerutilities/a;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/smaato/soma/interstitial/b;->getCurrentPackage()Lcom/smaato/soma/bannerutilities/a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic u(Lcom/smaato/soma/interstitial/b;)Lcom/smaato/soma/bannerutilities/a;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/smaato/soma/interstitial/b;->g:Lcom/smaato/soma/bannerutilities/a;

    return-object v0
.end method

.method static synthetic v(Lcom/smaato/soma/interstitial/b;)Lcom/smaato/soma/bannerutilities/a;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/smaato/soma/interstitial/b;->getCurrentPackage()Lcom/smaato/soma/bannerutilities/a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic w(Lcom/smaato/soma/interstitial/b;)Lcom/smaato/soma/bannerutilities/a;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/smaato/soma/interstitial/b;->g:Lcom/smaato/soma/bannerutilities/a;

    return-object v0
.end method

.method static synthetic x(Lcom/smaato/soma/interstitial/b;)Lcom/smaato/soma/bannerutilities/a;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/smaato/soma/interstitial/b;->getCurrentPackage()Lcom/smaato/soma/bannerutilities/a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic y(Lcom/smaato/soma/interstitial/b;)Lcom/smaato/soma/bannerutilities/a;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/smaato/soma/interstitial/b;->getCurrentPackage()Lcom/smaato/soma/bannerutilities/a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected b()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/BeaconLoadFailedException;
        }
    .end annotation

    .prologue
    .line 180
    invoke-super {p0}, Lcom/smaato/soma/j;->g()Z

    move-result v0

    return v0
.end method

.method protected g()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/BeaconLoadFailedException;
        }
    .end annotation

    .prologue
    .line 176
    const/4 v0, 0x0

    return v0
.end method

.method public final getActivityContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/smaato/soma/interstitial/b;->g:Lcom/smaato/soma/bannerutilities/a;

    invoke-virtual {v0}, Lcom/smaato/soma/bannerutilities/a;->h()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getBannerAnimatorHandler()Landroid/os/Handler;
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/smaato/soma/interstitial/b;->a:Lcom/smaato/soma/interstitial/b$a;

    if-nez v0, :cond_0

    .line 108
    new-instance v0, Lcom/smaato/soma/interstitial/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p0, v1}, Lcom/smaato/soma/interstitial/b$a;-><init>(Lcom/smaato/soma/interstitial/b;Lcom/smaato/soma/j;Lcom/smaato/soma/interstitial/b$1;)V

    iput-object v0, p0, Lcom/smaato/soma/interstitial/b;->a:Lcom/smaato/soma/interstitial/b$a;

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/smaato/soma/interstitial/b;->a:Lcom/smaato/soma/interstitial/b$a;

    return-object v0
.end method

.method public getInterstitialParent()Lcom/smaato/soma/interstitial/Interstitial;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/smaato/soma/interstitial/b;->n:Lcom/smaato/soma/interstitial/Interstitial;

    return-object v0
.end method

.method protected j()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/UnableToNotifyBannerIdle;
        }
    .end annotation

    .prologue
    .line 139
    new-instance v0, Lcom/smaato/soma/interstitial/b$2;

    invoke-direct {v0, p0}, Lcom/smaato/soma/interstitial/b$2;-><init>(Lcom/smaato/soma/interstitial/b;)V

    .line 149
    invoke-virtual {v0}, Lcom/smaato/soma/interstitial/b$2;->c()Ljava/lang/Object;

    .line 150
    invoke-super {p0}, Lcom/smaato/soma/j;->j()V

    .line 151
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 189
    new-instance v0, Lcom/smaato/soma/interstitial/b$3;

    invoke-direct {v0, p0}, Lcom/smaato/soma/interstitial/b$3;-><init>(Lcom/smaato/soma/interstitial/b;)V

    .line 195
    invoke-virtual {v0}, Lcom/smaato/soma/interstitial/b$3;->c()Ljava/lang/Object;

    .line 196
    invoke-super {p0}, Lcom/smaato/soma/j;->onAttachedToWindow()V

    .line 197
    return-void
.end method

.method protected final onDetachedFromWindow()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 207
    :try_start_0
    iget-object v0, p0, Lcom/smaato/soma/interstitial/b;->o:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smaato/soma/interstitial/b;->o:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/smaato/soma/interstitial/b;->o:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smaato/soma/mediation/j;

    invoke-virtual {v0}, Lcom/smaato/soma/mediation/j;->b()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/smaato/soma/interstitial/b;->p:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/smaato/soma/interstitial/b;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 218
    iget-object v0, p0, Lcom/smaato/soma/interstitial/b;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smaato/soma/mediation/j;

    invoke-virtual {v0}, Lcom/smaato/soma/mediation/j;->b()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 226
    :cond_1
    :goto_1
    invoke-super {p0}, Lcom/smaato/soma/j;->onDetachedFromWindow()V

    .line 227
    return-void

    .line 212
    :catch_0
    move-exception v0

    new-instance v0, Lcom/smaato/soma/debug/b;

    const-string v1, "InterstitialBannerView"

    const-string v2, "Exception during clearing mMediationEventInterstitialReference"

    sget-object v3, Lcom/smaato/soma/debug/DebugCategory;->DEBUG:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    goto :goto_0

    .line 222
    :catch_1
    move-exception v0

    new-instance v0, Lcom/smaato/soma/debug/b;

    const-string v1, "InterstitialBannerView"

    const-string v2, "Exception during clearing mCustomEventInterstitialReference"

    sget-object v3, Lcom/smaato/soma/debug/DebugCategory;->DEBUG:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    goto :goto_1

    .line 221
    :catch_2
    move-exception v0

    goto :goto_1

    .line 220
    :catch_3
    move-exception v0

    goto :goto_1

    .line 211
    :catch_4
    move-exception v0

    goto :goto_0

    .line 210
    :catch_5
    move-exception v0

    goto :goto_0
.end method

.method protected setContext(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 119
    new-instance v0, Lcom/smaato/soma/interstitial/b$1;

    invoke-direct {v0, p0, p1}, Lcom/smaato/soma/interstitial/b$1;-><init>(Lcom/smaato/soma/interstitial/b;Landroid/app/Activity;)V

    .line 126
    invoke-virtual {v0}, Lcom/smaato/soma/interstitial/b$1;->c()Ljava/lang/Object;

    .line 127
    return-void
.end method

.method public setCustomMediationReference(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/smaato/soma/mediation/j;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 93
    iput-object p1, p0, Lcom/smaato/soma/interstitial/b;->p:Ljava/lang/ref/WeakReference;

    .line 94
    return-void
.end method

.method public setInterstitialParent(Lcom/smaato/soma/interstitial/Interstitial;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/smaato/soma/interstitial/b;->n:Lcom/smaato/soma/interstitial/Interstitial;

    .line 69
    return-void
.end method

.method public setMediationReference(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/smaato/soma/mediation/j;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 82
    iput-object p1, p0, Lcom/smaato/soma/interstitial/b;->o:Ljava/lang/ref/WeakReference;

    .line 83
    return-void
.end method

.method protected final setShouldNotifyIdle(Z)V
    .locals 0

    .prologue
    .line 167
    iput-boolean p1, p0, Lcom/smaato/soma/interstitial/b;->m:Z

    .line 168
    return-void
.end method
