.class public Lcom/revmob/client/RevMobClient;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;

.field private static final f:Landroid/util/SparseArray;

.field private static final g:Ljava/util/Map;

.field private static h:Landroid/app/Activity;

.field private static o:Lcom/revmob/client/RevMobClient;


# instance fields
.field private i:Ljava/lang/String;

.field private j:Z

.field private k:Lcom/revmob/RevMobParallaxMode;

.field private l:Z

.field private m:Z

.field private n:Lcom/revmob/RevMobAdsListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "https://android.revmob.com"

    sput-object v0, Lcom/revmob/client/RevMobClient;->e:Ljava/lang/String;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/revmob/client/RevMobClient;->f:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/revmob/client/RevMobClient;->g:Ljava/util/Map;

    const-string v0, "android"

    sput-object v0, Lcom/revmob/client/RevMobClient;->a:Ljava/lang/String;

    const-string v0, "9.2.3"

    sput-object v0, Lcom/revmob/client/RevMobClient;->b:Ljava/lang/String;

    const-string v0, "android"

    sput-object v0, Lcom/revmob/client/RevMobClient;->c:Ljava/lang/String;

    const-string v0, "9.2.3"

    sput-object v0, Lcom/revmob/client/RevMobClient;->d:Ljava/lang/String;

    sget-object v0, Lcom/revmob/client/RevMobClient;->f:Landroid/util/SparseArray;

    const/16 v1, 0xc8

    const-string v2, "OK."

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/revmob/client/RevMobClient;->f:Landroid/util/SparseArray;

    const/16 v1, 0xca

    const-string v2, "OK."

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/revmob/client/RevMobClient;->f:Landroid/util/SparseArray;

    const/16 v1, 0xcc

    const-string v2, "Ad retrieval failed: No ads for this device/country right now or your App ID is paused."

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/revmob/client/RevMobClient;->f:Landroid/util/SparseArray;

    const/16 v1, 0x194

    const-string v2, "No ad retrieved: did you set a valid App ID? Get one at http://revmob.com."

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/revmob/client/RevMobClient;->f:Landroid/util/SparseArray;

    const/16 v1, 0x199

    const-string v2, "No ad retrieved: did you set a valid Placement ID? Get one at http://revmob.com."

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/revmob/client/RevMobClient;->f:Landroid/util/SparseArray;

    const/16 v1, 0x1a6

    const-string v2, "Request requirements did not met. Did you set required permissions?"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/revmob/client/RevMobClient;->f:Landroid/util/SparseArray;

    const/16 v1, 0x1a7

    const-string v2, "Is your ad unit paused? Please, check it in the RevMob Console."

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/revmob/client/RevMobClient;->f:Landroid/util/SparseArray;

    const/16 v1, 0x1f4

    const-string v2, "Unexpected server error."

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/revmob/client/RevMobClient;->f:Landroid/util/SparseArray;

    const/16 v1, 0x1f7

    const-string v2, "Unexpected server error."

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v0, Lcom/revmob/client/RevMobClient;

    invoke-direct {v0}, Lcom/revmob/client/RevMobClient;-><init>()V

    sput-object v0, Lcom/revmob/client/RevMobClient;->o:Lcom/revmob/client/RevMobClient;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/revmob/client/RevMobClient;->j:Z

    sget-object v0, Lcom/revmob/RevMobParallaxMode;->DISABLED:Lcom/revmob/RevMobParallaxMode;

    iput-object v0, p0, Lcom/revmob/client/RevMobClient;->k:Lcom/revmob/RevMobParallaxMode;

    iput-boolean v1, p0, Lcom/revmob/client/RevMobClient;->l:Z

    iput-boolean v1, p0, Lcom/revmob/client/RevMobClient;->m:Z

    return-void
.end method

.method public static a()Lcom/revmob/client/RevMobClient;
    .locals 1

    sget-object v0, Lcom/revmob/client/RevMobClient;->o:Lcom/revmob/client/RevMobClient;

    return-object v0
.end method

