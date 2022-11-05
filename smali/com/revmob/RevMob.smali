.class public Lcom/revmob/RevMob;
.super Ljava/lang/Object;


# static fields
.field public static a:Z

.field public static b:Z

.field private static c:Lcom/revmob/RevMob;

.field private static d:Landroid/widget/RelativeLayout;

.field private static e:Lcom/revmob/ads/banner/RevMobBanner;

.field private static f:Landroid/widget/RelativeLayout$LayoutParams;

.field private static g:Landroid/app/Activity;

.field private static h:Lcom/revmob/RevMobAdsListener;

.field private static i:Lcom/revmob/internal/m;

.field private static j:Lcom/revmob/client/g;

.field private static k:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/revmob/RevMob;->a:Z

    sput-boolean v0, Lcom/revmob/RevMob;->b:Z

    return-void
.end method

.method protected constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/revmob/RevMob;->validateActivity(Landroid/app/Activity;)V

    new-instance v0, Lcom/revmob/a/g;

    invoke-direct {v0, p1}, Lcom/revmob/a/g;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/revmob/a/g;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, p1}, Lcom/revmob/internal/c;->a(Ljava/lang/String;Landroid/app/Activity;)V

    invoke-static {v2, p1}, Lcom/revmob/internal/c;->b(Ljava/lang/String;Landroid/app/Activity;)V

    invoke-static {v2, p1}, Lcom/revmob/internal/c;->c(Ljava/lang/String;Landroid/app/Activity;)V

    invoke-static {v1, p1}, Lcom/revmob/internal/c;->a(ZLandroid/app/Activity;)V

    new-instance v1, Lcom/revmob/client/g;

    sget-object v2, Lcom/revmob/RevMob;->h:Lcom/revmob/RevMobAdsListener;

    invoke-direct {v1, p1, v0, v2}, Lcom/revmob/client/g;-><init>(Landroid/app/Activity;ZLcom/revmob/RevMobAdsListener;)V

    sput-object v1, Lcom/revmob/RevMob;->j:Lcom/revmob/client/g;

    sget-object v0, Lcom/revmob/RevMob;->j:Lcom/revmob/client/g;

    sget-object v1, Lcom/revmob/RevMob;->h:Lcom/revmob/RevMobAdsListener;

    invoke-static {p2, v0, v1, p1}, Lcom/revmob/a/e;->a(Ljava/lang/String;Lcom/revmob/client/f;Lcom/revmob/RevMobAdsListener;Landroid/app/Activity;)V

    invoke-static {p1}, Lcom/revmob/a/a;->a(Landroid/app/Activity;)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method static synthetic access$000()Lcom/revmob/ads/banner/RevMobBanner;
    .locals 1

    sget-object v0, Lcom/revmob/RevMob;->e:Lcom/revmob/ads/banner/RevMobBanner;

    return-object v0
.end method

.method static synthetic access$002(Lcom/revmob/ads/banner/RevMobBanner;)Lcom/revmob/ads/banner/RevMobBanner;
    .locals 0

    sput-object p0, Lcom/revmob/RevMob;->e:Lcom/revmob/ads/banner/RevMobBanner;

    return-object p0
.end method

