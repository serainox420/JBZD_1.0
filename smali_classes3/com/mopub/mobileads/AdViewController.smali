.class public Lcom/mopub/mobileads/AdViewController;
.super Ljava/lang/Object;
.source "AdViewController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/AdViewController$4;
    }
.end annotation


# static fields
.field private static final b:Landroid/widget/FrameLayout$LayoutParams;

.field private static final c:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:I
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation
.end field

.field private final d:J

.field private e:Landroid/content/Context;

.field private f:Lcom/mopub/mobileads/MoPubView;

.field private g:Lcom/mopub/mobileads/WebViewAdUrlGenerator;

.field private h:Lcom/mopub/network/AdResponse;

.field private final i:Ljava/lang/Runnable;

.field private final j:Lcom/mopub/network/AdRequest$Listener;

.field private k:Z

.field private l:Landroid/os/Handler;

.field private m:Z

.field private n:Ljava/lang/String;

.field private o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private p:Z

.field private q:Z

.field private r:Ljava/lang/String;

.field private s:Landroid/location/Location;

.field private t:Z

.field private u:Z

.field private v:Ljava/lang/String;

.field private w:I

.field private x:Lcom/mopub/network/AdRequest;

.field private y:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, -0x2

    .line 47
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x11

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    sput-object v0, Lcom/mopub/mobileads/AdViewController;->b:Landroid/widget/FrameLayout$LayoutParams;

    .line 52
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/mopub/mobileads/AdViewController;->c:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mopub/mobileads/MoPubView;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput v1, p0, Lcom/mopub/mobileads/AdViewController;->a:I

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/AdViewController;->o:Ljava/util/Map;

    .line 74
    iput-boolean v1, p0, Lcom/mopub/mobileads/AdViewController;->p:Z

    .line 75
    iput-boolean v1, p0, Lcom/mopub/mobileads/AdViewController;->q:Z

    .line 94
    iput-object p1, p0, Lcom/mopub/mobileads/AdViewController;->e:Landroid/content/Context;

    .line 95
    iput-object p2, p0, Lcom/mopub/mobileads/AdViewController;->f:Lcom/mopub/mobileads/MoPubView;

    .line 98
    const/4 v0, -0x1

    iput v0, p0, Lcom/mopub/mobileads/AdViewController;->w:I

    .line 99
    invoke-static {}, Lcom/mopub/common/util/Utils;->generateUniqueId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mopub/mobileads/AdViewController;->d:J

    .line 101
    new-instance v0, Lcom/mopub/mobileads/WebViewAdUrlGenerator;

    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/mopub/mobileads/AdViewController;->e:Landroid/content/Context;

    invoke-static {v2}, Lcom/mopub/mraid/MraidNativeCommandHandler;->isStorePictureSupported(Landroid/content/Context;)Z

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/mopub/mobileads/WebViewAdUrlGenerator;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/mopub/mobileads/AdViewController;->g:Lcom/mopub/mobileads/WebViewAdUrlGenerator;

    .line 104
    new-instance v0, Lcom/mopub/mobileads/AdViewController$1;

    invoke-direct {v0, p0}, Lcom/mopub/mobileads/AdViewController$1;-><init>(Lcom/mopub/mobileads/AdViewController;)V

    iput-object v0, p0, Lcom/mopub/mobileads/AdViewController;->j:Lcom/mopub/network/AdRequest$Listener;

    .line 116
    new-instance v0, Lcom/mopub/mobileads/AdViewController$2;

    invoke-direct {v0, p0}, Lcom/mopub/mobileads/AdViewController$2;-><init>(Lcom/mopub/mobileads/AdViewController;)V

    iput-object v0, p0, Lcom/mopub/mobileads/AdViewController;->i:Ljava/lang/Runnable;

    .line 121
    const v0, 0xea60

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/AdViewController;->y:Ljava/lang/Integer;

    .line 122
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/AdViewController;->l:Landroid/os/Handler;

    .line 123
    return-void
.end method