.method static synthetic a(Lcom/revmob/client/RevMobClient;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/revmob/client/RevMobClient;->i:Ljava/lang/String;

    return-object v0
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v0, "videos"

    if-eq p0, v0, :cond_0

    const-string v0, "video"

    if-ne p0, v0, :cond_1

    :cond_0
    if-eqz p4, :cond_1

    const-string p0, "rewardedVideos"

    const-string p1, "rewardedVideos"

    :cond_1
    if-eqz p3, :cond_4

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0x18

    if-ne v0, v3, :cond_4

    move v0, v1

    :goto_0
    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "fetch_"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "_with_placement"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/revmob/client/RevMobClient;->g:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    sget-object v1, Lcom/revmob/client/RevMobClient;->g:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "PLACEMENT_ID"

    invoke-virtual {v0, v1, p3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    if-eqz p4, :cond_3

    const-string v1, "fullscreens"

    if-eq p0, v1, :cond_2

    const-string v1, "fullscreen"

    if-ne p0, v1, :cond_3

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?video=true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    return-object v0

    :cond_4
    move v0, v2

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/revmob/client/RevMobClient;->e:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/api/v4/mobile_apps/%s/placements/%s/%s/fetch_only.json"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p2, v4, v2

    aput-object p3, v4, v1

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "fetch_"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/revmob/client/RevMobClient;->g:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    sget-object v1, Lcom/revmob/client/RevMobClient;->g:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_1

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/revmob/client/RevMobClient;->e:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/api/v4/mobile_apps/%s/%s/fetch_only.json"

    new-array v4, v5, [Ljava/lang/Object;

    aput-object p2, v4, v2

    aput-object p1, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1
.end method

.method public static a(I)V
    .locals 2

    const/4 v0, 0x1

    if-le p0, v0, :cond_0

    const/16 v0, 0x12c

    if-ge p0, v0, :cond_0

    sput p0, Lcom/revmob/internal/c;->a:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Timeout changed to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/revmob/internal/RMLog;->i(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "Invalid timeout."

    invoke-static {v0}, Lcom/revmob/internal/RMLog;->w(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(ILcom/revmob/client/f;)V
    .locals 2

    sget-object v0, Lcom/revmob/client/RevMobClient;->f:Landroid/util/SparseArray;

    const-string v1, "RevMob did not answer as expected."

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/revmob/internal/RMLog;->w(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-virtual {p2, v0}, Lcom/revmob/client/f;->b(Ljava/lang/String;)V

    :cond_0
    iget-boolean v1, p0, Lcom/revmob/client/RevMobClient;->l:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/revmob/client/RevMobClient;->n:Lcom/revmob/RevMobAdsListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/revmob/client/RevMobClient;->n:Lcom/revmob/RevMobAdsListener;

    invoke-virtual {v1, v0}, Lcom/revmob/RevMobAdsListener;->onRevMobSessionNotStarted(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/revmob/client/RevMobClient;->l:Z

    :cond_2
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    const-string v0, "errors"

    sget-object v1, Lcom/revmob/client/RevMobClient;->g:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/revmob/client/RevMobClient;->g:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Lcom/revmob/internal/c;

    invoke-direct {v1}, Lcom/revmob/internal/c;-><init>()V

    invoke-virtual {v1, v0, p0}, Lcom/revmob/internal/c;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    :cond_0
    return-void
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    sget-object v0, Lcom/revmob/client/RevMobClient;->g:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/revmob/client/f;)V
    .locals 1

    iget-boolean v0, p0, Lcom/revmob/client/RevMobClient;->j:Z

    if-nez v0, :cond_0

    const-string v0, "You must call RevMobAds.start(activity, APP_ID)."

    invoke-static {v0}, Lcom/revmob/internal/RMLog;->w(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/revmob/client/RevMobClient;->b(Ljava/lang/String;Ljava/lang/String;Lcom/revmob/client/f;)V

    goto :goto_0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Lcom/revmob/client/f;)V
    .locals 1

    new-instance v0, Lcom/revmob/client/e;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/revmob/client/e;-><init>(Lcom/revmob/client/RevMobClient;Ljava/lang/String;Ljava/lang/String;Lcom/revmob/client/f;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic d()Landroid/app/Activity;
    .locals 1

    sget-object v0, Lcom/revmob/client/RevMobClient;->h:Landroid/app/Activity;

    return-object v0
.end method

.method private f(Ljava/lang/String;Lcom/revmob/client/f;)V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/revmob/a/e;->c:Z

    invoke-static {}, Lcom/revmob/a/e;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/revmob/client/RevMobClient;->a(Ljava/lang/String;Ljava/lang/String;Lcom/revmob/client/f;)V

    return-void
.end method

.method public static setSDKName(Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_0

    sput-object p0, Lcom/revmob/client/RevMobClient;->a:Ljava/lang/String;

    const-string v0, "android"

    sput-object v0, Lcom/revmob/client/RevMobClient;->c:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static setSDKVersion(Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_0

    sput-object p0, Lcom/revmob/client/RevMobClient;->b:Ljava/lang/String;

    const-string v0, "9.2.3"

    sput-object v0, Lcom/revmob/client/RevMobClient;->d:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Ljava/lang/String;Lcom/revmob/RevMobAdsListener;)V
    .locals 2

    iget-boolean v0, p0, Lcom/revmob/client/RevMobClient;->j:Z

    if-nez v0, :cond_0

    const-string v0, "You must call RevMobAds.start(activity, APP_ID)."

    invoke-static {v0}, Lcom/revmob/internal/RMLog;->w(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sput-object p1, Lcom/revmob/client/RevMobClient;->h:Landroid/app/Activity;

    sget-object v0, Lcom/revmob/client/RevMobClient;->h:Landroid/app/Activity;

    new-instance v1, Lcom/revmob/client/d;

    invoke-direct {v1, p0, p2, p3}, Lcom/revmob/client/d;-><init>(Lcom/revmob/client/RevMobClient;Ljava/lang/String;Lcom/revmob/RevMobAdsListener;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final a(Lcom/revmob/RevMobParallaxMode;)V
    .locals 1

    iput-object p1, p0, Lcom/revmob/client/RevMobClient;->k:Lcom/revmob/RevMobParallaxMode;

    sget-object v0, Lcom/revmob/RevMobParallaxMode;->DISABLED:Lcom/revmob/RevMobParallaxMode;

    if-eq p1, v0, :cond_0

    const-string v0, "Parallax mode enabled"

    invoke-static {v0}, Lcom/revmob/internal/RMLog;->i(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "Parallax mode disabled"

    invoke-static {v0}, Lcom/revmob/internal/RMLog;->i(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Lcom/revmob/client/a;)V
    .locals 5

    iget-object v0, p1, Lcom/revmob/client/a;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/revmob/client/a;->a:Ljava/lang/String;

    invoke-static {}, Lcom/revmob/a/e;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/revmob/client/b;

    iget-object v3, p1, Lcom/revmob/client/a;->d:Ljava/lang/String;

    iget-object v4, p1, Lcom/revmob/client/a;->e:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/revmob/client/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/revmob/client/RevMobClient;->a(Ljava/lang/String;Ljava/lang/String;Lcom/revmob/client/f;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/revmob/client/f;)V
    .locals 5

    const-string v0, "install"

    sget-object v1, Lcom/revmob/client/RevMobClient;->g:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/revmob/client/RevMobClient;->g:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    invoke-direct {p0, v0, p1, p2}, Lcom/revmob/client/RevMobClient;->a(Ljava/lang/String;Ljava/lang/String;Lcom/revmob/client/f;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/revmob/client/RevMobClient;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/api/v4/mobile_apps/%s/install.json"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/revmob/client/RevMobClient;->i:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Lcom/revmob/client/f;I)V
    .locals 4

    const/4 v0, 0x3

    if-ne p3, v0, :cond_0

    const-string v0, "video"

    const-string v1, "videos"

    iget-object v2, p0, Lcom/revmob/client/RevMobClient;->i:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, p1, v3}, Lcom/revmob/client/RevMobClient;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0, p2}, Lcom/revmob/client/RevMobClient;->f(Ljava/lang/String;Lcom/revmob/client/f;)V

    return-void

    :cond_0
    const-string v0, "video"

    const-string v1, "videos"

    iget-object v2, p0, Lcom/revmob/client/RevMobClient;->i:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, p1, v3}, Lcom/revmob/client/RevMobClient;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method final a(Lorg/apache/http/HttpResponse;Lcom/revmob/client/f;)V
    .locals 7

    const/4 v0, 0x0

    const/4 v6, 0x0

    if-nez p1, :cond_1

    invoke-direct {p0, v0, p2}, Lcom/revmob/client/RevMobClient;->a(ILcom/revmob/client/f;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_2

    const/16 v1, 0xca

    if-eq v0, v1, :cond_2

    invoke-direct {p0, v0, p2}, Lcom/revmob/client/RevMobClient;->a(ILcom/revmob/client/f;)V

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-static {v0}, Lcom/revmob/internal/c;->a(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    const-string v0, "Bad response from server."

    invoke-static {v0}, Lcom/revmob/internal/RMLog;->w(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const-string v0, "Bad response from server."

    invoke-virtual {p2, v0}, Lcom/revmob/client/f;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    :try_start_0
    new-instance v0, Lcom/revmob/internal/l;

    invoke-direct {v0}, Lcom/revmob/internal/l;-><init>()V

    if-eqz p2, :cond_4

    invoke-virtual {v0, v1}, Lcom/revmob/internal/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/revmob/client/f;->a(Ljava/lang/String;)V

    :cond_4
    iget-boolean v0, p0, Lcom/revmob/client/RevMobClient;->l:Z

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/revmob/client/RevMobClient;->l:Z

    iget-object v0, p0, Lcom/revmob/client/RevMobClient;->n:Lcom/revmob/RevMobAdsListener;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/revmob/client/RevMobClient;->n:Lcom/revmob/RevMobAdsListener;

    invoke-virtual {v0}, Lcom/revmob/RevMobAdsListener;->onRevMobSessionStarted()V

    iget-object v0, p0, Lcom/revmob/client/RevMobClient;->n:Lcom/revmob/RevMobAdsListener;

    invoke-virtual {v0}, Lcom/revmob/RevMobAdsListener;->onRevMobSessionIsStarted()V

    :cond_5
    sget-object v2, Lcom/revmob/client/RevMobClient;->o:Lcom/revmob/client/RevMobClient;

    invoke-static {}, Lcom/revmob/a/e;->a()Ljava/lang/String;

    move-result-object v3

    sget-object v0, Lcom/revmob/client/RevMobClient;->g:Ljava/util/Map;

    const-string v4, "user_information"

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/revmob/client/RevMobClient;->g:Ljava/util/Map;

    const-string v4, "user_information"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    sget-object v4, Lcom/revmob/a/e;->f:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->join()V

    const/4 v4, 0x0

    invoke-direct {v2, v0, v3, v4}, Lcom/revmob/client/RevMobClient;->b(Ljava/lang/String;Ljava/lang/String;Lcom/revmob/client/f;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_3

    :cond_6
    :goto_1
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/revmob/client/RevMobClient;->m:Z
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "It was not possible to load RevMob Ad because your device run out of RAM memory."

    invoke-static {v1}, Lcom/revmob/internal/RMLog;->w(Ljava/lang/String;)V

    sget-object v1, Lcom/revmob/internal/w;->c:Lcom/revmob/internal/w;

    const-string v2, "handleSuccess1"

    invoke-static {v0, v6, v1, v6, v2}, Lcom/revmob/internal/u;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const-string v0, "It was not possible to load RevMob Ad because your device run out of RAM memory."

    invoke-virtual {p2, v0}, Lcom/revmob/client/f;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const/4 v2, 0x0

    :try_start_3
    sget-object v3, Lcom/revmob/internal/w;->c:Lcom/revmob/internal/w;

    const/4 v4, 0x0

    const-string v5, "notifyUserInformation"

    invoke-static {v0, v2, v3, v4, v5}, Lcom/revmob/internal/u;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    :catch_2
    move-exception v0

    const-string v2, "Error on parse response from server."

    invoke-static {v2}, Lcom/revmob/internal/RMLog;->w(Ljava/lang/String;)V

    invoke-static {v1, v0}, Lcom/revmob/internal/RMLog;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v1, Lcom/revmob/internal/w;->c:Lcom/revmob/internal/w;

    const-string v2, "handleSuccess2"

    invoke-static {v0, v6, v1, v6, v2}, Lcom/revmob/internal/u;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const-string v0, "Error on parse response from server."

    invoke-virtual {p2, v0}, Lcom/revmob/client/f;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    :try_start_4
    iget-boolean v0, p0, Lcom/revmob/client/RevMobClient;->m:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/revmob/client/RevMobClient;->m:Z
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v0

    sget-object v2, Lcom/revmob/internal/w;->c:Lcom/revmob/internal/w;

    const-string v3, "handleSuccess3"

    invoke-static {v0, v6, v2, v6, v3}, Lcom/revmob/internal/u;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Error on parse response from server. Unknown error."

    invoke-static {v2}, Lcom/revmob/internal/RMLog;->w(Ljava/lang/String;)V

    invoke-static {v1, v0}, Lcom/revmob/internal/RMLog;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz p2, :cond_0

    const-string v0, "Error on parse response from server. Unknown error."

    invoke-virtual {p2, v0}, Lcom/revmob/client/f;->b(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/revmob/client/f;Lcom/revmob/RevMobAdsListener;)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/revmob/client/RevMobClient;->i:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/revmob/client/RevMobClient;->i:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iput-boolean v1, p0, Lcom/revmob/client/RevMobClient;->l:Z

    iput-boolean v1, p0, Lcom/revmob/client/RevMobClient;->j:Z

    iput-object p1, p0, Lcom/revmob/client/RevMobClient;->i:Ljava/lang/String;

    iput-object p4, p0, Lcom/revmob/client/RevMobClient;->n:Lcom/revmob/RevMobAdsListener;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/revmob/client/RevMobClient;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/api/v4/mobile_apps/%s/sessions.json"

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p1, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/revmob/client/RevMobClient;->b(Ljava/lang/String;Ljava/lang/String;Lcom/revmob/client/f;)V

    const/16 v0, 0x1e

    sput v0, Lcom/revmob/internal/c;->a:I

    move v0, v1

    :goto_0
    return v0

    :cond_1
    const-string v1, "You can use just one App Id per application."

    invoke-static {v1}, Lcom/revmob/internal/RMLog;->w(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b()Lcom/revmob/RevMobParallaxMode;
    .locals 1

    iget-object v0, p0, Lcom/revmob/client/RevMobClient;->k:Lcom/revmob/RevMobParallaxMode;

    return-object v0
.end method

.method public final b(Lcom/revmob/client/a;)V
    .locals 3

    iget-object v0, p1, Lcom/revmob/client/a;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/revmob/internal/c;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/revmob/client/a;->g:Ljava/lang/String;

    invoke-static {}, Lcom/revmob/a/e;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/revmob/client/RevMobClient;->a(Ljava/lang/String;Ljava/lang/String;Lcom/revmob/client/f;)V

    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;Lcom/revmob/client/f;)V
    .locals 4

    const-string v0, "fullscreen"

    const-string v1, "fullscreens"

    iget-object v2, p0, Lcom/revmob/client/RevMobClient;->i:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, p1, v3}, Lcom/revmob/client/RevMobClient;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/revmob/client/RevMobClient;->f(Ljava/lang/String;Lcom/revmob/client/f;)V

    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/revmob/client/RevMobClient;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final c(Ljava/lang/String;Lcom/revmob/client/f;)V
    .locals 4

    const-string v0, "fullscreen"

    const-string v1, "fullscreens"

    iget-object v2, p0, Lcom/revmob/client/RevMobClient;->i:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, p1, v3}, Lcom/revmob/client/RevMobClient;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/revmob/client/RevMobClient;->f(Ljava/lang/String;Lcom/revmob/client/f;)V

    return-void
.end method

.method public final d(Ljava/lang/String;Lcom/revmob/client/f;)V
    .locals 4

    const-string v0, "banner"

    const-string v1, "banners"

    iget-object v2, p0, Lcom/revmob/client/RevMobClient;->i:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, p1, v3}, Lcom/revmob/client/RevMobClient;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/revmob/client/RevMobClient;->f(Ljava/lang/String;Lcom/revmob/client/f;)V

    return-void
.end method

.method public final e(Ljava/lang/String;Lcom/revmob/client/f;)V
    .locals 4

    const-string v0, "link"

    const-string v1, "anchors"

    iget-object v2, p0, Lcom/revmob/client/RevMobClient;->i:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, p1, v3}, Lcom/revmob/client/RevMobClient;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/revmob/client/RevMobClient;->f(Ljava/lang/String;Lcom/revmob/client/f;)V

    return-void
.end method
