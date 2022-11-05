.class public Lcom/applovin/impl/adview/AdViewControllerImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/adview/AdViewController;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lcom/applovin/sdk/AppLovinSdk;

.field private c:Lcom/applovin/sdk/AppLovinAdService;

.field private d:Lcom/applovin/sdk/AppLovinLogger;

.field private e:Lcom/applovin/sdk/AppLovinAdSize;

.field private f:Ljava/lang/String;

.field private g:Lcom/applovin/impl/adview/r;

.field private h:Lcom/applovin/impl/adview/l;

.field private i:Lcom/applovin/impl/adview/o;

.field private j:Lcom/applovin/sdk/AppLovinAd;

.field private k:Ljava/lang/Runnable;

.field private l:Ljava/lang/Runnable;

.field private m:Ljava/lang/Runnable;

.field private volatile n:Lcom/applovin/sdk/AppLovinAd;

.field private o:Lcom/applovin/adview/ClickTrackingOverlayView;

.field private p:Ljava/lang/ref/WeakReference;

.field private final q:Ljava/util/concurrent/atomic/AtomicReference;

.field private volatile r:Z

.field private volatile s:Z

.field private volatile t:Z

.field private volatile u:Z

.field private volatile v:Lcom/applovin/sdk/AppLovinAdLoadListener;

.field private volatile w:Lcom/applovin/sdk/AppLovinAdDisplayListener;

.field private volatile x:Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;

.field private volatile y:Lcom/applovin/sdk/AppLovinAdClickListener;

.field private volatile z:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->n:Lcom/applovin/sdk/AppLovinAd;

    iput-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->o:Lcom/applovin/adview/ClickTrackingOverlayView;

    iput-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->p:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->q:Ljava/util/concurrent/atomic/AtomicReference;

    iput-boolean v1, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->r:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->s:Z

    iput-boolean v1, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->t:Z

    iput-boolean v1, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->u:Z

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/adview/AdViewControllerImpl;)Lcom/applovin/sdk/AppLovinAdLoadListener;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->v:Lcom/applovin/sdk/AppLovinAdLoadListener;

    return-object v0
.end method