.method static synthetic a(Lcom/mopub/mobileads/AdViewController;Landroid/view/View;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/AdViewController;->c(Landroid/view/View;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method static a(Lcom/mopub/volley/VolleyError;Landroid/content/Context;)Lcom/mopub/mobileads/MoPubErrorCode;
    .locals 2
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 184
    iget-object v0, p0, Lcom/mopub/volley/VolleyError;->networkResponse:Lcom/mopub/volley/NetworkResponse;

    .line 187
    instance-of v1, p0, Lcom/mopub/network/MoPubNetworkError;

    if-eqz v1, :cond_0

    .line 188
    sget-object v0, Lcom/mopub/mobileads/AdViewController$4;->a:[I

    check-cast p0, Lcom/mopub/network/MoPubNetworkError;

    invoke-virtual {p0}, Lcom/mopub/network/MoPubNetworkError;->getReason()Lcom/mopub/network/MoPubNetworkError$Reason;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mopub/network/MoPubNetworkError$Reason;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 194
    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->UNSPECIFIED:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 209
    :goto_0
    return-object v0

    .line 190
    :pswitch_0
    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->WARMUP:Lcom/mopub/mobileads/MoPubErrorCode;

    goto :goto_0

    .line 192
    :pswitch_1
    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    goto :goto_0

    .line 198
    :cond_0
    if-nez v0, :cond_2

    .line 199
    invoke-static {p1}, Lcom/mopub/common/util/DeviceUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 200
    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->NO_CONNECTION:Lcom/mopub/mobileads/MoPubErrorCode;

    goto :goto_0

    .line 202
    :cond_1
    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->UNSPECIFIED:Lcom/mopub/mobileads/MoPubErrorCode;

    goto :goto_0

    .line 205
    :cond_2
    iget-object v0, p0, Lcom/mopub/volley/VolleyError;->networkResponse:Lcom/mopub/volley/NetworkResponse;

    iget v0, v0, Lcom/mopub/volley/NetworkResponse;->statusCode:I

    const/16 v1, 0x190

    if-lt v0, v1, :cond_3

    .line 206
    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->SERVER_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    goto :goto_0

    .line 209
    :cond_3
    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->UNSPECIFIED:Lcom/mopub/mobileads/MoPubErrorCode;

    goto :goto_0

    .line 188
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Lcom/mopub/mobileads/AdViewController;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/mopub/mobileads/AdViewController;->l()V

    return-void
.end method

.method private b(Z)V
    .locals 3

    .prologue
    .line 355
    iget-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->u:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->p:Z

    if-eq v0, p1, :cond_2

    const/4 v0, 0x1

    .line 356
    :goto_0
    if-eqz v0, :cond_0

    .line 357
    if-eqz p1, :cond_3

    const-string v0, "enabled"

    .line 358
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Refresh "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for ad unit ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 361
    :cond_0
    iput-boolean p1, p0, Lcom/mopub/mobileads/AdViewController;->p:Z

    .line 362
    iget-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->u:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->p:Z

    if-eqz v0, :cond_4

    .line 363
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->j()V

    .line 367
    :cond_1
    :goto_2
    return-void

    .line 355
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 357
    :cond_3
    const-string v0, "disabled"

    goto :goto_1

    .line 364
    :cond_4
    iget-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->p:Z

    if-nez v0, :cond_1

    .line 365
    invoke-direct {p0}, Lcom/mopub/mobileads/AdViewController;->m()V

    goto :goto_2
.end method

.method private static b(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lcom/mopub/mobileads/AdViewController;->c:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Landroid/view/View;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 544
    .line 546
    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->h:Lcom/mopub/network/AdResponse;

    if-eqz v1, :cond_1

    .line 547
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->h:Lcom/mopub/network/AdResponse;

    invoke-virtual {v0}, Lcom/mopub/network/AdResponse;->getWidth()Ljava/lang/Integer;

    move-result-object v1

    .line 548
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->h:Lcom/mopub/network/AdResponse;

    invoke-virtual {v0}, Lcom/mopub/network/AdResponse;->getHeight()Ljava/lang/Integer;

    move-result-object v0

    .line 551
    :goto_0
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/mopub/mobileads/AdViewController;->b(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_0

    .line 552
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/mopub/mobileads/AdViewController;->e:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/mopub/common/util/Dips;->asIntPixels(FLandroid/content/Context;)I

    move-result v1

    .line 553
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lcom/mopub/mobileads/AdViewController;->e:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/mopub/common/util/Dips;->asIntPixels(FLandroid/content/Context;)I

    move-result v2

    .line 555
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x11

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 557
    :goto_1
    return-object v0

    :cond_0
    sget-object v0, Lcom/mopub/mobileads/AdViewController;->b:Landroid/widget/FrameLayout$LayoutParams;

    goto :goto_1

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method

.method private l()V
    .locals 1

    .prologue
    .line 223
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->u:Z

    .line 224
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->v:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    const-string v0, "Can\'t load an ad in this ad view because the ad unit ID is not set. Did you forget to call setAdUnitId()?"

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 238
    :goto_0
    return-void

    .line 230
    :cond_0
    invoke-direct {p0}, Lcom/mopub/mobileads/AdViewController;->n()Z

    move-result v0

    if-nez v0, :cond_1

    .line 231
    const-string v0, "Can\'t load an ad because there is no network connectivity."

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 232
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->j()V

    goto :goto_0

    .line 236
    :cond_1
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->i()Ljava/lang/String;

    move-result-object v0

    .line 237
    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/AdViewController;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private m()V
    .locals 2

    .prologue
    .line 507
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->l:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 508
    return-void
.end method

.method private n()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 511
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->e:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 523
    :goto_0
    return v2

    .line 515
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->e:Landroid/content/Context;

    const-string v3, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {v0, v3}, Lcom/mopub/common/util/DeviceUtils;->isPermissionGranted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    move v2, v1

    .line 516
    goto :goto_0

    .line 520
    :cond_1
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->e:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 522
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 523
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    move v2, v0

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method public static setShouldHonorServerDimensions(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 86
    sget-object v0, Lcom/mopub/mobileads/AdViewController;->c:Ljava/util/WeakHashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    .prologue
    .line 283
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->m:Z

    .line 284
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->x:Lcom/mopub/network/AdRequest;

    if-eqz v0, :cond_1

    .line 285
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->x:Lcom/mopub/network/AdRequest;

    invoke-virtual {v0}, Lcom/mopub/network/AdRequest;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->x:Lcom/mopub/network/AdRequest;

    invoke-virtual {v0}, Lcom/mopub/network/AdRequest;->cancel()V

    .line 288
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mopub/mobileads/AdViewController;->x:Lcom/mopub/network/AdRequest;

    .line 290
    :cond_1
    return-void
.end method

.method a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 530
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->l:Landroid/os/Handler;

    new-instance v1, Lcom/mopub/mobileads/AdViewController$3;

    invoke-direct {v1, p0, p1}, Lcom/mopub/mobileads/AdViewController$3;-><init>(Lcom/mopub/mobileads/AdViewController;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 541
    return-void
.end method

.method a(Lcom/mopub/mobileads/MoPubView;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mopub/mobileads/MoPubView;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 170
    invoke-static {p3}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 172
    if-nez p1, :cond_0

    .line 173
    const-string v0, "Can\'t load an ad in this ad view because it was destroyed."

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 178
    :goto_0
    return-void

    .line 177
    :cond_0
    invoke-virtual {p1, p2, p3}, Lcom/mopub/mobileads/MoPubView;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method a(Lcom/mopub/network/AdResponse;)V
    .locals 3
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 127
    const/4 v0, 0x1

    iput v0, p0, Lcom/mopub/mobileads/AdViewController;->a:I

    .line 128
    iput-object p1, p0, Lcom/mopub/mobileads/AdViewController;->h:Lcom/mopub/network/AdResponse;

    .line 130
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->h:Lcom/mopub/network/AdResponse;

    invoke-virtual {v0}, Lcom/mopub/network/AdResponse;->getAdTimeoutMillis()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/mopub/mobileads/AdViewController;->w:I

    :goto_0
    iput v0, p0, Lcom/mopub/mobileads/AdViewController;->w:I

    .line 133
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->h:Lcom/mopub/network/AdResponse;

    invoke-virtual {v0}, Lcom/mopub/network/AdResponse;->getRefreshTimeMillis()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/AdViewController;->y:Ljava/lang/Integer;

    .line 134
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->a()V

    .line 136
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->f:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {p1}, Lcom/mopub/network/AdResponse;->getCustomEventClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mopub/network/AdResponse;->getServerExtras()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/mopub/mobileads/AdViewController;->a(Lcom/mopub/mobileads/MoPubView;Ljava/lang/String;Ljava/util/Map;)V

    .line 139
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->j()V

    .line 140
    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->h:Lcom/mopub/network/AdResponse;

    invoke-virtual {v0}, Lcom/mopub/network/AdResponse;->getAdTimeoutMillis()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method a(Lcom/mopub/volley/VolleyError;)V
    .locals 2
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 144
    instance-of v0, p1, Lcom/mopub/network/MoPubNetworkError;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 151
    check-cast v0, Lcom/mopub/network/MoPubNetworkError;

    .line 152
    invoke-virtual {v0}, Lcom/mopub/network/MoPubNetworkError;->getRefreshTimeMillis()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 153
    invoke-virtual {v0}, Lcom/mopub/network/MoPubNetworkError;->getRefreshTimeMillis()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/AdViewController;->y:Ljava/lang/Integer;

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->e:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/mopub/mobileads/AdViewController;->a(Lcom/mopub/volley/VolleyError;Landroid/content/Context;)Lcom/mopub/mobileads/MoPubErrorCode;

    move-result-object v0

    .line 158
    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->SERVER_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    if-ne v0, v1, :cond_1

    .line 159
    iget v1, p0, Lcom/mopub/mobileads/AdViewController;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mopub/mobileads/AdViewController;->a:I

    .line 162
    :cond_1
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->a()V

    .line 163
    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/AdViewController;->b(Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 164
    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 241
    if-nez p1, :cond_1

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 243
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Loading url: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 244
    iget-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->m:Z

    if-eqz v0, :cond_2

    .line 245
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->v:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Already loading an ad for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", wait to finish."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 251
    :cond_2
    iput-object p1, p0, Lcom/mopub/mobileads/AdViewController;->n:Ljava/lang/String;

    .line 252
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->m:Z

    .line 254
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->n:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/AdViewController;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method a(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 492
    if-eqz p1, :cond_0

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0, p1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    :goto_0
    iput-object v0, p0, Lcom/mopub/mobileads/AdViewController;->o:Ljava/util/Map;

    .line 495
    return-void

    .line 492
    :cond_0
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    goto :goto_0
.end method

.method a(Z)V
    .locals 0

    .prologue
    .line 350
    iput-boolean p1, p0, Lcom/mopub/mobileads/AdViewController;->q:Z

    .line 351
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/AdViewController;->b(Z)V

    .line 352
    return-void
.end method

.method a(Lcom/mopub/mobileads/MoPubErrorCode;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 266
    iput-boolean v1, p0, Lcom/mopub/mobileads/AdViewController;->m:Z

    .line 268
    const-string v2, "MoPub"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MoPubErrorCode: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->h:Lcom/mopub/network/AdResponse;

    if-nez v0, :cond_1

    const-string v0, ""

    .line 271
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 272
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading failover url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 273
    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/AdViewController;->a(Ljava/lang/String;)V

    .line 274
    const/4 v0, 0x1

    .line 278
    :goto_2
    return v0

    .line 268
    :cond_0
    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubErrorCode;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 270
    :cond_1
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->h:Lcom/mopub/network/AdResponse;

    invoke-virtual {v0}, Lcom/mopub/network/AdResponse;->getFailoverUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 277
    :cond_2
    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/AdViewController;->b(Lcom/mopub/mobileads/MoPubErrorCode;)V

    move v0, v1

    .line 278
    goto :goto_2
.end method

.method b()V
    .locals 1

    .prologue
    .line 341
    iget-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->p:Z

    iput-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->q:Z

    .line 342
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mopub/mobileads/AdViewController;->b(Z)V

    .line 343
    return-void
.end method

.method b(Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 1

    .prologue
    .line 469
    const-string v0, "Ad failed to load."

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->i(Ljava/lang/String;)V

    .line 470
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->a()V

    .line 472
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->getMoPubView()Lcom/mopub/mobileads/MoPubView;

    move-result-object v0

    .line 473
    if-nez v0, :cond_0

    .line 479
    :goto_0
    return-void

    .line 477
    :cond_0
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->j()V

    .line 478
    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/MoPubView;->a(Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_0
.end method

.method b(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 436
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->getMoPubView()Lcom/mopub/mobileads/MoPubView;

    move-result-object v1

    .line 437
    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->e:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 438
    :cond_0
    const-string v0, "Can\'t load an ad in this ad view because it was destroyed."

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 439
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->a()V

    .line 452
    :goto_0
    return-void

    .line 443
    :cond_1
    new-instance v0, Lcom/mopub/network/AdRequest;

    invoke-virtual {v1}, Lcom/mopub/mobileads/MoPubView;->getAdFormat()Lcom/mopub/common/AdFormat;

    move-result-object v2

    iget-object v3, p0, Lcom/mopub/mobileads/AdViewController;->v:Ljava/lang/String;

    iget-object v4, p0, Lcom/mopub/mobileads/AdViewController;->e:Landroid/content/Context;

    iget-object v5, p0, Lcom/mopub/mobileads/AdViewController;->j:Lcom/mopub/network/AdRequest$Listener;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/mopub/network/AdRequest;-><init>(Ljava/lang/String;Lcom/mopub/common/AdFormat;Ljava/lang/String;Landroid/content/Context;Lcom/mopub/network/AdRequest$Listener;)V

    .line 449
    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->e:Landroid/content/Context;

    invoke-static {v1}, Lcom/mopub/network/Networking;->getRequestQueue(Landroid/content/Context;)Lcom/mopub/network/MoPubRequestQueue;

    move-result-object v1

    .line 450
    invoke-virtual {v1, v0}, Lcom/mopub/volley/RequestQueue;->add(Lcom/mopub/volley/Request;)Lcom/mopub/volley/Request;

    .line 451
    iput-object v0, p0, Lcom/mopub/mobileads/AdViewController;->x:Lcom/mopub/network/AdRequest;

    goto :goto_0
.end method

.method c()V
    .locals 1

    .prologue
    .line 346
    iget-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->q:Z

    invoke-direct {p0, v0}, Lcom/mopub/mobileads/AdViewController;->b(Z)V

    .line 347
    return-void
.end method

.method d()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 393
    iget-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->k:Z

    if-eqz v0, :cond_0

    .line 414
    :goto_0
    return-void

    .line 397
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->x:Lcom/mopub/network/AdRequest;

    if-eqz v0, :cond_1

    .line 398
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->x:Lcom/mopub/network/AdRequest;

    invoke-virtual {v0}, Lcom/mopub/network/AdRequest;->cancel()V

    .line 399
    iput-object v1, p0, Lcom/mopub/mobileads/AdViewController;->x:Lcom/mopub/network/AdRequest;

    .line 402
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mopub/mobileads/AdViewController;->b(Z)V

    .line 403
    invoke-direct {p0}, Lcom/mopub/mobileads/AdViewController;->m()V

    .line 408
    iput-object v1, p0, Lcom/mopub/mobileads/AdViewController;->f:Lcom/mopub/mobileads/MoPubView;

    .line 409
    iput-object v1, p0, Lcom/mopub/mobileads/AdViewController;->e:Landroid/content/Context;

    .line 410
    iput-object v1, p0, Lcom/mopub/mobileads/AdViewController;->g:Lcom/mopub/mobileads/WebViewAdUrlGenerator;

    .line 413
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->k:Z

    goto :goto_0
.end method

.method e()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 417
    iget v0, p0, Lcom/mopub/mobileads/AdViewController;->w:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method f()V
    .locals 3

    .prologue
    .line 421
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->h:Lcom/mopub/network/AdResponse;

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->h:Lcom/mopub/network/AdResponse;

    invoke-virtual {v0}, Lcom/mopub/network/AdResponse;->getImpressionTrackingUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->e:Landroid/content/Context;

    sget-object v2, Lcom/mopub/common/event/BaseEvent$Name;->IMPRESSION_REQUEST:Lcom/mopub/common/event/BaseEvent$Name;

    invoke-static {v0, v1, v2}, Lcom/mopub/network/TrackingRequest;->makeTrackingHttpRequest(Ljava/lang/String;Landroid/content/Context;Lcom/mopub/common/event/BaseEvent$Name;)V

    .line 425
    :cond_0
    return-void
.end method

.method g()V
    .locals 3

    .prologue
    .line 428
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->h:Lcom/mopub/network/AdResponse;

    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->h:Lcom/mopub/network/AdResponse;

    invoke-virtual {v0}, Lcom/mopub/network/AdResponse;->getClickTrackingUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->e:Landroid/content/Context;

    sget-object v2, Lcom/mopub/common/event/BaseEvent$Name;->CLICK_REQUEST:Lcom/mopub/common/event/BaseEvent$Name;

    invoke-static {v0, v1, v2}, Lcom/mopub/network/TrackingRequest;->makeTrackingHttpRequest(Ljava/lang/String;Landroid/content/Context;Lcom/mopub/common/event/BaseEvent$Name;)V

    .line 433
    :cond_0
    return-void
.end method

.method public getAdHeight()I
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->h:Lcom/mopub/network/AdResponse;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->h:Lcom/mopub/network/AdResponse;

    invoke-virtual {v0}, Lcom/mopub/network/AdResponse;->getHeight()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->h:Lcom/mopub/network/AdResponse;

    invoke-virtual {v0}, Lcom/mopub/network/AdResponse;->getHeight()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 333
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAdReport()Lcom/mopub/common/AdReport;
    .locals 4

    .prologue
    .line 371
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->v:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->h:Lcom/mopub/network/AdResponse;

    if-eqz v0, :cond_0

    .line 372
    new-instance v0, Lcom/mopub/common/AdReport;

    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->v:Ljava/lang/String;

    iget-object v2, p0, Lcom/mopub/mobileads/AdViewController;->e:Landroid/content/Context;

    invoke-static {v2}, Lcom/mopub/common/ClientMetadata;->getInstance(Landroid/content/Context;)Lcom/mopub/common/ClientMetadata;

    move-result-object v2

    iget-object v3, p0, Lcom/mopub/mobileads/AdViewController;->h:Lcom/mopub/network/AdResponse;

    invoke-direct {v0, v1, v2, v3}, Lcom/mopub/common/AdReport;-><init>(Ljava/lang/String;Lcom/mopub/common/ClientMetadata;Lcom/mopub/network/AdResponse;)V

    .line 374
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAdUnitId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->v:Ljava/lang/String;

    return-object v0
.end method

.method public getAdWidth()I
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->h:Lcom/mopub/network/AdResponse;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->h:Lcom/mopub/network/AdResponse;

    invoke-virtual {v0}, Lcom/mopub/network/AdResponse;->getWidth()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->h:Lcom/mopub/network/AdResponse;

    invoke-virtual {v0}, Lcom/mopub/network/AdResponse;->getWidth()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 325
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAutorefreshEnabled()Z
    .locals 1

    .prologue
    .line 337
    iget-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->p:Z

    return v0
.end method

.method public getBroadcastIdentifier()J
    .locals 2

    .prologue
    .line 317
    iget-wide v0, p0, Lcom/mopub/mobileads/AdViewController;->d:J

    return-wide v0
.end method

.method public getKeywords()Ljava/lang/String;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->r:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->s:Landroid/location/Location;

    return-object v0
.end method

.method public getMoPubView()Lcom/mopub/mobileads/MoPubView;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->f:Lcom/mopub/mobileads/MoPubView;

    return-object v0
.end method

.method public getTesting()Z
    .locals 1

    .prologue
    .line 378
    iget-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->t:Z

    return v0
.end method

.method h()V
    .locals 0

    .prologue
    .line 455
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->a()V

    .line 456
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->loadAd()V

    .line 457
    return-void
.end method

.method i()Ljava/lang/String;
    .locals 2

    .prologue
    .line 461
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->g:Lcom/mopub/mobileads/WebViewAdUrlGenerator;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->g:Lcom/mopub/mobileads/WebViewAdUrlGenerator;

    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/WebViewAdUrlGenerator;->withAdUnitId(Ljava/lang/String;)Lcom/mopub/common/AdUrlGenerator;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mopub/common/AdUrlGenerator;->withKeywords(Ljava/lang/String;)Lcom/mopub/common/AdUrlGenerator;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->s:Landroid/location/Location;

    invoke-virtual {v0, v1}, Lcom/mopub/common/AdUrlGenerator;->withLocation(Landroid/location/Location;)Lcom/mopub/common/AdUrlGenerator;

    move-result-object v0

    const-string v1, "ads.mopub.com"

    invoke-virtual {v0, v1}, Lcom/mopub/common/AdUrlGenerator;->generateUrlString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method j()V
    .locals 10

    .prologue
    .line 482
    invoke-direct {p0}, Lcom/mopub/mobileads/AdViewController;->m()V

    .line 483
    iget-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->p:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->y:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->y:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    .line 485
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->l:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->i:Ljava/lang/Runnable;

    const-wide/32 v2, 0x927c0

    iget-object v4, p0, Lcom/mopub/mobileads/AdViewController;->y:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v4, v4

    const-wide/high16 v6, 0x3ff8000000000000L    # 1.5

    iget v8, p0, Lcom/mopub/mobileads/AdViewController;->a:I

    int-to-double v8, v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-long v6, v6

    mul-long/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 489
    :cond_0
    return-void
.end method

.method k()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 501
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->o:Ljava/util/Map;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/TreeMap;

    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->o:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    goto :goto_0
.end method

.method public loadAd()V
    .locals 1

    .prologue
    .line 218
    const/4 v0, 0x1

    iput v0, p0, Lcom/mopub/mobileads/AdViewController;->a:I

    .line 219
    invoke-direct {p0}, Lcom/mopub/mobileads/AdViewController;->l()V

    .line 220
    return-void
.end method

.method public reload()V
    .locals 2

    .prologue
    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reload ad: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->n:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/AdViewController;->a(Ljava/lang/String;)V

    .line 260
    return-void
.end method

.method public setAdUnitId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 313
    iput-object p1, p0, Lcom/mopub/mobileads/AdViewController;->v:Ljava/lang/String;

    .line 314
    return-void
.end method

.method public setKeywords(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 297
    iput-object p1, p0, Lcom/mopub/mobileads/AdViewController;->r:Ljava/lang/String;

    .line 298
    return-void
.end method

.method public setLocation(Landroid/location/Location;)V
    .locals 0

    .prologue
    .line 305
    iput-object p1, p0, Lcom/mopub/mobileads/AdViewController;->s:Landroid/location/Location;

    .line 306
    return-void
.end method

.method public setTesting(Z)V
    .locals 0

    .prologue
    .line 382
    iput-boolean p1, p0, Lcom/mopub/mobileads/AdViewController;->t:Z

    .line 383
    return-void
.end method
