.class public Lcom/smartadserver/android/library/c/f;
.super Ljava/lang/Object;
.source "SASInMobiAdapter.java"

# interfaces
.implements Lcom/smartadserver/android/library/c/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartadserver/android/library/c/f$b;,
        Lcom/smartadserver/android/library/c/f$a;
    }
.end annotation


# instance fields
.field private a:Lcom/smartadserver/android/library/c/g;

.field private b:Lcom/inmobi/ads/InMobiBanner;

.field private c:Lcom/smartadserver/android/library/c/f$a;

.field private d:Lcom/inmobi/ads/InMobiInterstitial;

.field private e:Lcom/smartadserver/android/library/c/f$b;

.field private f:Lcom/smartadserver/android/library/c/i$a;

.field private g:Lcom/smartadserver/android/library/ui/SASAdView;

.field private h:Z

.field private i:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object v0, p0, Lcom/smartadserver/android/library/c/f;->a:Lcom/smartadserver/android/library/c/g;

    .line 41
    iput-object v0, p0, Lcom/smartadserver/android/library/c/f;->g:Lcom/smartadserver/android/library/ui/SASAdView;

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smartadserver/android/library/c/f;->h:Z

    .line 103
    return-void
.end method

.method private d()V
    .locals 1

    .prologue
    .line 309
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartadserver/android/library/c/f;->d:Lcom/inmobi/ads/InMobiInterstitial;

    .line 311
    return-void
.end method

.method private e()V
    .locals 1

    .prologue
    .line 315
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartadserver/android/library/c/f;->b:Lcom/inmobi/ads/InMobiBanner;

    .line 316
    return-void
.end method


# virtual methods
.method public a()Lcom/smartadserver/android/library/c/g;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/smartadserver/android/library/c/f;->a:Lcom/smartadserver/android/library/c/g;

    return-object v0
.end method

