.class public final Lcom/flurry/android/ads/FlurryAdBanner;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/flurry/sdk/q;

.field private final c:Lcom/flurry/sdk/kh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/kh",
            "<",
            "Lcom/flurry/sdk/d;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/flurry/android/ads/FlurryAdBannerListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/flurry/android/ads/FlurryAdBanner;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/ads/FlurryAdBanner;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/flurry/android/ads/FlurryAdBanner$1;

    invoke-direct {v0, p0}, Lcom/flurry/android/ads/FlurryAdBanner$1;-><init>(Lcom/flurry/android/ads/FlurryAdBanner;)V

    iput-object v0, p0, Lcom/flurry/android/ads/FlurryAdBanner;->c:Lcom/flurry/sdk/kh;

    .line 111
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v0

    if-nez v0, :cond_0

    .line 112
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Flurry SDK must be initialized before starting a session"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_0
    if-nez p1, :cond_1

    .line 116
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context cannot be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_1
    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_2

    .line 120
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context must be an Activity context!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 124
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Ad space must be specified!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_3
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    if-nez v0, :cond_4

    .line 129
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Could not find FlurryAds module. Please make sure the library is included."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :catch_0
    move-exception v0

    .line 135
    sget-object v1, Lcom/flurry/android/ads/FlurryAdBanner;->a:Ljava/lang/String;

    const-string v2, "Exception: "

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/km;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 137
    :goto_0
    return-void

    .line 131
    :cond_4
    :try_start_1
    new-instance v0, Lcom/flurry/sdk/q;

    invoke-direct {v0, p1, p2, p3}, Lcom/flurry/sdk/q;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/flurry/android/ads/FlurryAdBanner;->b:Lcom/flurry/sdk/q;

    .line 132
    sget-object v0, Lcom/flurry/android/ads/FlurryAdBanner;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BannerAdObject created: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/flurry/android/ads/FlurryAdBanner;->b:Lcom/flurry/sdk/q;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/sdk/km;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-static {}, Lcom/flurry/sdk/ki;->a()Lcom/flurry/sdk/ki;

    move-result-object v0

    const-string v1, "com.flurry.android.impl.ads.AdStateEvent"

    iget-object v2, p0, Lcom/flurry/android/ads/FlurryAdBanner;->c:Lcom/flurry/sdk/kh;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/ki;->a(Ljava/lang/String;Lcom/flurry/sdk/kh;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method static synthetic a(Lcom/flurry/android/ads/FlurryAdBanner;)Lcom/flurry/sdk/q;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/flurry/android/ads/FlurryAdBanner;->b:Lcom/flurry/sdk/q;

    return-object v0
.end method

.method static synthetic b(Lcom/flurry/android/ads/FlurryAdBanner;)Lcom/flurry/android/ads/FlurryAdBannerListener;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/flurry/android/ads/FlurryAdBanner;->d:Lcom/flurry/android/ads/FlurryAdBannerListener;

    return-object v0
.end method


# virtual methods
.method public final destroy()V
    .locals 3

    .prologue
    .line 144
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/ki;->a()Lcom/flurry/sdk/ki;

    move-result-object v0

    const-string v1, "com.flurry.android.impl.ads.AdStateEvent"

    iget-object v2, p0, Lcom/flurry/android/ads/FlurryAdBanner;->c:Lcom/flurry/sdk/kh;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/ki;->b(Ljava/lang/String;Lcom/flurry/sdk/kh;)V

    .line 146
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/ads/FlurryAdBanner;->d:Lcom/flurry/android/ads/FlurryAdBannerListener;

    .line 147
    iget-object v0, p0, Lcom/flurry/android/ads/FlurryAdBanner;->b:Lcom/flurry/sdk/q;

    if-eqz v0, :cond_0

    .line 148
    sget-object v0, Lcom/flurry/android/ads/FlurryAdBanner;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BannerAdObject ready to destroy: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/flurry/android/ads/FlurryAdBanner;->b:Lcom/flurry/sdk/q;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/sdk/km;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/flurry/android/ads/FlurryAdBanner;->b:Lcom/flurry/sdk/q;

    invoke-virtual {v0}, Lcom/flurry/sdk/q;->a()V

    .line 150
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/ads/FlurryAdBanner;->b:Lcom/flurry/sdk/q;

    .line 151
    sget-object v0, Lcom/flurry/android/ads/FlurryAdBanner;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BannerAdObject destroyed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/sdk/km;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 153
    :catch_0
    move-exception v0

    .line 154
    sget-object v1, Lcom/flurry/android/ads/FlurryAdBanner;->a:Ljava/lang/String;

    const-string v2, "Exception: "

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/km;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final displayAd()V
    .locals 3

    .prologue
    .line 207
    :try_start_0
    iget-object v1, p0, Lcom/flurry/android/ads/FlurryAdBanner;->b:Lcom/flurry/sdk/q;

    .line 2231
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2232
    :try_start_1
    sget-object v0, Lcom/flurry/sdk/q$a;->a:Lcom/flurry/sdk/q$a;

    iget-object v2, v1, Lcom/flurry/sdk/q;->k:Lcom/flurry/sdk/q$a;

    invoke-virtual {v0, v2}, Lcom/flurry/sdk/q$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2233
    sget-object v0, Lcom/flurry/sdk/bb;->r:Lcom/flurry/sdk/bb;

    invoke-static {v1, v0}, Lcom/flurry/sdk/fh;->b(Lcom/flurry/sdk/r;Lcom/flurry/sdk/bb;)V

    .line 2244
    :cond_0
    :goto_0
    monitor-exit v1

    :goto_1
    return-void

    .line 2234
    :cond_1
    sget-object v0, Lcom/flurry/sdk/q$a;->b:Lcom/flurry/sdk/q$a;

    iget-object v2, v1, Lcom/flurry/sdk/q;->k:Lcom/flurry/sdk/q$a;

    invoke-virtual {v0, v2}, Lcom/flurry/sdk/q$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2235
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v0

    new-instance v2, Lcom/flurry/sdk/q$3;

    invoke-direct {v2, v1}, Lcom/flurry/sdk/q$3;-><init>(Lcom/flurry/sdk/q;)V

    invoke-virtual {v0, v2}, Lcom/flurry/sdk/jy;->b(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 2244
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 208
    :catch_0
    move-exception v0

    .line 209
    sget-object v1, Lcom/flurry/android/ads/FlurryAdBanner;->a:Ljava/lang/String;

    const-string v2, "Exception: "

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/km;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 2241
    :cond_2
    :try_start_3
    sget-object v0, Lcom/flurry/sdk/q$a;->c:Lcom/flurry/sdk/q$a;

    iget-object v2, v1, Lcom/flurry/sdk/q;->k:Lcom/flurry/sdk/q$a;

    invoke-virtual {v0, v2}, Lcom/flurry/sdk/q$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/flurry/sdk/q$a;->d:Lcom/flurry/sdk/q$a;

    iget-object v2, v1, Lcom/flurry/sdk/q;->k:Lcom/flurry/sdk/q$a;

    invoke-virtual {v0, v2}, Lcom/flurry/sdk/q$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2242
    :cond_3
    invoke-static {v1}, Lcom/flurry/sdk/fh;->b(Lcom/flurry/sdk/r;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public final fetchAd()V
    .locals 3

    .prologue
    .line 194
    :try_start_0
    sget-object v0, Lcom/flurry/android/ads/FlurryAdBanner;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BannerAdObject ready to fetch ad: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/flurry/android/ads/FlurryAdBanner;->b:Lcom/flurry/sdk/q;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/sdk/km;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/flurry/android/ads/FlurryAdBanner;->b:Lcom/flurry/sdk/q;

    invoke-virtual {v0}, Lcom/flurry/sdk/q;->w()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    :goto_0
    return-void

    .line 196
    :catch_0
    move-exception v0

    .line 197
    sget-object v1, Lcom/flurry/android/ads/FlurryAdBanner;->a:Ljava/lang/String;

    const-string v2, "Exception: "

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/km;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final fetchAndDisplayAd()V
    .locals 3

    .prologue
    .line 218
    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/ads/FlurryAdBanner;->b:Lcom/flurry/sdk/q;

    invoke-virtual {v0}, Lcom/flurry/sdk/q;->x()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    :goto_0
    return-void

    .line 219
    :catch_0
    move-exception v0

    .line 220
    sget-object v1, Lcom/flurry/android/ads/FlurryAdBanner;->a:Ljava/lang/String;

    const-string v2, "Exception: "

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/km;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final getAdSpace()Ljava/lang/String;
    .locals 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/flurry/android/ads/FlurryAdBanner;->b:Lcom/flurry/sdk/q;

    if-nez v0, :cond_0

    .line 245
    sget-object v0, Lcom/flurry/android/ads/FlurryAdBanner;->a:Ljava/lang/String;

    const-string v1, "Ad object is null"

    invoke-static {v0, v1}, Lcom/flurry/sdk/km;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const/4 v0, 0x0

    .line 248
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/flurry/android/ads/FlurryAdBanner;->b:Lcom/flurry/sdk/q;

    .line 3186
    iget-object v0, v0, Lcom/flurry/sdk/o;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method public final isReady()Z
    .locals 3

    .prologue
    .line 231
    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/ads/FlurryAdBanner;->b:Lcom/flurry/sdk/q;

    invoke-virtual {v0}, Lcom/flurry/sdk/q;->v()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 234
    :goto_0
    return v0

    .line 232
    :catch_0
    move-exception v0

    .line 233
    sget-object v1, Lcom/flurry/android/ads/FlurryAdBanner;->a:Ljava/lang/String;

    const-string v2, "Exception: "

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/km;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 234
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setListener(Lcom/flurry/android/ads/FlurryAdBannerListener;)V
    .locals 3

    .prologue
    .line 166
    :try_start_0
    iput-object p1, p0, Lcom/flurry/android/ads/FlurryAdBanner;->d:Lcom/flurry/android/ads/FlurryAdBannerListener;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    :goto_0
    return-void

    .line 167
    :catch_0
    move-exception v0

    .line 168
    sget-object v1, Lcom/flurry/android/ads/FlurryAdBanner;->a:Ljava/lang/String;

    const-string v2, "Exception: "

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/km;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final setTargeting(Lcom/flurry/android/ads/FlurryAdTargeting;)V
    .locals 3

    .prologue
    .line 182
    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/ads/FlurryAdBanner;->b:Lcom/flurry/sdk/q;

    .line 1253
    iput-object p1, v0, Lcom/flurry/sdk/o;->j:Lcom/flurry/sdk/e;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :goto_0
    return-void

    .line 183
    :catch_0
    move-exception v0

    .line 184
    sget-object v1, Lcom/flurry/android/ads/FlurryAdBanner;->a:Ljava/lang/String;

    const-string v2, "Exception: "

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/km;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
