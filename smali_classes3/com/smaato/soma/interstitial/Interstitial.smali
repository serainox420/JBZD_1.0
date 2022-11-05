.class public Lcom/smaato/soma/interstitial/Interstitial;
.super Ljava/lang/Object;
.source "Interstitial.java"

# interfaces
.implements Lcom/smaato/soma/c;
.implements Lcom/smaato/soma/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smaato/soma/interstitial/Interstitial$InterstitialOrientation;,
        Lcom/smaato/soma/interstitial/Interstitial$InterstitialStates;
    }
.end annotation


# static fields
.field static a:Lcom/smaato/soma/interstitial/b;

.field static b:Lcom/smaato/soma/interstitial/a;


# instance fields
.field c:Landroid/content/Context;

.field d:Lcom/smaato/soma/interstitial/Interstitial$InterstitialStates;

.field e:Ljava/lang/String;

.field private f:Lcom/smaato/soma/mediation/j$a;

.field private g:Z

.field private h:Lcom/smaato/soma/interstitial/Interstitial$InterstitialOrientation;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smaato/soma/interstitial/Interstitial;->g:Z

    .line 115
    const-string v0, "Interstitial"

    iput-object v0, p0, Lcom/smaato/soma/interstitial/Interstitial;->e:Ljava/lang/String;

    .line 117
    sget-object v0, Lcom/smaato/soma/interstitial/Interstitial$InterstitialOrientation;->PORTRAIT:Lcom/smaato/soma/interstitial/Interstitial$InterstitialOrientation;

    iput-object v0, p0, Lcom/smaato/soma/interstitial/Interstitial;->h:Lcom/smaato/soma/interstitial/Interstitial$InterstitialOrientation;

    .line 122
    new-instance v0, Lcom/smaato/soma/interstitial/Interstitial$1;

    invoke-direct {v0, p0, p1}, Lcom/smaato/soma/interstitial/Interstitial$1;-><init>(Lcom/smaato/soma/interstitial/Interstitial;Landroid/content/Context;)V

    .line 128
    invoke-virtual {v0}, Lcom/smaato/soma/interstitial/Interstitial$1;->c()Ljava/lang/Object;

    .line 129
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/InterstitialInitializationFailed;
        }
    .end annotation

    .prologue
    .line 138
    :try_start_0
    iput-object p1, p0, Lcom/smaato/soma/interstitial/Interstitial;->c:Landroid/content/Context;

    .line 139
    new-instance v0, Lcom/smaato/soma/interstitial/b;

    iget-object v1, p0, Lcom/smaato/soma/interstitial/Interstitial;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/smaato/soma/interstitial/b;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/smaato/soma/interstitial/Interstitial;->a:Lcom/smaato/soma/interstitial/b;

    .line 140
    sget-object v0, Lcom/smaato/soma/interstitial/Interstitial;->a:Lcom/smaato/soma/interstitial/b;

    invoke-virtual {v0, p0}, Lcom/smaato/soma/interstitial/b;->setInterstitialParent(Lcom/smaato/soma/interstitial/Interstitial;)V

    .line 141
    sget-object v0, Lcom/smaato/soma/interstitial/Interstitial;->a:Lcom/smaato/soma/interstitial/b;

    invoke-virtual {v0, p0}, Lcom/smaato/soma/interstitial/b;->a(Lcom/smaato/soma/c;)V

    .line 142
    sget-object v0, Lcom/smaato/soma/interstitial/Interstitial;->a:Lcom/smaato/soma/interstitial/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smaato/soma/interstitial/b;->setScalingEnabled(Z)V

    .line 143
    sget-object v0, Lcom/smaato/soma/interstitial/Interstitial;->a:Lcom/smaato/soma/interstitial/b;

    invoke-virtual {v0}, Lcom/smaato/soma/interstitial/b;->getInterstitialParent()Lcom/smaato/soma/interstitial/Interstitial;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 147
    :cond_0
    invoke-direct {p0}, Lcom/smaato/soma/interstitial/Interstitial;->j()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 154
    return-void

    .line 149
    :catch_0
    move-exception v0

    .line 150
    throw v0

    .line 151
    :catch_1
    move-exception v0

    .line 152
    new-instance v1, Lcom/smaato/soma/exception/InterstitialInitializationFailed;

    invoke-direct {v1, v0}, Lcom/smaato/soma/exception/InterstitialInitializationFailed;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private a(Lcom/smaato/soma/interstitial/Interstitial$InterstitialOrientation;)V
    .locals 0

    .prologue
    .line 440
    iput-object p1, p0, Lcom/smaato/soma/interstitial/Interstitial;->h:Lcom/smaato/soma/interstitial/Interstitial$InterstitialOrientation;

    .line 441
    invoke-direct {p0}, Lcom/smaato/soma/interstitial/Interstitial;->j()V

    .line 442
    return-void
