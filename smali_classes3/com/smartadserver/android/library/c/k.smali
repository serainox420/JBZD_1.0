.class public Lcom/smartadserver/android/library/c/k;
.super Ljava/lang/Object;
.source "SASMillennialAdapter.java"

# interfaces
.implements Lcom/smartadserver/android/library/c/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartadserver/android/library/c/k$b;,
        Lcom/smartadserver/android/library/c/k$a;
    }
.end annotation


# instance fields
.field private a:Lcom/millennialmedia/InlineAd;

.field private b:Lcom/millennialmedia/InterstitialAd;

.field private c:Lcom/smartadserver/android/library/c/g;

.field private d:Landroid/widget/RelativeLayout;

.field private e:Lcom/smartadserver/android/library/c/k$a;

.field private f:Lcom/smartadserver/android/library/c/k$b;

.field private g:Lcom/smartadserver/android/library/c/i$a;

.field private h:Lcom/smartadserver/android/library/ui/SASAdView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object v0, p0, Lcom/smartadserver/android/library/c/k;->c:Lcom/smartadserver/android/library/c/g;

    .line 46
    iput-object v0, p0, Lcom/smartadserver/android/library/c/k;->h:Lcom/smartadserver/android/library/ui/SASAdView;

    .line 114
    return-void
.end method

.method static synthetic a(Lcom/smartadserver/android/library/c/k;)Lcom/smartadserver/android/library/c/i$a;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/smartadserver/android/library/c/k;->g:Lcom/smartadserver/android/library/c/i$a;

    return-object v0
.end method

.method static synthetic b(Lcom/smartadserver/android/library/c/k;)Lcom/smartadserver/android/library/ui/SASAdView;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/smartadserver/android/library/c/k;->h:Lcom/smartadserver/android/library/ui/SASAdView;

    return-object v0
.end method