.method public a(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 186
    new-instance v0, Lcom/smartadserver/android/library/c/f$a;

    invoke-direct {v0, p0, v1}, Lcom/smartadserver/android/library/c/f$a;-><init>(Lcom/smartadserver/android/library/c/f;Lcom/smartadserver/android/library/c/f$1;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/c/f;->c:Lcom/smartadserver/android/library/c/f$a;

    .line 187
    new-instance v0, Lcom/smartadserver/android/library/c/f$b;

    invoke-direct {v0, p0, v1}, Lcom/smartadserver/android/library/c/f$b;-><init>(Lcom/smartadserver/android/library/c/f;Lcom/smartadserver/android/library/c/f$1;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/c/f;->e:Lcom/smartadserver/android/library/c/f$b;

    .line 188
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/smartadserver/android/library/ui/SASAdView;Ljava/util/HashMap;Lcom/smartadserver/android/library/c/i$a;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/smartadserver/android/library/ui/SASAdView;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/smartadserver/android/library/c/i$a;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 193
    if-nez p2, :cond_0

    .line 194
    const-string v0, "InMobi ad mediation does not support native ad placements"

    invoke-interface {p4, v0}, Lcom/smartadserver/android/library/c/i$a;->a(Ljava/lang/String;)V

    .line 299
    :goto_0
    return-void

    .line 199
    :cond_0
    iput-object p4, p0, Lcom/smartadserver/android/library/c/f;->f:Lcom/smartadserver/android/library/c/i$a;

    .line 200
    iput-object p2, p0, Lcom/smartadserver/android/library/c/f;->g:Lcom/smartadserver/android/library/ui/SASAdView;

    .line 203
    const-string v0, "accountID"

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 205
    const-wide/16 v2, -0x1

    .line 207
    :try_start_0
    const-string v1, "placementID"

    invoke-virtual {p3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 212
    :goto_1
    iget-boolean v1, p0, Lcom/smartadserver/android/library/c/f;->h:Z

    if-nez v1, :cond_1

    .line 213
    invoke-virtual {p0, p1}, Lcom/smartadserver/android/library/c/f;->a(Landroid/content/Context;)V

    .line 214
    sget-object v1, Lcom/inmobi/sdk/InMobiSdk$LogLevel;->DEBUG:Lcom/inmobi/sdk/InMobiSdk$LogLevel;

    invoke-static {v1}, Lcom/inmobi/sdk/InMobiSdk;->setLogLevel(Lcom/inmobi/sdk/InMobiSdk$LogLevel;)V

    .line 215
    invoke-virtual {p2}, Lcom/smartadserver/android/library/ui/SASAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/inmobi/sdk/InMobiSdk;->init(Landroid/app/Activity;Ljava/lang/String;)V

    .line 217
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/smartadserver/android/library/c/f;->i:Ljava/util/HashMap;

    .line 218
    iget-object v0, p0, Lcom/smartadserver/android/library/c/f;->i:Ljava/util/HashMap;

    const-string v1, "tp"

    const-string v4, "c_smartadserver"

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    iget-object v0, p0, Lcom/smartadserver/android/library/c/f;->i:Ljava/util/HashMap;

    const-string v1, "tp-ver"

    const-string v4, "6.6.2"

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/smartadserver/android/library/c/f;->h:Z

    .line 226
    :cond_1
    iget-object v0, p0, Lcom/smartadserver/android/library/c/f;->g:Lcom/smartadserver/android/library/ui/SASAdView;

    if-eqz v0, :cond_2

    .line 227
    invoke-virtual {p2}, Lcom/smartadserver/android/library/ui/SASAdView;->getLocation()Landroid/location/Location;

    move-result-object v0

    .line 228
    if-eqz v0, :cond_2

    .line 229
    invoke-static {v0}, Lcom/inmobi/sdk/InMobiSdk;->setLocation(Landroid/location/Location;)V

    .line 234
    :cond_2
    invoke-direct {p0}, Lcom/smartadserver/android/library/c/f;->e()V

    .line 235
    invoke-direct {p0}, Lcom/smartadserver/android/library/c/f;->d()V

    .line 240
    instance-of v0, p2, Lcom/smartadserver/android/library/SASBannerView;

    if-eqz v0, :cond_5

    .line 242
    iget-object v0, p0, Lcom/smartadserver/android/library/c/f;->b:Lcom/inmobi/ads/InMobiBanner;

    if-nez v0, :cond_4

    .line 245
    new-instance v1, Lcom/inmobi/ads/InMobiBanner;

    invoke-virtual {p2}, Lcom/smartadserver/android/library/ui/SASAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v1, v0, v2, v3}, Lcom/inmobi/ads/InMobiBanner;-><init>(Landroid/app/Activity;J)V

    iput-object v1, p0, Lcom/smartadserver/android/library/c/f;->b:Lcom/inmobi/ads/InMobiBanner;

    .line 246
    iget-object v0, p0, Lcom/smartadserver/android/library/c/f;->b:Lcom/inmobi/ads/InMobiBanner;

    sget-object v1, Lcom/inmobi/ads/InMobiBanner$AnimationType;->ANIMATION_OFF:Lcom/inmobi/ads/InMobiBanner$AnimationType;

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/InMobiBanner;->setAnimationType(Lcom/inmobi/ads/InMobiBanner$AnimationType;)V

    .line 247
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p2}, Lcom/smartadserver/android/library/ui/SASAdView;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Lcom/smartadserver/android/library/ui/SASAdView;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 248
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 249
    iget-object v1, p0, Lcom/smartadserver/android/library/c/f;->b:Lcom/inmobi/ads/InMobiBanner;

    invoke-virtual {v1, v0}, Lcom/inmobi/ads/InMobiBanner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 252
    sget-boolean v0, Lcom/smartadserver/android/library/g/c;->a:Z

    if-eqz v0, :cond_3

    .line 253
    iget-object v0, p0, Lcom/smartadserver/android/library/c/f;->b:Lcom/inmobi/ads/InMobiBanner;

    const v1, -0xff0001

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/InMobiBanner;->setBackgroundColor(I)V

    .line 257
    :cond_3
    iget-object v0, p0, Lcom/smartadserver/android/library/c/f;->b:Lcom/inmobi/ads/InMobiBanner;

    iget-object v1, p0, Lcom/smartadserver/android/library/c/f;->c:Lcom/smartadserver/android/library/c/f$a;

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/InMobiBanner;->setListener(Lcom/inmobi/ads/InMobiBanner$BannerAdListener;)V

    .line 258
    iget-object v0, p0, Lcom/smartadserver/android/library/c/f;->b:Lcom/inmobi/ads/InMobiBanner;

    invoke-virtual {v0, v5}, Lcom/inmobi/ads/InMobiBanner;->setEnableAutoRefresh(Z)V

    .line 261
    iget-object v0, p0, Lcom/smartadserver/android/library/c/f;->b:Lcom/inmobi/ads/InMobiBanner;

    iget-object v1, p0, Lcom/smartadserver/android/library/c/f;->i:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/InMobiBanner;->setExtras(Ljava/util/Map;)V

    .line 265
    :cond_4
    iget-object v0, p0, Lcom/smartadserver/android/library/c/f;->b:Lcom/inmobi/ads/InMobiBanner;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/InMobiBanner;->setVisibility(I)V

    .line 266
    iget-object v0, p0, Lcom/smartadserver/android/library/c/f;->b:Lcom/inmobi/ads/InMobiBanner;

    invoke-virtual {p2, v0, v5}, Lcom/smartadserver/android/library/ui/SASAdView;->addView(Landroid/view/View;I)V

    .line 269
    iget-object v0, p0, Lcom/smartadserver/android/library/c/f;->b:Lcom/inmobi/ads/InMobiBanner;

    invoke-virtual {v0}, Lcom/inmobi/ads/InMobiBanner;->load()V

    .line 270
    iget-object v0, p0, Lcom/smartadserver/android/library/c/f;->b:Lcom/inmobi/ads/InMobiBanner;

    .line 286
    :goto_2
    new-instance v1, Lcom/smartadserver/android/library/c/f$1;

    invoke-direct {v1, p0, v0}, Lcom/smartadserver/android/library/c/f$1;-><init>(Lcom/smartadserver/android/library/c/f;Landroid/view/View;)V

    iput-object v1, p0, Lcom/smartadserver/android/library/c/f;->a:Lcom/smartadserver/android/library/c/g;

    goto/16 :goto_0

    .line 208
    :catch_0
    move-exception v1

    .line 209
    const-string v1, "SASInMobiAdapter"

    const-string v4, "InMobi Invalid Placement format"

    invoke-static {v1, v4}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 275
    :cond_5
    iget-object v0, p0, Lcom/smartadserver/android/library/c/f;->d:Lcom/inmobi/ads/InMobiInterstitial;

    if-nez v0, :cond_6

    .line 276
    new-instance v1, Lcom/inmobi/ads/InMobiInterstitial;

    invoke-virtual {p2}, Lcom/smartadserver/android/library/ui/SASAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v4, p0, Lcom/smartadserver/android/library/c/f;->e:Lcom/smartadserver/android/library/c/f$b;

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/inmobi/ads/InMobiInterstitial;-><init>(Landroid/app/Activity;JLcom/inmobi/ads/InMobiInterstitial$InterstitialAdListener2;)V

    iput-object v1, p0, Lcom/smartadserver/android/library/c/f;->d:Lcom/inmobi/ads/InMobiInterstitial;

    .line 278
    iget-object v0, p0, Lcom/smartadserver/android/library/c/f;->d:Lcom/inmobi/ads/InMobiInterstitial;

    iget-object v1, p0, Lcom/smartadserver/android/library/c/f;->i:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/InMobiInterstitial;->setExtras(Ljava/util/Map;)V

    .line 280
    :cond_6
    iget-object v0, p0, Lcom/smartadserver/android/library/c/f;->d:Lcom/inmobi/ads/InMobiInterstitial;

    invoke-virtual {v0}, Lcom/inmobi/ads/InMobiInterstitial;->load()V

    .line 281
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public b()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 321
    iput-object v0, p0, Lcom/smartadserver/android/library/c/f;->f:Lcom/smartadserver/android/library/c/i$a;

    .line 322
    iput-object v0, p0, Lcom/smartadserver/android/library/c/f;->g:Lcom/smartadserver/android/library/ui/SASAdView;

    .line 323
    invoke-direct {p0}, Lcom/smartadserver/android/library/c/f;->e()V

    .line 324
    invoke-direct {p0}, Lcom/smartadserver/android/library/c/f;->d()V

    .line 325
    return-void
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 329
    const/4 v0, 0x1

    .line 332
    :try_start_0
    const-string v1, "com.inmobi.ads.InMobiBanner"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    :goto_0
    return v0

    .line 333
    :catch_0
    move-exception v0

    .line 334
    const/4 v0, 0x0

    goto :goto_0
.end method