.method static synthetic access$100()Landroid/widget/RelativeLayout;
    .locals 1

    sget-object v0, Lcom/revmob/RevMob;->d:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$102(Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;
    .locals 0

    sput-object p0, Lcom/revmob/RevMob;->d:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$202(Landroid/app/Activity;)Landroid/app/Activity;
    .locals 0

    sput-object p0, Lcom/revmob/RevMob;->g:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$300()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 1

    sget-object v0, Lcom/revmob/RevMob;->f:Landroid/widget/RelativeLayout$LayoutParams;

    return-object v0
.end method

.method static synthetic access$302(Landroid/widget/RelativeLayout$LayoutParams;)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 0

    sput-object p0, Lcom/revmob/RevMob;->f:Landroid/widget/RelativeLayout$LayoutParams;

    return-object p0
.end method

.method static synthetic access$400(Lcom/revmob/RevMob;Landroid/app/Activity;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/revmob/RevMob;->screenWidth(Landroid/app/Activity;)I

    move-result v0

    return v0
.end method

.method private createBanner(Landroid/app/Activity;Ljava/lang/String;Lcom/revmob/RevMobAdsListener;Z)Lcom/revmob/ads/banner/RevMobBanner;
    .locals 2

    invoke-static {p1}, Lcom/revmob/RevMob;->validateActivity(Landroid/app/Activity;)V

    new-instance v0, Lcom/revmob/ads/banner/RevMobBanner;

    invoke-direct {v0, p1, p3}, Lcom/revmob/ads/banner/RevMobBanner;-><init>(Landroid/app/Activity;Lcom/revmob/RevMobAdsListener;)V

    sget-object v1, Lcom/revmob/RevMob;->k:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "RevMob createBanner"

    sput-object v1, Lcom/revmob/RevMob;->k:Ljava/lang/String;

    :cond_0
    sget-object v1, Lcom/revmob/RevMob;->k:Ljava/lang/String;

    iput-object v1, v0, Lcom/revmob/ads/banner/RevMobBanner;->a:Ljava/lang/String;

    const/4 v1, 0x0

    sput-object v1, Lcom/revmob/RevMob;->k:Ljava/lang/String;

    invoke-virtual {v0, p2}, Lcom/revmob/ads/banner/RevMobBanner;->setPlacementId(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Lcom/revmob/ads/banner/RevMobBanner;->setAutoShow(Z)V

    invoke-virtual {v0}, Lcom/revmob/ads/banner/RevMobBanner;->load()V

    return-object v0
.end method

.method private preloadBanner(Landroid/app/Activity;IIIIILjava/lang/String;Lcom/revmob/RevMobAdsListener;)V
    .locals 10

    sget-object v0, Lcom/revmob/RevMob;->e:Lcom/revmob/ads/banner/RevMobBanner;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/revmob/RevMob;->g:Landroid/app/Activity;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/revmob/RevMob;->g:Landroid/app/Activity;

    new-instance v1, Lcom/revmob/i;

    invoke-direct {v1}, Lcom/revmob/i;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/revmob/j;

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    move v5, p3

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    move v9, p2

    invoke-direct/range {v0 .. v9}, Lcom/revmob/j;-><init>(Lcom/revmob/RevMob;Landroid/app/Activity;Ljava/lang/String;Lcom/revmob/RevMobAdsListener;IIIII)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private rawLink(Landroid/app/Activity;Lcom/revmob/RevMobAdsListener;)Lcom/revmob/ads/link/RevMobLink;
    .locals 1

    invoke-static {p1}, Lcom/revmob/RevMob;->validateActivity(Landroid/app/Activity;)V

    new-instance v0, Lcom/revmob/ads/link/RevMobLink;

    invoke-direct {v0, p1, p2}, Lcom/revmob/ads/link/RevMobLink;-><init>(Landroid/app/Activity;Lcom/revmob/RevMobAdsListener;)V

    return-object v0
.end method

.method private returnFullScreen(Landroid/app/Activity;Ljava/lang/String;Lcom/revmob/RevMobAdsListener;I)Lcom/revmob/ads/interstitial/RevMobFullscreen;
    .locals 1

    invoke-static {p1}, Lcom/revmob/RevMob;->validateActivity(Landroid/app/Activity;)V

    new-instance v0, Lcom/revmob/ads/interstitial/RevMobFullscreen;

    invoke-direct {v0, p1, p3}, Lcom/revmob/ads/interstitial/RevMobFullscreen;-><init>(Landroid/app/Activity;Lcom/revmob/RevMobAdsListener;)V

    invoke-virtual {v0, p2, p4}, Lcom/revmob/ads/interstitial/RevMobFullscreen;->loadFullscreen(Ljava/lang/String;I)V

    return-object v0
.end method

.method private returnRewardedVideo(Landroid/app/Activity;Ljava/lang/String;Lcom/revmob/RevMobAdsListener;)Lcom/revmob/ads/interstitial/RevMobFullscreen;
    .locals 1

    invoke-static {p1}, Lcom/revmob/RevMob;->validateActivity(Landroid/app/Activity;)V

    new-instance v0, Lcom/revmob/ads/interstitial/RevMobFullscreen;

    invoke-direct {v0, p1, p3}, Lcom/revmob/ads/interstitial/RevMobFullscreen;-><init>(Landroid/app/Activity;Lcom/revmob/RevMobAdsListener;)V

    invoke-virtual {v0, p2}, Lcom/revmob/ads/interstitial/RevMobFullscreen;->loadRewardedVideo(Ljava/lang/String;)V

    return-object v0
.end method

.method private returnVideo(Landroid/app/Activity;Ljava/lang/String;Lcom/revmob/RevMobAdsListener;)Lcom/revmob/ads/interstitial/RevMobFullscreen;
    .locals 1

    invoke-static {p1}, Lcom/revmob/RevMob;->validateActivity(Landroid/app/Activity;)V

    new-instance v0, Lcom/revmob/ads/interstitial/RevMobFullscreen;

    invoke-direct {v0, p1, p3}, Lcom/revmob/ads/interstitial/RevMobFullscreen;-><init>(Landroid/app/Activity;Lcom/revmob/RevMobAdsListener;)V

    invoke-virtual {v0, p2}, Lcom/revmob/ads/interstitial/RevMobFullscreen;->loadVideo(Ljava/lang/String;)V

    return-object v0
.end method

.method private screenWidth(Landroid/app/Activity;)I
    .locals 2

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public static session()Lcom/revmob/RevMob;
    .locals 1

    sget-object v0, Lcom/revmob/RevMob;->c:Lcom/revmob/RevMob;

    if-nez v0, :cond_0

    const-string v0, "You must call RevMobAds.start(activity, APP_ID)."

    invoke-static {v0}, Lcom/revmob/internal/RMLog;->w(Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/revmob/RevMob;->c:Lcom/revmob/RevMob;

    return-object v0
.end method

.method public static start(Landroid/app/Activity;)Lcom/revmob/RevMob;
    .locals 5

    sget-object v0, Lcom/revmob/RevMob;->c:Lcom/revmob/RevMob;

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "com.revmob.app.id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/revmob/RevMob;->start(Landroid/app/Activity;Ljava/lang/String;)Lcom/revmob/RevMob;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, ""

    sget-object v2, Lcom/revmob/internal/w;->c:Lcom/revmob/internal/w;

    const/4 v3, 0x0

    const-string v4, "start"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/revmob/internal/u;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You must put the revmob.app.id value in the AndroidManifest.xml file."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/revmob/RevMob;->c:Lcom/revmob/RevMob;

    goto :goto_0
.end method

.method public static start(Landroid/app/Activity;Ljava/lang/String;)Lcom/revmob/RevMob;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/revmob/RevMob;->c:Lcom/revmob/RevMob;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/revmob/RevMob;->validatePermissions(Landroid/app/Activity;)V

    invoke-static {p0}, Lcom/revmob/RevMob;->validateActivity(Landroid/app/Activity;)V

    invoke-static {p0}, Lcom/revmob/RevMob;->validateFullscreenActivity(Landroid/app/Activity;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/revmob/RevMob;->k:Ljava/lang/String;

    new-instance v0, Lcom/revmob/RevMob;

    invoke-direct {v0, p0, p1}, Lcom/revmob/RevMob;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    sput-object v0, Lcom/revmob/RevMob;->c:Lcom/revmob/RevMob;

    :cond_0
    sget-object v0, Lcom/revmob/RevMob;->c:Lcom/revmob/RevMob;

    return-object v0
.end method

.method public static startWithListener(Landroid/app/Activity;Lcom/revmob/RevMobAdsListener;)Lcom/revmob/RevMob;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/revmob/RevMob;->c:Lcom/revmob/RevMob;

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "com.revmob.app.id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object p1, Lcom/revmob/RevMob;->h:Lcom/revmob/RevMobAdsListener;

    invoke-static {p0, v0}, Lcom/revmob/RevMob;->start(Landroid/app/Activity;Ljava/lang/String;)Lcom/revmob/RevMob;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/revmob/internal/w;->c:Lcom/revmob/internal/w;

    const-string v2, "startWithListener"

    invoke-static {v0, v3, v1, v3, v2}, Lcom/revmob/internal/u;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You must the revmob.app.id value in the AndroidManifest.xml file."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/revmob/RevMob;->c:Lcom/revmob/RevMob;

    goto :goto_0
.end method

.method public static startWithListener(Landroid/app/Activity;Lcom/revmob/RevMobAdsListener;Ljava/lang/String;)Lcom/revmob/RevMob;
    .locals 1

    sget-object v0, Lcom/revmob/RevMob;->c:Lcom/revmob/RevMob;

    if-nez v0, :cond_0

    sput-object p1, Lcom/revmob/RevMob;->h:Lcom/revmob/RevMobAdsListener;

    invoke-static {p0, p2}, Lcom/revmob/RevMob;->start(Landroid/app/Activity;Ljava/lang/String;)Lcom/revmob/RevMob;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/revmob/RevMob;->c:Lcom/revmob/RevMob;

    goto :goto_0
.end method

.method public static startWithListenerForWrapper(Landroid/app/Activity;Ljava/lang/String;Lcom/revmob/RevMobAdsListener;)Lcom/revmob/RevMob;
    .locals 1

    sget-object v0, Lcom/revmob/RevMob;->c:Lcom/revmob/RevMob;

    if-nez v0, :cond_0

    sput-object p2, Lcom/revmob/RevMob;->h:Lcom/revmob/RevMobAdsListener;

    invoke-static {p0, p1}, Lcom/revmob/RevMob;->start(Landroid/app/Activity;Ljava/lang/String;)Lcom/revmob/RevMob;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/revmob/RevMob;->i:Lcom/revmob/internal/m;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/revmob/RevMob;->i:Lcom/revmob/internal/m;

    invoke-virtual {v0}, Lcom/revmob/internal/m;->b()V

    :cond_1
    sget-object v0, Lcom/revmob/RevMob;->c:Lcom/revmob/RevMob;

    goto :goto_0
.end method

.method private static validateActivity(Landroid/app/Activity;)V
    .locals 2

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "RevMob: Activity must not be a null value."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private static validateFullscreenActivity(Landroid/app/Activity;)V
    .locals 1

    invoke-static {p0}, Lcom/revmob/FullscreenActivity;->a(Landroid/app/Activity;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "You must declare the RevMob FullscreenActivity in the AndroidManifest.xml file"

    invoke-static {v0}, Lcom/revmob/internal/RMLog;->e(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static validatePermissions(Landroid/app/Activity;)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v0, "INTERNET"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "android.permission."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    if-nez v0, :cond_0

    const-string v0, "Permission %s is required. Add it to your AndroidManifest.xml file"

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "INTERNET"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/revmob/internal/RMLog;->e(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    move v0, v2

    goto :goto_0
.end method


# virtual methods
.method public acceptAndDismissEula()V
    .locals 1

    sget-object v0, Lcom/revmob/RevMob;->j:Lcom/revmob/client/g;

    invoke-virtual {v0}, Lcom/revmob/client/g;->a()Lcom/revmob/internal/m;

    move-result-object v0

    sput-object v0, Lcom/revmob/RevMob;->i:Lcom/revmob/internal/m;

    invoke-virtual {v0}, Lcom/revmob/internal/m;->c()V

    return-void
.end method

.method public createBanner(Landroid/app/Activity;)Lcom/revmob/ads/banner/RevMobBanner;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p1, v1, v1, v0}, Lcom/revmob/RevMob;->createBanner(Landroid/app/Activity;Ljava/lang/String;Lcom/revmob/RevMobAdsListener;Z)Lcom/revmob/ads/banner/RevMobBanner;

    move-result-object v0

    return-object v0
.end method

.method public createBanner(Landroid/app/Activity;Lcom/revmob/RevMobAdsListener;)Lcom/revmob/ads/banner/RevMobBanner;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/revmob/RevMob;->createBanner(Landroid/app/Activity;Ljava/lang/String;Lcom/revmob/RevMobAdsListener;Z)Lcom/revmob/ads/banner/RevMobBanner;

    move-result-object v0

    return-object v0
.end method

.method public createBanner(Landroid/app/Activity;Ljava/lang/String;)Lcom/revmob/ads/banner/RevMobBanner;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/revmob/RevMob;->createBanner(Landroid/app/Activity;Ljava/lang/String;Lcom/revmob/RevMobAdsListener;Z)Lcom/revmob/ads/banner/RevMobBanner;

    move-result-object v0

    return-object v0
.end method

.method public createBanner(Landroid/app/Activity;Ljava/lang/String;Lcom/revmob/RevMobAdsListener;)Lcom/revmob/ads/banner/RevMobBanner;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/revmob/RevMob;->createBanner(Landroid/app/Activity;Ljava/lang/String;Lcom/revmob/RevMobAdsListener;Z)Lcom/revmob/ads/banner/RevMobBanner;

    move-result-object v0

    return-object v0
.end method

.method public createFullscreen(Landroid/app/Activity;Lcom/revmob/RevMobAdsListener;)Lcom/revmob/ads/interstitial/RevMobFullscreen;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/revmob/RevMob;->returnFullScreen(Landroid/app/Activity;Ljava/lang/String;Lcom/revmob/RevMobAdsListener;I)Lcom/revmob/ads/interstitial/RevMobFullscreen;

    move-result-object v0

    return-object v0
.end method

.method public createFullscreen(Landroid/app/Activity;Ljava/lang/String;Lcom/revmob/RevMobAdsListener;)Lcom/revmob/ads/interstitial/RevMobFullscreen;
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/revmob/RevMob;->returnFullScreen(Landroid/app/Activity;Ljava/lang/String;Lcom/revmob/RevMobAdsListener;I)Lcom/revmob/ads/interstitial/RevMobFullscreen;

    move-result-object v0

    return-object v0
.end method

.method public createLink(Landroid/app/Activity;Lcom/revmob/RevMobAdsListener;)Lcom/revmob/ads/link/RevMobLink;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/revmob/RevMob;->createLink(Landroid/app/Activity;Ljava/lang/String;Lcom/revmob/RevMobAdsListener;)Lcom/revmob/ads/link/RevMobLink;

    move-result-object v0

    return-object v0
.end method

.method public createLink(Landroid/app/Activity;Ljava/lang/String;Lcom/revmob/RevMobAdsListener;)Lcom/revmob/ads/link/RevMobLink;
    .locals 1

    invoke-direct {p0, p1, p3}, Lcom/revmob/RevMob;->rawLink(Landroid/app/Activity;Lcom/revmob/RevMobAdsListener;)Lcom/revmob/ads/link/RevMobLink;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/revmob/ads/link/RevMobLink;->load(Ljava/lang/String;)V

    return-object v0
.end method

.method public createRewardedVideo(Landroid/app/Activity;Lcom/revmob/RevMobAdsListener;)Lcom/revmob/ads/interstitial/RevMobFullscreen;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/revmob/RevMob;->returnRewardedVideo(Landroid/app/Activity;Ljava/lang/String;Lcom/revmob/RevMobAdsListener;)Lcom/revmob/ads/interstitial/RevMobFullscreen;

    move-result-object v0

    return-object v0
.end method

.method public createRewardedVideo(Landroid/app/Activity;Ljava/lang/String;Lcom/revmob/RevMobAdsListener;)Lcom/revmob/ads/interstitial/RevMobFullscreen;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/revmob/RevMob;->returnRewardedVideo(Landroid/app/Activity;Ljava/lang/String;Lcom/revmob/RevMobAdsListener;)Lcom/revmob/ads/interstitial/RevMobFullscreen;

    move-result-object v0

    return-object v0
.end method

.method public createVideo(Landroid/app/Activity;Lcom/revmob/RevMobAdsListener;)Lcom/revmob/ads/interstitial/RevMobFullscreen;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/revmob/RevMob;->returnVideo(Landroid/app/Activity;Ljava/lang/String;Lcom/revmob/RevMobAdsListener;)Lcom/revmob/ads/interstitial/RevMobFullscreen;

    move-result-object v0

    return-object v0
.end method

.method public createVideo(Landroid/app/Activity;Ljava/lang/String;Lcom/revmob/RevMobAdsListener;)Lcom/revmob/ads/interstitial/RevMobFullscreen;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/revmob/RevMob;->returnVideo(Landroid/app/Activity;Ljava/lang/String;Lcom/revmob/RevMobAdsListener;)Lcom/revmob/ads/interstitial/RevMobFullscreen;

    move-result-object v0

    return-object v0
.end method

.method public getParallaxMode()Lcom/revmob/RevMobParallaxMode;
    .locals 1

    invoke-static {}, Lcom/revmob/client/RevMobClient;->a()Lcom/revmob/client/RevMobClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/revmob/client/RevMobClient;->b()Lcom/revmob/RevMobParallaxMode;

    move-result-object v0

    return-object v0
.end method

.method public getUserAgeRangeMax()I
    .locals 1

    invoke-static {}, Lcom/revmob/a/h;->c()I

    move-result v0

    return v0
.end method

.method public getUserAgeRangeMin()I
    .locals 1

    invoke-static {}, Lcom/revmob/a/h;->b()I

    move-result v0

    return v0
.end method

.method public getUserBirthday()Ljava/util/Calendar;
    .locals 1

    invoke-static {}, Lcom/revmob/a/h;->d()Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public getUserGender()Lcom/revmob/RevMobUserGender;
    .locals 1

    invoke-static {}, Lcom/revmob/a/h;->a()Lcom/revmob/RevMobUserGender;

    move-result-object v0

    return-object v0
.end method

.method public getUserInterests()Ljava/util/List;
    .locals 1

    invoke-static {}, Lcom/revmob/a/h;->f()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUserPage()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/revmob/a/h;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hideBanner(Landroid/app/Activity;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/revmob/RevMob;->hideLoadedBanner(Landroid/app/Activity;)Z

    return-void
.end method

.method public hideLoadedBanner(Landroid/app/Activity;)Z
    .locals 2

    sget-object v0, Lcom/revmob/RevMob;->g:Landroid/app/Activity;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/revmob/RevMob;->e:Lcom/revmob/ads/banner/RevMobBanner;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/revmob/RevMob;->g:Landroid/app/Activity;

    new-instance v1, Lcom/revmob/k;

    invoke-direct {v1}, Lcom/revmob/k;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRewardedVideoLoaded()Z
    .locals 1

    sget-boolean v0, Lcom/revmob/RevMob;->b:Z

    return v0
.end method

.method public isVideoLoaded()Z
    .locals 1

    sget-boolean v0, Lcom/revmob/RevMob;->a:Z

    return v0
.end method

.method public openLink(Landroid/app/Activity;Lcom/revmob/RevMobAdsListener;)Lcom/revmob/ads/link/RevMobLink;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/revmob/RevMob;->openLink(Landroid/app/Activity;Ljava/lang/String;Lcom/revmob/RevMobAdsListener;)Lcom/revmob/ads/link/RevMobLink;

    move-result-object v0

    return-object v0
.end method

.method public openLink(Landroid/app/Activity;Ljava/lang/String;Lcom/revmob/RevMobAdsListener;)Lcom/revmob/ads/link/RevMobLink;
    .locals 1

    invoke-direct {p0, p1, p3}, Lcom/revmob/RevMob;->rawLink(Landroid/app/Activity;Lcom/revmob/RevMobAdsListener;)Lcom/revmob/ads/link/RevMobLink;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/revmob/ads/link/RevMobLink;->open(Ljava/lang/String;)V

    return-object v0
.end method

.method public preLoadBanner(Landroid/app/Activity;)Lcom/revmob/ads/banner/RevMobBanner;
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p1, v1, v1, v0}, Lcom/revmob/RevMob;->createBanner(Landroid/app/Activity;Ljava/lang/String;Lcom/revmob/RevMobAdsListener;Z)Lcom/revmob/ads/banner/RevMobBanner;

    move-result-object v0

    return-object v0
.end method

.method public preLoadBanner(Landroid/app/Activity;Lcom/revmob/RevMobAdsListener;)Lcom/revmob/ads/banner/RevMobBanner;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/revmob/RevMob;->createBanner(Landroid/app/Activity;Ljava/lang/String;Lcom/revmob/RevMobAdsListener;Z)Lcom/revmob/ads/banner/RevMobBanner;

    move-result-object v0

    return-object v0
.end method

.method public preLoadBanner(Landroid/app/Activity;Ljava/lang/String;)Lcom/revmob/ads/banner/RevMobBanner;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/revmob/RevMob;->createBanner(Landroid/app/Activity;Ljava/lang/String;Lcom/revmob/RevMobAdsListener;Z)Lcom/revmob/ads/banner/RevMobBanner;

    move-result-object v0

    return-object v0
.end method

.method public preLoadBanner(Landroid/app/Activity;Ljava/lang/String;Lcom/revmob/RevMobAdsListener;)Lcom/revmob/ads/banner/RevMobBanner;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/revmob/RevMob;->createBanner(Landroid/app/Activity;Ljava/lang/String;Lcom/revmob/RevMobAdsListener;Z)Lcom/revmob/ads/banner/RevMobBanner;

    move-result-object v0

    return-object v0
.end method

.method public printEnvironmentInformation(Landroid/app/Activity;)V
    .locals 1

    invoke-static {p1}, Lcom/revmob/RevMob;->validateActivity(Landroid/app/Activity;)V

    invoke-static {}, Lcom/revmob/client/RevMobClient;->a()Lcom/revmob/client/RevMobClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/revmob/client/RevMobClient;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/revmob/a/e;->a(Ljava/lang/String;Landroid/app/Activity;)V

    return-void
.end method

.method public rejectEula()V
    .locals 1

    sget-object v0, Lcom/revmob/RevMob;->j:Lcom/revmob/client/g;

    invoke-virtual {v0}, Lcom/revmob/client/g;->a()Lcom/revmob/internal/m;

    move-result-object v0

    sput-object v0, Lcom/revmob/RevMob;->i:Lcom/revmob/internal/m;

    invoke-virtual {v0}, Lcom/revmob/internal/m;->d()V

    return-void
.end method

.method public releaseBanner(Landroid/app/Activity;)V
    .locals 2

    sget-object v0, Lcom/revmob/RevMob;->g:Landroid/app/Activity;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/revmob/RevMob;->g:Landroid/app/Activity;

    new-instance v1, Lcom/revmob/h;

    invoke-direct {v1}, Lcom/revmob/h;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public releaseLoadedBanner()V
    .locals 1

    sget-object v0, Lcom/revmob/RevMob;->g:Landroid/app/Activity;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/revmob/RevMob;->g:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/revmob/RevMob;->releaseBanner(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public setParallaxMode(Lcom/revmob/RevMobParallaxMode;)V
    .locals 1

    invoke-static {}, Lcom/revmob/client/RevMobClient;->a()Lcom/revmob/client/RevMobClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/revmob/client/RevMobClient;->a(Lcom/revmob/RevMobParallaxMode;)V

    return-void
.end method

.method public setTimeoutInSeconds(I)V
    .locals 0

    invoke-static {}, Lcom/revmob/client/RevMobClient;->a()Lcom/revmob/client/RevMobClient;

    invoke-static {p1}, Lcom/revmob/client/RevMobClient;->a(I)V

    return-void
.end method

.method public setUserAgeRangeMax(I)V
    .locals 0

    invoke-static {p1}, Lcom/revmob/a/h;->b(I)V

    return-void
.end method

.method public setUserAgeRangeMin(I)V
    .locals 0

    invoke-static {p1}, Lcom/revmob/a/h;->a(I)V

    return-void
.end method

.method public setUserBirthday(Ljava/util/Calendar;)V
    .locals 0

    invoke-static {p1}, Lcom/revmob/a/h;->a(Ljava/util/Calendar;)V

    return-void
.end method

.method public setUserEmail(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lcom/revmob/a/h;->b(Ljava/lang/String;)V

    return-void
.end method

.method public setUserGender(Lcom/revmob/RevMobUserGender;)V
    .locals 0

    invoke-static {p1}, Lcom/revmob/a/h;->a(Lcom/revmob/RevMobUserGender;)V

    return-void
.end method

.method public setUserInterests(Ljava/util/List;)V
    .locals 0

    invoke-static {p1}, Lcom/revmob/a/h;->a(Ljava/util/List;)V

    return-void
.end method

.method public setUserPage(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lcom/revmob/a/h;->a(Ljava/lang/String;)V

    return-void
.end method

.method public showBanner(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/revmob/RevMob;->showBanner(Landroid/app/Activity;Ljava/lang/String;Lcom/revmob/RevMobAdsListener;)V

    return-void
.end method

.method public showBanner(Landroid/app/Activity;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/revmob/RevMob;->showBanner(Landroid/app/Activity;ILjava/lang/String;Lcom/revmob/RevMobAdsListener;)V

    return-void
.end method

.method public showBanner(Landroid/app/Activity;IIIII)V
    .locals 9

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object v8, v7

    invoke-virtual/range {v0 .. v8}, Lcom/revmob/RevMob;->showBanner(Landroid/app/Activity;IIIIILjava/lang/String;Lcom/revmob/RevMobAdsListener;)V

    return-void
.end method

.method public showBanner(Landroid/app/Activity;IIIIILjava/lang/String;Lcom/revmob/RevMobAdsListener;)V
    .locals 2

    const/16 v1, -0x90

    const-string v0, "RevMob showBanner"

    sput-object v0, Lcom/revmob/RevMob;->k:Ljava/lang/String;

    if-ne p3, v1, :cond_0

    if-ne p4, v1, :cond_0

    if-ne p5, v1, :cond_0

    if-eq p6, v1, :cond_1

    :cond_0
    const-string v0, "RevMob showBannerCustom"

    sput-object v0, Lcom/revmob/RevMob;->k:Ljava/lang/String;

    :cond_1
    invoke-direct/range {p0 .. p8}, Lcom/revmob/RevMob;->preloadBanner(Landroid/app/Activity;IIIIILjava/lang/String;Lcom/revmob/RevMobAdsListener;)V

    return-void
.end method

.method public showBanner(Landroid/app/Activity;ILjava/lang/String;Lcom/revmob/RevMobAdsListener;)V
    .locals 9

    const/16 v3, -0x90

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, v3

    move v5, v3

    move v6, v3

    move-object v7, p3

    move-object v8, p4

    invoke-virtual/range {v0 .. v8}, Lcom/revmob/RevMob;->showBanner(Landroid/app/Activity;IIIIILjava/lang/String;Lcom/revmob/RevMobAdsListener;)V

    return-void
.end method

.method public showBanner(Landroid/app/Activity;Lcom/revmob/RevMobAdsListener;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/revmob/RevMob;->showBanner(Landroid/app/Activity;Ljava/lang/String;Lcom/revmob/RevMobAdsListener;)V

    return-void
.end method

.method public showBanner(Landroid/app/Activity;Ljava/lang/String;Lcom/revmob/RevMobAdsListener;)V
    .locals 1

    const/16 v0, 0x50

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/revmob/RevMob;->showBanner(Landroid/app/Activity;ILjava/lang/String;Lcom/revmob/RevMobAdsListener;)V

    return-void
.end method

.method public showFullscreen(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/revmob/RevMob;->showFullscreen(Landroid/app/Activity;Ljava/lang/String;Lcom/revmob/RevMobAdsListener;)V

    return-void
.end method

.method public showFullscreen(Landroid/app/Activity;Lcom/revmob/RevMobAdsListener;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/revmob/RevMob;->showFullscreen(Landroid/app/Activity;Ljava/lang/String;Lcom/revmob/RevMobAdsListener;)V

    return-void
.end method

.method public showFullscreen(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/revmob/RevMob;->showFullscreen(Landroid/app/Activity;Ljava/lang/String;Lcom/revmob/RevMobAdsListener;)V

    return-void
.end method

.method public showFullscreen(Landroid/app/Activity;Ljava/lang/String;Lcom/revmob/RevMobAdsListener;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/revmob/RevMob;->returnFullScreen(Landroid/app/Activity;Ljava/lang/String;Lcom/revmob/RevMobAdsListener;I)Lcom/revmob/ads/interstitial/RevMobFullscreen;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/revmob/ads/interstitial/RevMobFullscreen;->setAutoShow(Z)V

    return-void
.end method