.method static synthetic a(Landroid/view/View;Lcom/applovin/sdk/AppLovinAdSize;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/applovin/impl/adview/AdViewControllerImpl;->b(Landroid/view/View;Lcom/applovin/sdk/AppLovinAdSize;)V

    return-void
.end method

.method private a(Landroid/view/ViewGroup;Lcom/applovin/sdk/AppLovinSdk;Lcom/applovin/sdk/AppLovinAdSize;Landroid/content/Context;)V
    .locals 3

    const/4 v1, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No parent view specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No sdk specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No ad size specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    instance-of v0, p4, Landroid/app/Activity;

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Specified context is not an activity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iput-object p2, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->b:Lcom/applovin/sdk/AppLovinSdk;

    invoke-virtual {p2}, Lcom/applovin/sdk/AppLovinSdk;->getAdService()Lcom/applovin/sdk/AppLovinAdService;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->c:Lcom/applovin/sdk/AppLovinAdService;

    invoke-virtual {p2}, Lcom/applovin/sdk/AppLovinSdk;->getLogger()Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->d:Lcom/applovin/sdk/AppLovinLogger;

    iput-object p3, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->e:Lcom/applovin/sdk/AppLovinAdSize;

    move-object v0, p4

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->a:Landroid/app/Activity;

    invoke-static {}, Lcom/applovin/impl/sdk/di;->a()Lcom/applovin/impl/sdk/AppLovinAdImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->j:Lcom/applovin/sdk/AppLovinAd;

    new-instance v0, Lcom/applovin/impl/adview/r;

    invoke-direct {v0, p0, p2}, Lcom/applovin/impl/adview/r;-><init>(Lcom/applovin/impl/adview/AdViewControllerImpl;Lcom/applovin/sdk/AppLovinSdk;)V

    iput-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->g:Lcom/applovin/impl/adview/r;

    new-instance v0, Lcom/applovin/impl/adview/f;

    invoke-direct {v0, p0, v1}, Lcom/applovin/impl/adview/f;-><init>(Lcom/applovin/impl/adview/AdViewControllerImpl;Lcom/applovin/impl/adview/a;)V

    iput-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->m:Ljava/lang/Runnable;

    new-instance v0, Lcom/applovin/impl/adview/k;

    invoke-direct {v0, p0, v1}, Lcom/applovin/impl/adview/k;-><init>(Lcom/applovin/impl/adview/AdViewControllerImpl;Lcom/applovin/impl/adview/a;)V

    iput-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->k:Ljava/lang/Runnable;

    new-instance v0, Lcom/applovin/impl/adview/i;

    invoke-direct {v0, p0, v1}, Lcom/applovin/impl/adview/i;-><init>(Lcom/applovin/impl/adview/AdViewControllerImpl;Lcom/applovin/impl/adview/a;)V

    iput-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->l:Ljava/lang/Runnable;

    new-instance v0, Lcom/applovin/impl/adview/l;

    invoke-direct {v0, p0, p2}, Lcom/applovin/impl/adview/l;-><init>(Lcom/applovin/impl/adview/AdViewControllerImpl;Lcom/applovin/sdk/AppLovinSdk;)V

    iput-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->h:Lcom/applovin/impl/adview/l;

    invoke-static {p4}, Lcom/applovin/impl/adview/AdViewControllerImpl;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->b()Lcom/applovin/impl/adview/o;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->i:Lcom/applovin/impl/adview/o;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->i:Lcom/applovin/impl/adview/o;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->i:Lcom/applovin/impl/adview/o;

    invoke-static {v0, p3}, Lcom/applovin/impl/adview/AdViewControllerImpl;->b(Landroid/view/View;Lcom/applovin/sdk/AppLovinAdSize;)V

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->m:Ljava/lang/Runnable;

    invoke-direct {p0, v0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->a(Ljava/lang/Runnable;)V

    new-instance v0, Lcom/applovin/impl/adview/j;

    invoke-direct {v0, p0, v1}, Lcom/applovin/impl/adview/j;-><init>(Lcom/applovin/impl/adview/AdViewControllerImpl;Lcom/applovin/impl/adview/a;)V

    invoke-direct {p0, v0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->a(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->r:Z

    :goto_0
    return-void

    :cond_4
    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->d:Lcom/applovin/sdk/AppLovinLogger;

    const-string v1, "AppLovinAdView"

    const-string v2, "Web view database is corrupt, AdView not loaded"

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->userError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Lcom/applovin/sdk/AppLovinAd;Lcom/applovin/adview/AppLovinAdView;Landroid/net/Uri;)V
    .locals 6

    const/4 v3, -0x1

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->o:Lcom/applovin/adview/ClickTrackingOverlayView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->d:Lcom/applovin/sdk/AppLovinLogger;

    const-string v1, "AppLovinAdView"

    const-string v2, "Creating and rendering click overlay"

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/applovin/adview/ClickTrackingOverlayView;

    invoke-virtual {p2}, Lcom/applovin/adview/AppLovinAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->b:Lcom/applovin/sdk/AppLovinSdk;

    invoke-direct {v0, v1, v2}, Lcom/applovin/adview/ClickTrackingOverlayView;-><init>(Landroid/content/Context;Lcom/applovin/sdk/AppLovinSdk;)V

    iput-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->o:Lcom/applovin/adview/ClickTrackingOverlayView;

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->o:Lcom/applovin/adview/ClickTrackingOverlayView;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/applovin/adview/ClickTrackingOverlayView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->o:Lcom/applovin/adview/ClickTrackingOverlayView;

    invoke-virtual {p2, v0}, Lcom/applovin/adview/AppLovinAdView;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->o:Lcom/applovin/adview/ClickTrackingOverlayView;

    invoke-virtual {p2, v0}, Lcom/applovin/adview/AppLovinAdView;->bringChildToFront(Landroid/view/View;)V

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->c:Lcom/applovin/sdk/AppLovinAdService;

    check-cast v0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;

    iget-object v2, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->f:Ljava/lang/String;

    move-object v1, p1

    move-object v3, p2

    move-object v4, p0

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->trackForegroundClick(Lcom/applovin/sdk/AppLovinAd;Ljava/lang/String;Lcom/applovin/adview/AppLovinAdView;Lcom/applovin/impl/adview/AdViewControllerImpl;Landroid/net/Uri;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->d:Lcom/applovin/sdk/AppLovinLogger;

    const-string v1, "AppLovinAdView"

    const-string v2, "Skipping click overlay rendering because it already exists"

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->a:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static a(Landroid/content/Context;)Z
    .locals 6

    const/4 v1, 0x0

    const/4 v0, 0x1

    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-ge v2, v3, :cond_0

    invoke-static {p0}, Landroid/webkit/WebViewDatabase;->getInstance(Landroid/content/Context;)Landroid/webkit/WebViewDatabase;

    move-result-object v2

    const-class v3, Landroid/webkit/WebViewDatabase;

    const-string v4, "getCacheTotalSize"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    const-string v2, "AppLovinAdView"

    const-string v3, "Error invoking getCacheTotalSize()"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v2, "AppLovinAdView"

    const-string v3, "Error invoking getCacheTotalSize()"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_2
    move-exception v1

    const-string v2, "AppLovinAdView"

    const-string v3, "Error invoking getCacheTotalSize()"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_3
    move-exception v0

    const-string v2, "AppLovinAdView"

    const-string v3, "getCacheTotalSize() reported exception"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    goto :goto_0

    :catch_4
    move-exception v0

    const-string v2, "AppLovinAdView"

    const-string v3, "Unexpected error while checking DB state"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    goto :goto_0
.end method

.method private b()Lcom/applovin/impl/adview/o;
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Lcom/applovin/impl/adview/o;

    iget-object v1, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->g:Lcom/applovin/impl/adview/r;

    iget-object v2, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->b:Lcom/applovin/sdk/AppLovinSdk;

    iget-object v3, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->a:Landroid/app/Activity;

    invoke-direct {v0, v1, v2, v3}, Lcom/applovin/impl/adview/o;-><init>(Lcom/applovin/impl/adview/r;Lcom/applovin/sdk/AppLovinSdk;Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Lcom/applovin/impl/adview/o;->setBackgroundColor(I)V

    invoke-virtual {v0, v4}, Lcom/applovin/impl/adview/o;->setWillNotCacheDrawing(Z)V

    new-instance v1, Lcom/applovin/impl/sdk/cb;

    iget-object v2, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->b:Lcom/applovin/sdk/AppLovinSdk;

    invoke-direct {v1, v2}, Lcom/applovin/impl/sdk/cb;-><init>(Lcom/applovin/sdk/AppLovinSdk;)V

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/cb;->F()Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/adview/o;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    return-object v0
.end method

.method static synthetic b(Lcom/applovin/impl/adview/AdViewControllerImpl;)Lcom/applovin/sdk/AppLovinLogger;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->d:Lcom/applovin/sdk/AppLovinLogger;

    return-object v0
.end method

.method private static b(Landroid/view/View;Lcom/applovin/sdk/AppLovinAdSize;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, -0x2

    const/4 v0, -0x1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-virtual {p1}, Lcom/applovin/sdk/AppLovinAdSize;->getLabel()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/applovin/sdk/AppLovinAdSize;->INTERSTITIAL:Lcom/applovin/sdk/AppLovinAdSize;

    invoke-virtual {v3}, Lcom/applovin/sdk/AppLovinAdSize;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Lcom/applovin/sdk/AppLovinAdSize;->getLabel()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/applovin/sdk/AppLovinAdSize;->INTERSTITIAL:Lcom/applovin/sdk/AppLovinAdSize;

    invoke-virtual {v4}, Lcom/applovin/sdk/AppLovinAdSize;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v2, v0

    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    :cond_0
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    instance-of v1, v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v1, :cond_1

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :cond_1
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/applovin/sdk/AppLovinAdSize;->getWidth()I

    move-result v1

    if-ne v1, v0, :cond_3

    iget v1, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/applovin/sdk/AppLovinAdSize;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v6, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/applovin/sdk/AppLovinAdSize;->getHeight()I

    move-result v3

    if-ne v3, v0, :cond_5

    iget v0, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    move v2, v0

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Lcom/applovin/sdk/AppLovinAdSize;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v6, v0, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    move v2, v0

    goto :goto_1
.end method

.method static synthetic c(Lcom/applovin/impl/adview/AdViewControllerImpl;)Lcom/applovin/impl/adview/o;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->i:Lcom/applovin/impl/adview/o;

    return-object v0
.end method

.method static synthetic d(Lcom/applovin/impl/adview/AdViewControllerImpl;)Lcom/applovin/sdk/AppLovinAd;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->n:Lcom/applovin/sdk/AppLovinAd;

    return-object v0
.end method

.method static synthetic e(Lcom/applovin/impl/adview/AdViewControllerImpl;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/applovin/impl/adview/AdViewControllerImpl;)Lcom/applovin/sdk/AppLovinSdk;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->b:Lcom/applovin/sdk/AppLovinSdk;

    return-object v0
.end method

.method static synthetic g(Lcom/applovin/impl/adview/AdViewControllerImpl;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->a:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic h(Lcom/applovin/impl/adview/AdViewControllerImpl;)Lcom/applovin/sdk/AppLovinAdDisplayListener;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->w:Lcom/applovin/sdk/AppLovinAdDisplayListener;

    return-object v0
.end method

.method static synthetic i(Lcom/applovin/impl/adview/AdViewControllerImpl;)Lcom/applovin/sdk/AppLovinAdClickListener;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->y:Lcom/applovin/sdk/AppLovinAdClickListener;

    return-object v0
.end method

.method static synthetic j(Lcom/applovin/impl/adview/AdViewControllerImpl;)Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->x:Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;

    return-object v0
.end method


# virtual methods
.method a()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->d:Lcom/applovin/sdk/AppLovinLogger;

    const-string v1, "AppLovinAdView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ad: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->n:Lcom/applovin/sdk/AppLovinAd;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with placement = \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" closed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->m:Ljava/lang/Runnable;

    invoke-direct {p0, v0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->a(Ljava/lang/Runnable;)V

    new-instance v0, Lcom/applovin/impl/adview/h;

    iget-object v1, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->n:Lcom/applovin/sdk/AppLovinAd;

    invoke-direct {v0, p0, v1}, Lcom/applovin/impl/adview/h;-><init>(Lcom/applovin/impl/adview/AdViewControllerImpl;Lcom/applovin/sdk/AppLovinAd;)V

    invoke-direct {p0, v0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->a(Ljava/lang/Runnable;)V

    iput-object v4, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->n:Lcom/applovin/sdk/AppLovinAd;

    iput-object v4, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->f:Ljava/lang/String;

    return-void
.end method

.method a(I)V
    .locals 3

    iget-boolean v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->t:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->c:Lcom/applovin/sdk/AppLovinAdService;

    iget-object v1, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->h:Lcom/applovin/impl/adview/l;

    iget-object v2, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->e:Lcom/applovin/sdk/AppLovinAdSize;

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinAdService;->addAdUpdateListener(Lcom/applovin/sdk/AppLovinAdUpdateListener;Lcom/applovin/sdk/AppLovinAdSize;)V

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->m:Ljava/lang/Runnable;

    invoke-direct {p0, v0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->a(Ljava/lang/Runnable;)V

    :cond_0
    new-instance v0, Lcom/applovin/impl/adview/b;

    invoke-direct {v0, p0, p1}, Lcom/applovin/impl/adview/b;-><init>(Lcom/applovin/impl/adview/AdViewControllerImpl;I)V

    invoke-direct {p0, v0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method a(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 3

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->u:Z

    iget-boolean v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->t:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->c:Lcom/applovin/sdk/AppLovinAdService;

    iget-object v1, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->h:Lcom/applovin/impl/adview/l;

    iget-object v2, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->e:Lcom/applovin/sdk/AppLovinAdSize;

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinAdService;->addAdUpdateListener(Lcom/applovin/sdk/AppLovinAdUpdateListener;Lcom/applovin/sdk/AppLovinAdSize;)V

    invoke-virtual {p0, p1}, Lcom/applovin/impl/adview/AdViewControllerImpl;->renderAd(Lcom/applovin/sdk/AppLovinAd;)V

    :goto_0
    new-instance v0, Lcom/applovin/impl/adview/a;

    invoke-direct {v0, p0, p1}, Lcom/applovin/impl/adview/a;-><init>(Lcom/applovin/impl/adview/AdViewControllerImpl;Lcom/applovin/sdk/AppLovinAd;)V

    invoke-direct {p0, v0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->a(Ljava/lang/Runnable;)V

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->q:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->d:Lcom/applovin/sdk/AppLovinLogger;

    const-string v1, "AppLovinAdView"

    const-string v2, "Ad view has paused when an ad was recieved, ad saved for later"

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->d:Lcom/applovin/sdk/AppLovinLogger;

    const-string v1, "AppLovinAdView"

    const-string v2, "No provided when to the view controller"

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->a(I)V

    goto :goto_1
.end method

.method a(Lcom/applovin/sdk/AppLovinAd;Lcom/applovin/adview/AppLovinAdView;Lcom/applovin/impl/adview/AdViewControllerImpl;Landroid/net/Uri;)V
    .locals 6

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->c:Lcom/applovin/sdk/AppLovinAdService;

    check-cast v0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;

    new-instance v1, Lcom/applovin/impl/sdk/cb;

    iget-object v2, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->b:Lcom/applovin/sdk/AppLovinSdk;

    invoke-direct {v1, v2}, Lcom/applovin/impl/sdk/cb;-><init>(Lcom/applovin/sdk/AppLovinSdk;)V

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/cb;->H()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p4, :cond_0

    invoke-direct {p0, p1, p2, p4}, Lcom/applovin/impl/adview/AdViewControllerImpl;->a(Lcom/applovin/sdk/AppLovinAd;Lcom/applovin/adview/AppLovinAdView;Landroid/net/Uri;)V

    :goto_0
    new-instance v0, Lcom/applovin/impl/adview/g;

    invoke-direct {v0, p0, p1}, Lcom/applovin/impl/adview/g;-><init>(Lcom/applovin/impl/adview/AdViewControllerImpl;Lcom/applovin/sdk/AppLovinAd;)V

    invoke-direct {p0, v0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->a(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->f:Ljava/lang/String;

    move-object v1, p1

    move-object v3, p2

    move-object v4, p0

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->trackClickOn(Lcom/applovin/sdk/AppLovinAd;Ljava/lang/String;Lcom/applovin/adview/AppLovinAdView;Lcom/applovin/impl/adview/AdViewControllerImpl;Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public destroy()V
    .locals 4

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->c:Lcom/applovin/sdk/AppLovinAdService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->c:Lcom/applovin/sdk/AppLovinAdService;

    iget-object v1, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->h:Lcom/applovin/impl/adview/l;

    invoke-virtual {p0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->getSize()Lcom/applovin/sdk/AppLovinAdSize;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinAdService;->removeAdUpdateListener(Lcom/applovin/sdk/AppLovinAdUpdateListener;Lcom/applovin/sdk/AppLovinAdSize;)V

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->i:Lcom/applovin/impl/adview/o;

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->i:Lcom/applovin/impl/adview/o;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/o;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->i:Lcom/applovin/impl/adview/o;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->i:Lcom/applovin/impl/adview/o;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/o;->removeAllViews()V

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->i:Lcom/applovin/impl/adview/o;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/o;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->i:Lcom/applovin/impl/adview/o;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->t:Z

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->d:Lcom/applovin/sdk/AppLovinLogger;

    const-string v2, "AppLovinAdView"

    const-string v3, "Unable to destroy ad view"

    invoke-interface {v1, v2, v3, v0}, Lcom/applovin/sdk/AppLovinLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public dismissInterstitialIfRequired()V
    .locals 2

    new-instance v0, Lcom/applovin/impl/sdk/cb;

    iget-object v1, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->b:Lcom/applovin/sdk/AppLovinSdk;

    invoke-direct {v0, v1}, Lcom/applovin/impl/sdk/cb;-><init>(Lcom/applovin/sdk/AppLovinSdk;)V

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/cb;->L()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->a:Landroid/app/Activity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->a:Landroid/app/Activity;

    instance-of v0, v0, Lcom/applovin/adview/AppLovinInterstitialActivity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->a:Landroid/app/Activity;

    check-cast v0, Lcom/applovin/adview/AppLovinInterstitialActivity;

    invoke-virtual {v0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->dismiss()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->p:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/impl/adview/x;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/applovin/impl/adview/x;->dismiss()V

    goto :goto_0
.end method

.method public getSize()Lcom/applovin/sdk/AppLovinAdSize;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->e:Lcom/applovin/sdk/AppLovinAdSize;

    return-object v0
.end method

.method public initializeAdView(Landroid/view/ViewGroup;Landroid/content/Context;Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinSdk;Landroid/util/AttributeSet;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No parent view specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_2

    const-string v0, "AppLovinSdk"

    const-string v1, "Unable to build AppLovinAdView: no context provided. Please use a different constructor for this view."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-nez p3, :cond_3

    invoke-static {p5}, Lcom/applovin/impl/adview/m;->a(Landroid/util/AttributeSet;)Lcom/applovin/sdk/AppLovinAdSize;

    move-result-object p3

    if-nez p3, :cond_3

    sget-object p3, Lcom/applovin/sdk/AppLovinAdSize;->BANNER:Lcom/applovin/sdk/AppLovinAdSize;

    :cond_3
    if-nez p4, :cond_4

    invoke-static {p2}, Lcom/applovin/sdk/AppLovinSdk;->getInstance(Landroid/content/Context;)Lcom/applovin/sdk/AppLovinSdk;

    move-result-object p4

    :cond_4
    if-eqz p4, :cond_1

    invoke-virtual {p4}, Lcom/applovin/sdk/AppLovinSdk;->hasCriticalErrors()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1, p4, p3, p2}, Lcom/applovin/impl/adview/AdViewControllerImpl;->a(Landroid/view/ViewGroup;Lcom/applovin/sdk/AppLovinSdk;Lcom/applovin/sdk/AppLovinAdSize;Landroid/content/Context;)V

    invoke-static {p5}, Lcom/applovin/impl/adview/m;->b(Landroid/util/AttributeSet;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->loadNextAd()V

    goto :goto_0
.end method

.method public isAdReadyToDisplay()Z
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->b:Lcom/applovin/sdk/AppLovinSdk;

    invoke-virtual {v0}, Lcom/applovin/sdk/AppLovinSdk;->getAdService()Lcom/applovin/sdk/AppLovinAdService;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->e:Lcom/applovin/sdk/AppLovinAdSize;

    invoke-interface {v0, v1}, Lcom/applovin/sdk/AppLovinAdService;->hasPreloadedAd(Lcom/applovin/sdk/AppLovinAdSize;)Z

    move-result v0

    return v0
.end method

.method public isAutoDestroy()Z
    .locals 1

    iget-boolean v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->s:Z

    return v0
.end method

.method public isForegroundClickInvalidated()Z
    .locals 1

    iget-boolean v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->z:Z

    return v0
.end method

.method public loadNextAd()V
    .locals 3

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->b:Lcom/applovin/sdk/AppLovinSdk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->h:Lcom/applovin/impl/adview/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->a:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->r:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->c:Lcom/applovin/sdk/AppLovinAdService;

    iget-object v1, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->e:Lcom/applovin/sdk/AppLovinAdSize;

    iget-object v2, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->h:Lcom/applovin/impl/adview/l;

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinAdService;->loadNextAd(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "AppLovinSdk"

    const-string v1, "Unable to load next ad: AppLovinAdView is not initialized."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onAdHtmlLoaded(Landroid/webkit/WebView;)V
    .locals 4

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->n:Lcom/applovin/sdk/AppLovinAd;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setVisibility(I)V

    :try_start_0
    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->w:Lcom/applovin/sdk/AppLovinAdDisplayListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->w:Lcom/applovin/sdk/AppLovinAdDisplayListener;

    iget-object v1, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->n:Lcom/applovin/sdk/AppLovinAd;

    invoke-interface {v0, v1}, Lcom/applovin/sdk/AppLovinAdDisplayListener;->adDisplayed(Lcom/applovin/sdk/AppLovinAd;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->d:Lcom/applovin/sdk/AppLovinLogger;

    const-string v2, "AppLovinAdView"

    const-string v3, "Exception while notifying ad display listener"

    invoke-interface {v1, v2, v3, v0}, Lcom/applovin/sdk/AppLovinLogger;->userError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 2

    iget-boolean v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->r:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/applovin/impl/adview/h;

    iget-object v1, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->n:Lcom/applovin/sdk/AppLovinAd;

    invoke-direct {v0, p0, v1}, Lcom/applovin/impl/adview/h;-><init>(Lcom/applovin/impl/adview/AdViewControllerImpl;Lcom/applovin/sdk/AppLovinAd;)V

    invoke-direct {p0, v0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->a(Ljava/lang/Runnable;)V

    iget-boolean v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->s:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->destroy()V

    goto :goto_0
.end method

.method public onVisibilityChanged(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->r:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->s:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->pause()V

    goto :goto_0

    :cond_3
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->resume()V

    goto :goto_0
.end method

.method public pause()V
    .locals 3

    iget-boolean v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->r:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->c:Lcom/applovin/sdk/AppLovinAdService;

    iget-object v1, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->h:Lcom/applovin/impl/adview/l;

    invoke-virtual {p0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->getSize()Lcom/applovin/sdk/AppLovinAdSize;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinAdService;->removeAdUpdateListener(Lcom/applovin/sdk/AppLovinAdUpdateListener;Lcom/applovin/sdk/AppLovinAdSize;)V

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->n:Lcom/applovin/sdk/AppLovinAd;

    iget-object v1, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->j:Lcom/applovin/sdk/AppLovinAd;

    invoke-virtual {p0, v1}, Lcom/applovin/impl/adview/AdViewControllerImpl;->renderAd(Lcom/applovin/sdk/AppLovinAd;)V

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->q:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->t:Z

    goto :goto_0
.end method

.method public removeClickTrackingOverlay()V
    .locals 3

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->o:Lcom/applovin/adview/ClickTrackingOverlayView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->o:Lcom/applovin/adview/ClickTrackingOverlayView;

    invoke-virtual {v0}, Lcom/applovin/adview/ClickTrackingOverlayView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->o:Lcom/applovin/adview/ClickTrackingOverlayView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->o:Lcom/applovin/adview/ClickTrackingOverlayView;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->d:Lcom/applovin/sdk/AppLovinLogger;

    const-string v1, "AppLovinAdView"

    const-string v2, "Asked to remove an overlay when none existed. Skipping..."

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public renderAd(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->renderAd(Lcom/applovin/sdk/AppLovinAd;Ljava/lang/String;)V

    return-void
.end method

.method public renderAd(Lcom/applovin/sdk/AppLovinAd;Ljava/lang/String;)V
    .locals 6

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No ad specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-boolean v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->r:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->n:Lcom/applovin/sdk/AppLovinAd;

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->d:Lcom/applovin/sdk/AppLovinLogger;

    const-string v1, "AppLovinAdView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Rendering ad #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lcom/applovin/sdk/AppLovinAd;->getAdIdNumber()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lcom/applovin/sdk/AppLovinAd;->getSize()Lcom/applovin/sdk/AppLovinAdSize;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") over placement: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/applovin/impl/adview/h;

    iget-object v1, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->n:Lcom/applovin/sdk/AppLovinAd;

    invoke-direct {v0, p0, v1}, Lcom/applovin/impl/adview/h;-><init>(Lcom/applovin/impl/adview/AdViewControllerImpl;Lcom/applovin/sdk/AppLovinAd;)V

    invoke-direct {p0, v0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->a(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->q:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->n:Lcom/applovin/sdk/AppLovinAd;

    iput-object p2, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->f:Ljava/lang/String;

    invoke-interface {p1}, Lcom/applovin/sdk/AppLovinAd;->getSize()Lcom/applovin/sdk/AppLovinAdSize;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->e:Lcom/applovin/sdk/AppLovinAdSize;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->k:Ljava/lang/Runnable;

    invoke-direct {p0, v0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->a(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    new-instance v0, Lcom/applovin/impl/sdk/cd;

    iget-object v1, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->b:Lcom/applovin/sdk/AppLovinSdk;

    invoke-direct {v0, v1}, Lcom/applovin/impl/sdk/cd;-><init>(Lcom/applovin/sdk/AppLovinSdk;)V

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/cd;->a()V

    :goto_1
    return-void

    :cond_2
    invoke-interface {p1}, Lcom/applovin/sdk/AppLovinAd;->getSize()Lcom/applovin/sdk/AppLovinAdSize;

    move-result-object v0

    sget-object v1, Lcom/applovin/sdk/AppLovinAdSize;->INTERSTITIAL:Lcom/applovin/sdk/AppLovinAdSize;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->m:Ljava/lang/Runnable;

    invoke-direct {p0, v0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->a(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->l:Ljava/lang/Runnable;

    invoke-direct {p0, v0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->d:Lcom/applovin/sdk/AppLovinLogger;

    const-string v1, "AppLovinAdView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ad #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lcom/applovin/sdk/AppLovinAd;->getAdIdNumber()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is already showing, ignoring"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v0, "AppLovinSdk"

    const-string v1, "Unable to render ad: AppLovinAdView is not initialized."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public resume()V
    .locals 3

    iget-boolean v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->r:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->u:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->c:Lcom/applovin/sdk/AppLovinAdService;

    iget-object v1, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->h:Lcom/applovin/impl/adview/l;

    iget-object v2, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->e:Lcom/applovin/sdk/AppLovinAdSize;

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinAdService;->addAdUpdateListener(Lcom/applovin/sdk/AppLovinAdUpdateListener;Lcom/applovin/sdk/AppLovinAdSize;)V

    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->q:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/sdk/AppLovinAd;

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->renderAd(Lcom/applovin/sdk/AppLovinAd;)V

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->t:Z

    goto :goto_0
.end method

.method public setAdClickListener(Lcom/applovin/sdk/AppLovinAdClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->y:Lcom/applovin/sdk/AppLovinAdClickListener;

    return-void
.end method

.method public setAdDisplayListener(Lcom/applovin/sdk/AppLovinAdDisplayListener;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->w:Lcom/applovin/sdk/AppLovinAdDisplayListener;

    return-void
.end method

.method public setAdLoadListener(Lcom/applovin/sdk/AppLovinAdLoadListener;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->v:Lcom/applovin/sdk/AppLovinAdLoadListener;

    return-void
.end method

.method public setAdVideoPlaybackListener(Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->x:Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;

    return-void
.end method

.method public setAutoDestroy(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->s:Z

    return-void
.end method

.method public setIsForegroundClickInvalidated(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->z:Z

    return-void
.end method

.method public setParentDialog(Ljava/lang/ref/WeakReference;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->p:Ljava/lang/ref/WeakReference;

    return-void
.end method
