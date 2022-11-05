.class Lcom/applovin/impl/adview/x;
.super Landroid/app/Dialog;

# interfaces
.implements Lcom/applovin/impl/adview/w;


# instance fields
.field private final a:Landroid/app/Activity;

.field private final b:Lcom/applovin/sdk/AppLovinSdk;

.field private final c:Lcom/applovin/sdk/AppLovinLogger;

.field private d:Landroid/widget/RelativeLayout;

.field private e:Lcom/applovin/adview/AppLovinAdView;

.field private f:Ljava/lang/Runnable;

.field private g:Lcom/applovin/impl/adview/u;

.field private h:Landroid/os/Handler;

.field private i:Lcom/applovin/impl/adview/ah;

.field private volatile j:Z

.field private volatile k:Z


# direct methods
.method constructor <init>(Lcom/applovin/sdk/AppLovinSdk;Landroid/app/Activity;)V
    .locals 4

    const/4 v1, 0x0

    const/4 v2, 0x0

    const v0, 0x1030010

    invoke-direct {p0, p2, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/applovin/impl/adview/x;->i:Lcom/applovin/impl/adview/ah;

    iput-boolean v2, p0, Lcom/applovin/impl/adview/x;->j:Z

    iput-boolean v2, p0, Lcom/applovin/impl/adview/x;->k:Z

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No sdk specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No activity specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lcom/applovin/impl/adview/x;->b:Lcom/applovin/sdk/AppLovinSdk;

    invoke-virtual {p1}, Lcom/applovin/sdk/AppLovinSdk;->getLogger()Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/adview/x;->c:Lcom/applovin/sdk/AppLovinLogger;

    iput-object p2, p0, Lcom/applovin/impl/adview/x;->a:Landroid/app/Activity;

    new-instance v0, Lcom/applovin/impl/adview/ag;

    invoke-direct {v0, p0, v1}, Lcom/applovin/impl/adview/ag;-><init>(Lcom/applovin/impl/adview/x;Lcom/applovin/impl/adview/y;)V

    iput-object v0, p0, Lcom/applovin/impl/adview/x;->f:Ljava/lang/Runnable;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/adview/x;->h:Landroid/os/Handler;

    new-instance v0, Lcom/applovin/adview/AppLovinAdView;

    sget-object v1, Lcom/applovin/sdk/AppLovinAdSize;->INTERSTITIAL:Lcom/applovin/sdk/AppLovinAdSize;

    invoke-direct {v0, p1, v1, p2}, Lcom/applovin/adview/AppLovinAdView;-><init>(Lcom/applovin/sdk/AppLovinSdk;Lcom/applovin/sdk/AppLovinAdSize;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/applovin/impl/adview/x;->e:Lcom/applovin/adview/AppLovinAdView;

    iget-object v0, p0, Lcom/applovin/impl/adview/x;->e:Lcom/applovin/adview/AppLovinAdView;

    invoke-virtual {v0, v2}, Lcom/applovin/adview/AppLovinAdView;->setAutoDestroy(Z)V

    iget-object v0, p0, Lcom/applovin/impl/adview/x;->e:Lcom/applovin/adview/AppLovinAdView;

    invoke-virtual {v0}, Lcom/applovin/adview/AppLovinAdView;->getAdViewController()Lcom/applovin/adview/AdViewController;

    move-result-object v0

    check-cast v0, Lcom/applovin/impl/adview/AdViewControllerImpl;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/applovin/impl/adview/AdViewControllerImpl;->setParentDialog(Ljava/lang/ref/WeakReference;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/applovin/impl/adview/x;->requestWindowFeature(I)Z

    :try_start_0
    invoke-virtual {p0}, Lcom/applovin/impl/adview/x;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFlags(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/applovin/impl/adview/x;->c:Lcom/applovin/sdk/AppLovinLogger;

    const-string v2, "InterstitialAdDialog"

    const-string v3, "Set window flags failed."

    invoke-interface {v1, v2, v3, v0}, Lcom/applovin/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(I)I
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/x;->a:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/applovin/sdk/AppLovinSdkUtils;->dpToPx(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/applovin/impl/adview/x;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/x;->f:Ljava/lang/Runnable;

    return-object v0
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/adview/x;->a:Landroid/app/Activity;

    new-instance v1, Lcom/applovin/impl/adview/af;

    invoke-direct {v1, p0}, Lcom/applovin/impl/adview/af;-><init>(Lcom/applovin/impl/adview/x;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(J)V
    .locals 3

    iget-object v0, p0, Lcom/applovin/impl/adview/x;->h:Landroid/os/Handler;

    new-instance v1, Lcom/applovin/impl/adview/ae;

    invoke-direct {v1, p0}, Lcom/applovin/impl/adview/ae;-><init>(Lcom/applovin/impl/adview/x;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private a(Lcom/applovin/impl/adview/v;)V
    .locals 13

    const/16 v2, 0xb

    const/16 v12, 0xa

    const/16 v1, 0x9

    const/4 v11, 0x5

    const/4 v10, 0x0

    iget-object v0, p0, Lcom/applovin/impl/adview/x;->b:Lcom/applovin/sdk/AppLovinSdk;

    invoke-virtual {p0}, Lcom/applovin/impl/adview/x;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v0, v3, p1}, Lcom/applovin/impl/adview/u;->a(Lcom/applovin/sdk/AppLovinSdk;Landroid/content/Context;Lcom/applovin/impl/adview/v;)Lcom/applovin/impl/adview/u;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/adview/x;->g:Lcom/applovin/impl/adview/u;

    iget-object v0, p0, Lcom/applovin/impl/adview/x;->g:Lcom/applovin/impl/adview/u;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Lcom/applovin/impl/adview/u;->setVisibility(I)V

    iget-object v0, p0, Lcom/applovin/impl/adview/x;->g:Lcom/applovin/impl/adview/u;

    new-instance v3, Lcom/applovin/impl/adview/ac;

    invoke-direct {v3, p0}, Lcom/applovin/impl/adview/ac;-><init>(Lcom/applovin/impl/adview/x;)V

    invoke-virtual {v0, v3}, Lcom/applovin/impl/adview/u;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/applovin/impl/adview/x;->g:Lcom/applovin/impl/adview/u;

    invoke-virtual {v0, v10}, Lcom/applovin/impl/adview/u;->setClickable(Z)V

    new-instance v3, Lcom/applovin/impl/sdk/cb;

    iget-object v0, p0, Lcom/applovin/impl/adview/x;->b:Lcom/applovin/sdk/AppLovinSdk;

    invoke-direct {v3, v0}, Lcom/applovin/impl/sdk/cb;-><init>(Lcom/applovin/sdk/AppLovinSdk;)V

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/cb;->l()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/applovin/impl/adview/x;->a(I)I

    move-result v4

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/cb;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v5, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v0, p0, Lcom/applovin/impl/adview/x;->g:Lcom/applovin/impl/adview/u;

    invoke-virtual {v0, v4}, Lcom/applovin/impl/adview/u;->a(I)V

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/cb;->n()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/applovin/impl/adview/x;->a(I)I

    move-result v0

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/cb;->p()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/applovin/impl/adview/x;->a(I)I

    move-result v6

    invoke-virtual {v5, v6, v0, v6, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v7, p0, Lcom/applovin/impl/adview/x;->e:Lcom/applovin/adview/AppLovinAdView;

    iget-object v8, p0, Lcom/applovin/impl/adview/x;->g:Lcom/applovin/impl/adview/u;

    invoke-virtual {v7, v8, v5}, Lcom/applovin/adview/AppLovinAdView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/applovin/impl/adview/x;->g:Lcom/applovin/impl/adview/u;

    invoke-virtual {v5}, Lcom/applovin/impl/adview/u;->bringToFront()V

    new-instance v5, Lcom/applovin/impl/sdk/cb;

    iget-object v7, p0, Lcom/applovin/impl/adview/x;->b:Lcom/applovin/sdk/AppLovinSdk;

    invoke-direct {v5, v7}, Lcom/applovin/impl/sdk/cb;-><init>(Lcom/applovin/sdk/AppLovinSdk;)V

    invoke-virtual {v5}, Lcom/applovin/impl/sdk/cb;->r()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/applovin/impl/adview/x;->a(I)I

    move-result v5

    new-instance v7, Landroid/view/View;

    iget-object v8, p0, Lcom/applovin/impl/adview/x;->a:Landroid/app/Activity;

    invoke-direct {v7, v8}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v10}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    add-int v9, v4, v5

    add-int/2addr v4, v5

    invoke-direct {v8, v9, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/cb;->x()Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    invoke-virtual {v8, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-direct {p0, v11}, Lcom/applovin/impl/adview/x;->a(I)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-direct {p0, v11}, Lcom/applovin/impl/adview/x;->a(I)I

    move-result v1

    sub-int v1, v6, v1

    invoke-virtual {v8, v10, v0, v1, v10}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    new-instance v0, Lcom/applovin/impl/adview/ad;

    invoke-direct {v0, p0}, Lcom/applovin/impl/adview/ad;-><init>(Lcom/applovin/impl/adview/x;)V

    invoke-virtual {v7, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/applovin/impl/adview/x;->e:Lcom/applovin/adview/AppLovinAdView;

    invoke-virtual {v0, v7, v8}, Lcom/applovin/adview/AppLovinAdView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v7}, Landroid/view/View;->bringToFront()V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method static synthetic a(Lcom/applovin/impl/adview/x;J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/adview/x;->a(J)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/adview/x;Lcom/applovin/impl/adview/v;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/applovin/impl/adview/x;->a(Lcom/applovin/impl/adview/v;)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/adview/x;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/applovin/impl/adview/x;->k:Z

    return p1
.end method

.method static synthetic b(Lcom/applovin/impl/adview/x;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/x;->a:Landroid/app/Activity;

    return-object v0
.end method

.method private b()V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, -0x2

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/applovin/impl/adview/x;->e:Lcom/applovin/adview/AppLovinAdView;

    invoke-virtual {v1, v0}, Lcom/applovin/adview/AppLovinAdView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/applovin/impl/adview/x;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/applovin/impl/adview/x;->d:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/applovin/impl/adview/x;->d:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/applovin/impl/adview/x;->d:Landroid/widget/RelativeLayout;

    const/high16 v1, -0x45000000    # -0.001953125f

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/applovin/impl/adview/x;->d:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/applovin/impl/adview/x;->e:Lcom/applovin/adview/AppLovinAdView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/applovin/impl/adview/x;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/applovin/impl/adview/x;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic b(Lcom/applovin/impl/adview/x;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/applovin/impl/adview/x;->j:Z

    return p1
.end method

.method static synthetic c(Lcom/applovin/impl/adview/x;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/applovin/impl/adview/x;->k:Z

    return v0
.end method

.method static synthetic d(Lcom/applovin/impl/adview/x;)V
    .locals 0

    invoke-super {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method static synthetic e(Lcom/applovin/impl/adview/x;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/applovin/impl/adview/x;->j:Z

    return v0
.end method

.method static synthetic f(Lcom/applovin/impl/adview/x;)Lcom/applovin/adview/AppLovinAdView;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/x;->e:Lcom/applovin/adview/AppLovinAdView;

    return-object v0
.end method

.method static synthetic g(Lcom/applovin/impl/adview/x;)Lcom/applovin/impl/adview/u;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/x;->g:Lcom/applovin/impl/adview/u;

    return-object v0
.end method

.method static synthetic h(Lcom/applovin/impl/adview/x;)V
    .locals 0

    invoke-direct {p0}, Lcom/applovin/impl/adview/x;->a()V

    return-void
.end method

.method static synthetic i(Lcom/applovin/impl/adview/x;)Lcom/applovin/sdk/AppLovinSdk;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/x;->b:Lcom/applovin/sdk/AppLovinSdk;

    return-object v0
.end method

.method static synthetic j(Lcom/applovin/impl/adview/x;)Lcom/applovin/sdk/AppLovinLogger;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/x;->c:Lcom/applovin/sdk/AppLovinLogger;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/applovin/impl/adview/ah;)V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/adview/x;->e:Lcom/applovin/adview/AppLovinAdView;

    new-instance v1, Lcom/applovin/impl/adview/y;

    invoke-direct {v1, p0, p1}, Lcom/applovin/impl/adview/y;-><init>(Lcom/applovin/impl/adview/x;Lcom/applovin/impl/adview/ah;)V

    invoke-virtual {v0, v1}, Lcom/applovin/adview/AppLovinAdView;->setAdDisplayListener(Lcom/applovin/sdk/AppLovinAdDisplayListener;)V

    iget-object v0, p0, Lcom/applovin/impl/adview/x;->e:Lcom/applovin/adview/AppLovinAdView;

    new-instance v1, Lcom/applovin/impl/adview/z;

    invoke-direct {v1, p0, p1}, Lcom/applovin/impl/adview/z;-><init>(Lcom/applovin/impl/adview/x;Lcom/applovin/impl/adview/ah;)V

    invoke-virtual {v0, v1}, Lcom/applovin/adview/AppLovinAdView;->setAdClickListener(Lcom/applovin/sdk/AppLovinAdClickListener;)V

    iget-object v0, p0, Lcom/applovin/impl/adview/x;->e:Lcom/applovin/adview/AppLovinAdView;

    new-instance v1, Lcom/applovin/impl/adview/aa;

    invoke-direct {v1, p0, p1}, Lcom/applovin/impl/adview/aa;-><init>(Lcom/applovin/impl/adview/x;Lcom/applovin/impl/adview/ah;)V

    invoke-virtual {v0, v1}, Lcom/applovin/adview/AppLovinAdView;->setAdVideoPlaybackListener(Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;)V

    iput-object p1, p0, Lcom/applovin/impl/adview/x;->i:Lcom/applovin/impl/adview/ah;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/applovin/impl/adview/ah;->a(Z)V

    return-void
.end method

.method public a(Lcom/applovin/sdk/AppLovinAd;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/adview/x;->a:Landroid/app/Activity;

    new-instance v1, Lcom/applovin/impl/adview/ab;

    invoke-direct {v1, p0, p1, p2}, Lcom/applovin/impl/adview/ab;-><init>(Lcom/applovin/impl/adview/x;Lcom/applovin/sdk/AppLovinAd;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public dismiss()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/applovin/impl/adview/x;->i:Lcom/applovin/impl/adview/ah;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/adview/x;->i:Lcom/applovin/impl/adview/ah;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/ah;->h()V

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/adview/x;->e:Lcom/applovin/adview/AppLovinAdView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/adview/x;->e:Lcom/applovin/adview/AppLovinAdView;

    invoke-virtual {v0}, Lcom/applovin/adview/AppLovinAdView;->destroy()V

    :cond_1
    iput-object v1, p0, Lcom/applovin/impl/adview/x;->i:Lcom/applovin/impl/adview/ah;

    iput-object v1, p0, Lcom/applovin/impl/adview/x;->e:Lcom/applovin/adview/AppLovinAdView;

    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/applovin/impl/adview/x;->b()V

    return-void
.end method