.method static synthetic c(Lcom/smartadserver/android/library/c/k;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/smartadserver/android/library/c/k;->d:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic d(Lcom/smartadserver/android/library/c/k;)Lcom/millennialmedia/InterstitialAd;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/smartadserver/android/library/c/k;->b:Lcom/millennialmedia/InterstitialAd;

    return-object v0
.end method

.method private d()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 309
    iget-object v0, p0, Lcom/smartadserver/android/library/c/k;->b:Lcom/millennialmedia/InterstitialAd;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/smartadserver/android/library/c/k;->b:Lcom/millennialmedia/InterstitialAd;

    invoke-virtual {v0, v1}, Lcom/millennialmedia/InterstitialAd;->setListener(Lcom/millennialmedia/InterstitialAd$InterstitialListener;)V

    .line 312
    :cond_0
    iput-object v1, p0, Lcom/smartadserver/android/library/c/k;->b:Lcom/millennialmedia/InterstitialAd;

    .line 314
    return-void
.end method

.method private e()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 318
    iget-object v0, p0, Lcom/smartadserver/android/library/c/k;->a:Lcom/millennialmedia/InlineAd;

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/smartadserver/android/library/c/k;->a:Lcom/millennialmedia/InlineAd;

    invoke-virtual {v0, v1}, Lcom/millennialmedia/InlineAd;->setListener(Lcom/millennialmedia/InlineAd$InlineListener;)V

    .line 321
    :cond_0
    iput-object v1, p0, Lcom/smartadserver/android/library/c/k;->a:Lcom/millennialmedia/InlineAd;

    .line 322
    iget-object v0, p0, Lcom/smartadserver/android/library/c/k;->d:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    .line 323
    iget-object v0, p0, Lcom/smartadserver/android/library/c/k;->d:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 324
    iget-object v0, p0, Lcom/smartadserver/android/library/c/k;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 326
    :cond_1
    return-void
.end method


# virtual methods
.method public a()Lcom/smartadserver/android/library/c/g;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/smartadserver/android/library/c/k;->c:Lcom/smartadserver/android/library/c/g;

    return-object v0
.end method

.method public a(Landroid/app/Activity;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 190
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/millennialmedia/MMLog;->setLogLevel(I)V

    .line 191
    invoke-static {p1}, Lcom/millennialmedia/MMSDK;->initialize(Landroid/app/Activity;)V

    .line 193
    new-instance v0, Lcom/smartadserver/android/library/c/k$a;

    invoke-direct {v0, p0, v1}, Lcom/smartadserver/android/library/c/k$a;-><init>(Lcom/smartadserver/android/library/c/k;Lcom/smartadserver/android/library/c/k$1;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/c/k;->e:Lcom/smartadserver/android/library/c/k$a;

    .line 194
    new-instance v0, Lcom/smartadserver/android/library/c/k$b;

    invoke-direct {v0, p0, v1}, Lcom/smartadserver/android/library/c/k$b;-><init>(Lcom/smartadserver/android/library/c/k;Lcom/smartadserver/android/library/c/k$1;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/c/k;->f:Lcom/smartadserver/android/library/c/k$b;

    .line 195
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/smartadserver/android/library/ui/SASAdView;Ljava/util/HashMap;Lcom/smartadserver/android/library/c/i$a;)V
    .locals 5
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
    const/4 v2, 0x0

    .line 200
    if-nez p2, :cond_0

    .line 201
    const-string v0, "Millennial ad mediation does not support native ad placements"

    invoke-interface {p4, v0}, Lcom/smartadserver/android/library/c/i$a;->a(Ljava/lang/String;)V

    .line 300
    :goto_0
    return-void

    .line 206
    :cond_0
    iput-object p4, p0, Lcom/smartadserver/android/library/c/k;->g:Lcom/smartadserver/android/library/c/i$a;

    .line 207
    iput-object p2, p0, Lcom/smartadserver/android/library/c/k;->h:Lcom/smartadserver/android/library/ui/SASAdView;

    .line 211
    invoke-virtual {p2}, Lcom/smartadserver/android/library/ui/SASAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 212
    const-string v0, "Millennial ad mediation requires that the Smart AdServer SASAdview (interstitial or banner) be created with an Activity as context parameter"

    invoke-interface {p4, v0}, Lcom/smartadserver/android/library/c/i$a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 217
    :cond_1
    invoke-virtual {p2}, Lcom/smartadserver/android/library/ui/SASAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 219
    invoke-virtual {p0, v0}, Lcom/smartadserver/android/library/c/k;->a(Landroid/app/Activity;)V

    .line 222
    invoke-direct {p0}, Lcom/smartadserver/android/library/c/k;->e()V

    .line 223
    invoke-direct {p0}, Lcom/smartadserver/android/library/c/k;->d()V

    .line 226
    const-string v1, "APID"

    invoke-virtual {p3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 229
    new-instance v3, Landroid/widget/RelativeLayout;

    invoke-direct {v3, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/smartadserver/android/library/c/k;->d:Landroid/widget/RelativeLayout;

    .line 234
    instance-of v3, p2, Lcom/smartadserver/android/library/SASBannerView;

    if-eqz v3, :cond_4

    .line 236
    iget-object v0, p0, Lcom/smartadserver/android/library/c/k;->d:Landroid/widget/RelativeLayout;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p2}, Lcom/smartadserver/android/library/ui/SASAdView;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Lcom/smartadserver/android/library/ui/SASAdView;->getHeight()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 238
    sget-boolean v0, Lcom/smartadserver/android/library/g/c;->a:Z

    if-eqz v0, :cond_2

    .line 239
    iget-object v0, p0, Lcom/smartadserver/android/library/c/k;->d:Landroid/widget/RelativeLayout;

    const/high16 v2, -0x10000

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 242
    :cond_2
    iget-object v0, p0, Lcom/smartadserver/android/library/c/k;->a:Lcom/millennialmedia/InlineAd;

    if-nez v0, :cond_3

    .line 245
    :try_start_0
    iget-object v0, p0, Lcom/smartadserver/android/library/c/k;->d:Landroid/widget/RelativeLayout;

    invoke-static {v1, v0}, Lcom/millennialmedia/InlineAd;->createInstance(Ljava/lang/String;Landroid/view/ViewGroup;)Lcom/millennialmedia/InlineAd;

    move-result-object v0

    iput-object v0, p0, Lcom/smartadserver/android/library/c/k;->a:Lcom/millennialmedia/InlineAd;
    :try_end_0
    .catch Lcom/millennialmedia/MMException; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    iget-object v0, p0, Lcom/smartadserver/android/library/c/k;->a:Lcom/millennialmedia/InlineAd;

    iget-object v1, p0, Lcom/smartadserver/android/library/c/k;->e:Lcom/smartadserver/android/library/c/k$a;

    invoke-virtual {v0, v1}, Lcom/millennialmedia/InlineAd;->setListener(Lcom/millennialmedia/InlineAd$InlineListener;)V

    .line 254
    iget-object v0, p0, Lcom/smartadserver/android/library/c/k;->a:Lcom/millennialmedia/InlineAd;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/millennialmedia/InlineAd;->setRefreshInterval(I)V

    .line 258
    :cond_3
    new-instance v0, Lcom/millennialmedia/InlineAd$InlineAdMetadata;

    invoke-direct {v0}, Lcom/millennialmedia/InlineAd$InlineAdMetadata;-><init>()V

    .line 259
    sget-object v1, Lcom/millennialmedia/InlineAd$AdSize;->BANNER:Lcom/millennialmedia/InlineAd$AdSize;

    invoke-virtual {v0, v1}, Lcom/millennialmedia/InlineAd$InlineAdMetadata;->setAdSize(Lcom/millennialmedia/InlineAd$AdSize;)Lcom/millennialmedia/InlineAd$InlineAdMetadata;

    .line 260
    iget-object v1, p0, Lcom/smartadserver/android/library/c/k;->a:Lcom/millennialmedia/InlineAd;

    invoke-virtual {v1, v0}, Lcom/millennialmedia/InlineAd;->request(Lcom/millennialmedia/InlineAd$InlineAdMetadata;)V

    .line 262
    iget-object v0, p0, Lcom/smartadserver/android/library/c/k;->d:Landroid/widget/RelativeLayout;

    .line 289
    :goto_1
    new-instance v1, Lcom/smartadserver/android/library/c/k$1;

    invoke-direct {v1, p0, v0}, Lcom/smartadserver/android/library/c/k$1;-><init>(Lcom/smartadserver/android/library/c/k;Landroid/view/View;)V

    iput-object v1, p0, Lcom/smartadserver/android/library/c/k;->c:Lcom/smartadserver/android/library/c/g;

    goto/16 :goto_0

    .line 246
    :catch_0
    move-exception v0

    .line 247
    invoke-virtual {v0}, Lcom/millennialmedia/MMException;->printStackTrace()V

    .line 248
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not create Millennial inline ad: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/millennialmedia/MMException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v0}, Lcom/smartadserver/android/library/c/i$a;->a(Ljava/lang/String;)V

    .line 249
    invoke-direct {p0}, Lcom/smartadserver/android/library/c/k;->e()V

    goto/16 :goto_0

    .line 265
    :cond_4
    iget-object v3, p0, Lcom/smartadserver/android/library/c/k;->b:Lcom/millennialmedia/InterstitialAd;

    if-nez v3, :cond_5

    .line 268
    :try_start_1
    invoke-static {v1}, Lcom/millennialmedia/InterstitialAd;->createInstance(Ljava/lang/String;)Lcom/millennialmedia/InterstitialAd;

    move-result-object v1

    iput-object v1, p0, Lcom/smartadserver/android/library/c/k;->b:Lcom/millennialmedia/InterstitialAd;
    :try_end_1
    .catch Lcom/millennialmedia/MMException; {:try_start_1 .. :try_end_1} :catch_1

    .line 275
    iget-object v1, p0, Lcom/smartadserver/android/library/c/k;->b:Lcom/millennialmedia/InterstitialAd;

    iget-object v3, p0, Lcom/smartadserver/android/library/c/k;->f:Lcom/smartadserver/android/library/c/k$b;

    invoke-virtual {v1, v3}, Lcom/millennialmedia/InterstitialAd;->setListener(Lcom/millennialmedia/InterstitialAd$InterstitialListener;)V

    .line 279
    :cond_5
    iget-object v1, p0, Lcom/smartadserver/android/library/c/k;->b:Lcom/millennialmedia/InterstitialAd;

    invoke-virtual {v1}, Lcom/millennialmedia/InterstitialAd;->isReady()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 280
    iget-object v0, p0, Lcom/smartadserver/android/library/c/k;->f:Lcom/smartadserver/android/library/c/k$b;

    iget-object v1, p0, Lcom/smartadserver/android/library/c/k;->b:Lcom/millennialmedia/InterstitialAd;

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/c/k$b;->onLoaded(Lcom/millennialmedia/InterstitialAd;)V

    :goto_2
    move-object v0, v2

    .line 284
    goto :goto_1

    .line 269
    :catch_1
    move-exception v0

    .line 270
    invoke-virtual {v0}, Lcom/millennialmedia/MMException;->printStackTrace()V

    .line 271
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not create Millennial interstitial ad: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/millennialmedia/MMException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v0}, Lcom/smartadserver/android/library/c/i$a;->a(Ljava/lang/String;)V

    .line 272
    invoke-direct {p0}, Lcom/smartadserver/android/library/c/k;->d()V

    goto/16 :goto_0

    .line 282
    :cond_6
    iget-object v1, p0, Lcom/smartadserver/android/library/c/k;->b:Lcom/millennialmedia/InterstitialAd;

    invoke-virtual {v1, v0, v2}, Lcom/millennialmedia/InterstitialAd;->load(Landroid/content/Context;Lcom/millennialmedia/InterstitialAd$InterstitialAdMetadata;)V

    goto :goto_2
.end method

.method public b()V
    .locals 1

    .prologue
    .line 330
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartadserver/android/library/c/k;->h:Lcom/smartadserver/android/library/ui/SASAdView;

    .line 331
    invoke-direct {p0}, Lcom/smartadserver/android/library/c/k;->e()V

    .line 332
    invoke-direct {p0}, Lcom/smartadserver/android/library/c/k;->d()V

    .line 333
    return-void
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 337
    const/4 v0, 0x1

    .line 339
    :try_start_0
    const-string v1, "com.millennialmedia.InlineAd"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    :goto_0
    return v0

    .line 340
    :catch_0
    move-exception v0

    .line 341
    const/4 v0, 0x0

    goto :goto_0
.end method