.end method

.method static synthetic a(Lcom/smaato/soma/interstitial/Interstitial;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/InterstitialInitializationFailed;
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/smaato/soma/interstitial/Interstitial;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/smaato/soma/interstitial/Interstitial;Lcom/smaato/soma/interstitial/Interstitial$InterstitialOrientation;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/smaato/soma/interstitial/Interstitial;->a(Lcom/smaato/soma/interstitial/Interstitial$InterstitialOrientation;)V

    return-void
.end method

.method static synthetic a(Lcom/smaato/soma/interstitial/Interstitial;)Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/smaato/soma/interstitial/Interstitial;->g:Z

    return v0
.end method

.method static synthetic a(Lcom/smaato/soma/interstitial/Interstitial;Z)Z
    .locals 0

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/smaato/soma/interstitial/Interstitial;->g:Z

    return p1
.end method

.method static synthetic b(Lcom/smaato/soma/interstitial/Interstitial;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/smaato/soma/interstitial/Interstitial;->i()V

    return-void
.end method

.method protected static c()Lcom/smaato/soma/interstitial/b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/UnableToFindInterstitialBannerView;
        }
    .end annotation

    .prologue
    .line 235
    :try_start_0
    sget-object v0, Lcom/smaato/soma/interstitial/Interstitial;->a:Lcom/smaato/soma/interstitial/b;

    invoke-virtual {v0}, Lcom/smaato/soma/interstitial/b;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 236
    sget-object v0, Lcom/smaato/soma/interstitial/Interstitial;->a:Lcom/smaato/soma/interstitial/b;

    invoke-virtual {v0}, Lcom/smaato/soma/interstitial/b;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    sget-object v1, Lcom/smaato/soma/interstitial/Interstitial;->a:Lcom/smaato/soma/interstitial/b;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 238
    :cond_0
    sget-object v0, Lcom/smaato/soma/interstitial/Interstitial;->a:Lcom/smaato/soma/interstitial/b;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    return-object v0

    .line 239
    :catch_0
    move-exception v0

    .line 240
    throw v0

    .line 241
    :catch_1
    move-exception v0

    .line 242
    new-instance v1, Lcom/smaato/soma/exception/UnableToFindInterstitialBannerView;

    invoke-direct {v1, v0}, Lcom/smaato/soma/exception/UnableToFindInterstitialBannerView;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private i()V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/smaato/soma/interstitial/Interstitial;->f:Lcom/smaato/soma/mediation/j$a;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/smaato/soma/interstitial/Interstitial;->f:Lcom/smaato/soma/mediation/j$a;

    invoke-interface {v0}, Lcom/smaato/soma/mediation/j$a;->onWillShow()V

    .line 63
    :cond_0
    return-void
.end method

.method private j()V
    .locals 2

    .prologue
    .line 160
    sget-object v0, Lcom/smaato/soma/interstitial/Interstitial$3;->a:[I

    invoke-direct {p0}, Lcom/smaato/soma/interstitial/Interstitial;->k()Lcom/smaato/soma/interstitial/Interstitial$InterstitialOrientation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smaato/soma/interstitial/Interstitial$InterstitialOrientation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 168
    sget-object v0, Lcom/smaato/soma/interstitial/Interstitial;->a:Lcom/smaato/soma/interstitial/b;

    invoke-virtual {v0}, Lcom/smaato/soma/interstitial/b;->getAdSettings()Lcom/smaato/soma/d;

    move-result-object v0

    sget-object v1, Lcom/smaato/soma/AdDimension;->INTERSTITIAL_PORTRAIT:Lcom/smaato/soma/AdDimension;

    .line 169
    invoke-virtual {v0, v1}, Lcom/smaato/soma/d;->a(Lcom/smaato/soma/AdDimension;)V

    .line 172
    :goto_0
    return-void

    .line 162
    :pswitch_0
    sget-object v0, Lcom/smaato/soma/interstitial/Interstitial;->a:Lcom/smaato/soma/interstitial/b;

    invoke-virtual {v0}, Lcom/smaato/soma/interstitial/b;->getAdSettings()Lcom/smaato/soma/d;

    move-result-object v0

    sget-object v1, Lcom/smaato/soma/AdDimension;->INTERSTITIAL_LANDSCAPE:Lcom/smaato/soma/AdDimension;

    .line 163
    invoke-virtual {v0, v1}, Lcom/smaato/soma/d;->a(Lcom/smaato/soma/AdDimension;)V

    .line 164
    invoke-static {}, Lcom/smaato/soma/internal/requests/f;->b()Lcom/smaato/soma/internal/requests/f;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smaato/soma/internal/requests/f;->b(Z)V

    goto :goto_0

    .line 160
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private k()Lcom/smaato/soma/interstitial/Interstitial$InterstitialOrientation;
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lcom/smaato/soma/interstitial/Interstitial;->h:Lcom/smaato/soma/interstitial/Interstitial$InterstitialOrientation;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/smaato/soma/interstitial/Interstitial;->a:Lcom/smaato/soma/interstitial/b;

    if-eqz v0, :cond_0

    .line 51
    sget-object v0, Lcom/smaato/soma/interstitial/Interstitial;->a:Lcom/smaato/soma/interstitial/b;

    invoke-virtual {v0}, Lcom/smaato/soma/interstitial/b;->onDetachedFromWindow()V

    .line 53
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/smaato/soma/interstitial/Interstitial;->a(Lcom/smaato/soma/interstitial/a;)V

    .line 55
    return-void
.end method

.method public a(Lcom/smaato/soma/interstitial/a;)V
    .locals 0

    .prologue
    .line 251
    sput-object p1, Lcom/smaato/soma/interstitial/Interstitial;->b:Lcom/smaato/soma/interstitial/a;

    .line 252
    return-void
.end method

.method public a(Lcom/smaato/soma/mediation/j$a;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/smaato/soma/interstitial/Interstitial;->f:Lcom/smaato/soma/mediation/j$a;

    .line 39
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 179
    new-instance v0, Lcom/smaato/soma/interstitial/Interstitial$4;

    invoke-direct {v0, p0}, Lcom/smaato/soma/interstitial/Interstitial$4;-><init>(Lcom/smaato/soma/interstitial/Interstitial;)V

    .line 225
    invoke-virtual {v0}, Lcom/smaato/soma/interstitial/Interstitial$4;->c()Ljava/lang/Object;

    .line 226
    return-void
.end method

.method public d()Lcom/smaato/soma/interstitial/a;
    .locals 1

    .prologue
    .line 258
    sget-object v0, Lcom/smaato/soma/interstitial/Interstitial;->b:Lcom/smaato/soma/interstitial/a;

    return-object v0
.end method

.method public e()V
    .locals 1

    .prologue
    .line 317
    new-instance v0, Lcom/smaato/soma/interstitial/Interstitial$6;

    invoke-direct {v0, p0}, Lcom/smaato/soma/interstitial/Interstitial$6;-><init>(Lcom/smaato/soma/interstitial/Interstitial;)V

    .line 330
    invoke-virtual {v0}, Lcom/smaato/soma/interstitial/Interstitial$6;->c()Ljava/lang/Object;

    .line 331
    return-void
.end method

.method public f()Z
    .locals 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/smaato/soma/interstitial/Interstitial;->d:Lcom/smaato/soma/interstitial/Interstitial$InterstitialStates;

    sget-object v1, Lcom/smaato/soma/interstitial/Interstitial$InterstitialStates;->IS_READY:Lcom/smaato/soma/interstitial/Interstitial$InterstitialStates;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected g()V
    .locals 1

    .prologue
    .line 303
    sget-object v0, Lcom/smaato/soma/interstitial/Interstitial$InterstitialStates;->IS_READY:Lcom/smaato/soma/interstitial/Interstitial$InterstitialStates;

    iput-object v0, p0, Lcom/smaato/soma/interstitial/Interstitial;->d:Lcom/smaato/soma/interstitial/Interstitial$InterstitialStates;

    .line 304
    return-void
.end method

.method public getAdSettings()Lcom/smaato/soma/d;
    .locals 1

    .prologue
    .line 393
    new-instance v0, Lcom/smaato/soma/interstitial/Interstitial$10;

    invoke-direct {v0, p0}, Lcom/smaato/soma/interstitial/Interstitial$10;-><init>(Lcom/smaato/soma/interstitial/Interstitial;)V

    .line 398
    invoke-virtual {v0}, Lcom/smaato/soma/interstitial/Interstitial$10;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smaato/soma/d;

    .line 393
    return-object v0
.end method

.method public getUserSettings()Lcom/smaato/soma/internal/requests/settings/UserSettings;
    .locals 1

    .prologue
    .line 366
    new-instance v0, Lcom/smaato/soma/interstitial/Interstitial$8;

    invoke-direct {v0, p0}, Lcom/smaato/soma/interstitial/Interstitial$8;-><init>(Lcom/smaato/soma/interstitial/Interstitial;)V

    .line 371
    invoke-virtual {v0}, Lcom/smaato/soma/interstitial/Interstitial$8;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smaato/soma/internal/requests/settings/UserSettings;

    .line 366
    return-object v0
.end method

.method protected h()V
    .locals 1

    .prologue
    .line 310
    sget-object v0, Lcom/smaato/soma/interstitial/Interstitial$InterstitialStates;->IS_NOT_READY:Lcom/smaato/soma/interstitial/Interstitial$InterstitialStates;

    iput-object v0, p0, Lcom/smaato/soma/interstitial/Interstitial;->d:Lcom/smaato/soma/interstitial/Interstitial$InterstitialStates;

    .line 311
    return-void
.end method

.method public onReceiveAd(Lcom/smaato/soma/b;Lcom/smaato/soma/p;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/AdReceiveFailed;
        }
    .end annotation

    .prologue
    .line 275
    new-instance v0, Lcom/smaato/soma/interstitial/Interstitial$5;

    invoke-direct {v0, p0, p2}, Lcom/smaato/soma/interstitial/Interstitial$5;-><init>(Lcom/smaato/soma/interstitial/Interstitial;Lcom/smaato/soma/p;)V

    .line 296
    invoke-virtual {v0}, Lcom/smaato/soma/interstitial/Interstitial$5;->c()Ljava/lang/Object;

    .line 297
    return-void
.end method

.method public setAdSettings(Lcom/smaato/soma/d;)V
    .locals 1

    .prologue
    .line 406
    new-instance v0, Lcom/smaato/soma/interstitial/Interstitial$2;

    invoke-direct {v0, p0, p1}, Lcom/smaato/soma/interstitial/Interstitial$2;-><init>(Lcom/smaato/soma/interstitial/Interstitial;Lcom/smaato/soma/d;)V

    .line 412
    invoke-virtual {v0}, Lcom/smaato/soma/interstitial/Interstitial$2;->c()Ljava/lang/Object;

    .line 413
    return-void
.end method

.method public setLocationUpdateEnabled(Z)V
    .locals 1

    .prologue
    .line 339
    new-instance v0, Lcom/smaato/soma/interstitial/Interstitial$7;

    invoke-direct {v0, p0, p1}, Lcom/smaato/soma/interstitial/Interstitial$7;-><init>(Lcom/smaato/soma/interstitial/Interstitial;Z)V

    .line 345
    invoke-virtual {v0}, Lcom/smaato/soma/interstitial/Interstitial$7;->c()Ljava/lang/Object;

    .line 346
    return-void
.end method

.method public setUserSettings(Lcom/smaato/soma/internal/requests/settings/UserSettings;)V
    .locals 1

    .prologue
    .line 379
    new-instance v0, Lcom/smaato/soma/interstitial/Interstitial$9;

    invoke-direct {v0, p0, p1}, Lcom/smaato/soma/interstitial/Interstitial$9;-><init>(Lcom/smaato/soma/interstitial/Interstitial;Lcom/smaato/soma/internal/requests/settings/UserSettings;)V

    .line 385
    invoke-virtual {v0}, Lcom/smaato/soma/interstitial/Interstitial$9;->c()Ljava/lang/Object;

    .line 386
    return-void
.end method
