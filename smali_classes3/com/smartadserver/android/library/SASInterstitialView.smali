.class public Lcom/smartadserver/android/library/SASInterstitialView;
.super Lcom/smartadserver/android/library/ui/SASAdView;
.source "SASInterstitialView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartadserver/android/library/SASInterstitialView$a;
    }
.end annotation


# static fields
.field private static final s:Ljava/lang/String;


# instance fields
.field private r:Ljava/util/Timer;

.field private t:Lcom/smartadserver/android/library/ui/SASAdView$d;

.field private u:Landroid/widget/RelativeLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/smartadserver/android/library/SASInterstitialView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/smartadserver/android/library/SASInterstitialView;->s:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/smartadserver/android/library/ui/SASAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    invoke-direct {p0, p1}, Lcom/smartadserver/android/library/SASInterstitialView;->d(Landroid/content/Context;)V

    .line 49
    return-void
.end method

.method static synthetic a(Lcom/smartadserver/android/library/SASInterstitialView;)Lcom/smartadserver/android/library/ui/SASAdView$d;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/smartadserver/android/library/SASInterstitialView;->t:Lcom/smartadserver/android/library/ui/SASAdView$d;

    return-object v0
.end method

.method static synthetic a(Lcom/smartadserver/android/library/SASInterstitialView;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/smartadserver/android/library/SASInterstitialView;->r:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic a(Lcom/smartadserver/android/library/SASInterstitialView;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/smartadserver/android/library/SASInterstitialView;->c(Landroid/view/View;)V

    return-void
.end method

.method static synthetic b(Lcom/smartadserver/android/library/SASInterstitialView;)Ljava/util/Timer;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/smartadserver/android/library/SASInterstitialView;->r:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic c(Lcom/smartadserver/android/library/SASInterstitialView;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/smartadserver/android/library/SASInterstitialView;->u:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private c(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 332
    if-eqz p1, :cond_0

    .line 333
    new-instance v0, Lcom/smartadserver/android/library/SASInterstitialView$3;

    invoke-direct {v0, p0}, Lcom/smartadserver/android/library/SASInterstitialView$3;-><init>(Lcom/smartadserver/android/library/SASInterstitialView;)V

    invoke-virtual {p0, v0}, Lcom/smartadserver/android/library/SASInterstitialView;->a(Ljava/lang/Runnable;)V

    .line 345
    :cond_0
    return-void
.end method

.method private d(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 55
    new-instance v0, Lcom/smartadserver/android/library/SASInterstitialView$1;

    invoke-direct {v0, p0}, Lcom/smartadserver/android/library/SASInterstitialView$1;-><init>(Lcom/smartadserver/android/library/SASInterstitialView;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/SASInterstitialView;->t:Lcom/smartadserver/android/library/ui/SASAdView$d;

    .line 65
    iget-object v0, p0, Lcom/smartadserver/android/library/SASInterstitialView;->t:Lcom/smartadserver/android/library/ui/SASAdView$d;

    invoke-virtual {p0, v0}, Lcom/smartadserver/android/library/SASInterstitialView;->a(Lcom/smartadserver/android/library/ui/SASAdView$d;)V

    .line 67
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/SASInterstitialView;->u:Landroid/widget/RelativeLayout;

    .line 68
    iget-object v0, p0, Lcom/smartadserver/android/library/SASInterstitialView;->u:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    return-void
.end method

.method static synthetic f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/smartadserver/android/library/SASInterstitialView;->s:Ljava/lang/String;

    return-object v0
.end method

.method private w()V
    .locals 2

    .prologue
    .line 240
    iget-object v0, p0, Lcom/smartadserver/android/library/SASInterstitialView;->r:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/smartadserver/android/library/SASInterstitialView;->r:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 242
    sget-object v0, Lcom/smartadserver/android/library/SASInterstitialView;->s:Ljava/lang/String;

    const-string v1, "cancel timer"

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 232
    invoke-super {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->a()V

    .line 234
    invoke-virtual {p0}, Lcom/smartadserver/android/library/SASInterstitialView;->n()V

    .line 235
    return-void
.end method

.method protected a(ILjava/lang/String;IZLjava/lang/String;Lcom/smartadserver/android/library/ui/SASAdView$a;IZZ)V
    .locals 11

    .prologue
    .line 295
    new-instance v7, Lcom/smartadserver/android/library/SASInterstitialView$a;

    move-object/from16 v0, p6

    invoke-direct {v7, p0, v0}, Lcom/smartadserver/android/library/SASInterstitialView$a;-><init>(Lcom/smartadserver/android/library/SASInterstitialView;Lcom/smartadserver/android/library/ui/SASAdView$a;)V

    const/4 v10, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object/from16 v6, p5

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-super/range {v1 .. v10}, Lcom/smartadserver/android/library/ui/SASAdView;->a(ILjava/lang/String;IZLjava/lang/String;Lcom/smartadserver/android/library/ui/SASAdView$a;IZZ)V

    .line 296
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 304
    new-instance v0, Lcom/smartadserver/android/library/SASInterstitialView$2;

    invoke-direct {v0, p0, p1}, Lcom/smartadserver/android/library/SASInterstitialView$2;-><init>(Lcom/smartadserver/android/library/SASInterstitialView;Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/smartadserver/android/library/SASInterstitialView;->a(Ljava/lang/Runnable;)V

    .line 315
    return-void
.end method

.method public a(Ljava/lang/String;IIIIZZZLjava/lang/String;Z)V
    .locals 11

    .prologue
    .line 222
    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-super/range {v0 .. v10}, Lcom/smartadserver/android/library/ui/SASAdView;->a(Ljava/lang/String;IIIIZZZLjava/lang/String;Z)V

    .line 224
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 252
    invoke-super {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->b()V

    .line 253
    invoke-direct {p0}, Lcom/smartadserver/android/library/SASInterstitialView;->w()V

    .line 254
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 325
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 270
    invoke-super {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->c()V

    .line 273
    iget-object v1, p0, Lcom/smartadserver/android/library/SASInterstitialView;->t:Lcom/smartadserver/android/library/ui/SASAdView$d;

    monitor-enter v1

    .line 274
    :try_start_0
    iget-object v0, p0, Lcom/smartadserver/android/library/SASInterstitialView;->t:Lcom/smartadserver/android/library/ui/SASAdView$d;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 275
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    invoke-direct {p0}, Lcom/smartadserver/android/library/SASInterstitialView;->w()V

    .line 277
    return-void

    .line 275
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public d()V
    .locals 2

    .prologue
    .line 349
    invoke-super {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->d()V

    .line 350
    iget-object v1, p0, Lcom/smartadserver/android/library/SASInterstitialView;->t:Lcom/smartadserver/android/library/ui/SASAdView$d;

    monitor-enter v1

    .line 351
    :try_start_0
    iget-object v0, p0, Lcom/smartadserver/android/library/SASInterstitialView;->t:Lcom/smartadserver/android/library/ui/SASAdView$d;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 352
    monitor-exit v1

    .line 353
    return-void

    .line 352
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected e()D
    .locals 3

    .prologue
    .line 359
    invoke-super {p0}, Lcom/smartadserver/android/library/ui/SASAdView;->e()D

    move-result-wide v0

    .line 362
    invoke-virtual {p0}, Lcom/smartadserver/android/library/SASInterstitialView;->getCurrentAdElement()Lcom/smartadserver/android/library/model/SASAdElement;

    move-result-object v2

    .line 363
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/smartadserver/android/library/model/SASAdElement;->getSelectedMediationAd()Lcom/smartadserver/android/library/model/a;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 364
    invoke-virtual {p0}, Lcom/smartadserver/android/library/SASInterstitialView;->getMRAIDController()Lcom/smartadserver/android/library/controller/mraid/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartadserver/android/library/controller/mraid/a;->getState()Ljava/lang/String;

    move-result-object v0

    .line 365
    if-eqz v0, :cond_1

    const-string v1, "expanded"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 366
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 374
    :cond_0
    :goto_0
    return-wide v0

    .line 368
    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    .prologue
    .line 284
    const/4 v1, 0x1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-super/range {v0 .. v5}, Lcom/smartadserver/android/library/ui/SASAdView;->onLayout(ZIIII)V

    .line 285
    return-void
.end method
