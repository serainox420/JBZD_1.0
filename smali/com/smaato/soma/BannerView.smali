.class public Lcom/smaato/soma/BannerView;
.super Lcom/smaato/soma/j;
.source "BannerView.java"

# interfaces
.implements Lcom/smaato/soma/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smaato/soma/BannerView$a;
    }
.end annotation


# instance fields
.field protected a:Z

.field private m:Z

.field private n:I

.field private o:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/smaato/soma/mediation/f;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private p:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/smaato/soma/mediation/f;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private q:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 161
    invoke-direct {p0, p1}, Lcom/smaato/soma/j;-><init>(Landroid/content/Context;)V

    .line 49
    iput-boolean v0, p0, Lcom/smaato/soma/BannerView;->a:Z

    .line 55
    iput-boolean v0, p0, Lcom/smaato/soma/BannerView;->m:Z

    .line 65
    const/16 v0, 0x3c

    iput v0, p0, Lcom/smaato/soma/BannerView;->n:I

    .line 92
    new-instance v0, Lcom/smaato/soma/BannerView$1;

    invoke-direct {v0, p0}, Lcom/smaato/soma/BannerView$1;-><init>(Lcom/smaato/soma/BannerView;)V

    iput-object v0, p0, Lcom/smaato/soma/BannerView;->q:Ljava/lang/Runnable;

    .line 162
    new-instance v0, Lcom/smaato/soma/BannerView$8;

    invoke-direct {v0, p0}, Lcom/smaato/soma/BannerView$8;-><init>(Lcom/smaato/soma/BannerView;)V

    .line 168
    invoke-virtual {v0}, Lcom/smaato/soma/BannerView$8;->c()Ljava/lang/Object;

    .line 169
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 144
    invoke-direct {p0, p1, p2}, Lcom/smaato/soma/j;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    iput-boolean v0, p0, Lcom/smaato/soma/BannerView;->a:Z

    .line 55
    iput-boolean v0, p0, Lcom/smaato/soma/BannerView;->m:Z

    .line 65
    const/16 v0, 0x3c

    iput v0, p0, Lcom/smaato/soma/BannerView;->n:I

    .line 92
    new-instance v0, Lcom/smaato/soma/BannerView$1;

    invoke-direct {v0, p0}, Lcom/smaato/soma/BannerView$1;-><init>(Lcom/smaato/soma/BannerView;)V

    iput-object v0, p0, Lcom/smaato/soma/BannerView;->q:Ljava/lang/Runnable;

    .line 145
    new-instance v0, Lcom/smaato/soma/BannerView$7;

    invoke-direct {v0, p0, p2}, Lcom/smaato/soma/BannerView$7;-><init>(Lcom/smaato/soma/BannerView;Landroid/util/AttributeSet;)V

    .line 152
    invoke-virtual {v0}, Lcom/smaato/soma/BannerView$7;->c()Ljava/lang/Object;

    .line 153
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 123
    invoke-direct {p0, p1, p2, p3}, Lcom/smaato/soma/j;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    iput-boolean v0, p0, Lcom/smaato/soma/BannerView;->a:Z

    .line 55
    iput-boolean v0, p0, Lcom/smaato/soma/BannerView;->m:Z

    .line 65
    const/16 v0, 0x3c

    iput v0, p0, Lcom/smaato/soma/BannerView;->n:I

    .line 92
    new-instance v0, Lcom/smaato/soma/BannerView$1;

    invoke-direct {v0, p0}, Lcom/smaato/soma/BannerView$1;-><init>(Lcom/smaato/soma/BannerView;)V

    iput-object v0, p0, Lcom/smaato/soma/BannerView;->q:Ljava/lang/Runnable;

    .line 124
    new-instance v0, Lcom/smaato/soma/BannerView$6;

    invoke-direct {v0, p0, p2}, Lcom/smaato/soma/BannerView$6;-><init>(Lcom/smaato/soma/BannerView;Landroid/util/AttributeSet;)V

    .line 132
    invoke-virtual {v0}, Lcom/smaato/soma/BannerView$6;->c()Ljava/lang/Object;

    .line 133
    return-void
.end method

.method static synthetic a(Lcom/smaato/soma/BannerView;I)I
    .locals 0

    .prologue
    .line 41
    iput p1, p0, Lcom/smaato/soma/BannerView;->n:I

    return p1
.end method

.method static synthetic a(Lcom/smaato/soma/BannerView;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/smaato/soma/BannerView;->q:Ljava/lang/Runnable;

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/BannerViewXmlAttributeFailed;
        }
    .end annotation

    .prologue
    .line 423
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 424
    const-string v1, "publisherId"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 425
    invoke-virtual {p0}, Lcom/smaato/soma/BannerView;->getAdSettings()Lcom/smaato/soma/d;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lcom/smaato/soma/d;->a(J)V

    .line 470
    :cond_0
    :goto_0
    return-void

    .line 426
    :cond_1
    const-string v1, "adSpaceId"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 427
    invoke-virtual {p0}, Lcom/smaato/soma/BannerView;->getAdSettings()Lcom/smaato/soma/d;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lcom/smaato/soma/d;->b(J)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 465
    :catch_0
    move-exception v0

    .line 466
    throw v0

    .line 428
    :cond_2
    :try_start_1
    const-string v1, "autoReloadEnabled"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 429
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/smaato/soma/BannerView;->setAutoReloadEnabled(Z)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 467
    :catch_1
    move-exception v0

    .line 468
    new-instance v1, Lcom/smaato/soma/exception/BannerViewXmlAttributeFailed;

    invoke-direct {v1, v0}, Lcom/smaato/soma/exception/BannerViewXmlAttributeFailed;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 430
    :cond_3
    :try_start_2
    const-string v1, "autoReloadFrequency"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 431
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/smaato/soma/BannerView;->setAutoReloadFrequency(I)V

    goto :goto_0

    .line 432
    :cond_4
    const-string v1, "AdType"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 433
    invoke-virtual {p0}, Lcom/smaato/soma/BannerView;->getAdSettings()Lcom/smaato/soma/d;

    move-result-object v1

    invoke-static {v0}, Lcom/smaato/soma/AdType;->getValueForString(Ljava/lang/String;)Lcom/smaato/soma/AdType;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/smaato/soma/d;->a(Lcom/smaato/soma/AdType;)V

    goto :goto_0

    .line 434
    :cond_5
    const-string v1, "backgroundColor"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 435
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/smaato/soma/BannerView;->setBackgroundColor(I)V

    goto :goto_0

    .line 436
    :cond_6
    const-string v1, "locationUpdateEnabled"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 437
    iget-object v1, p0, Lcom/smaato/soma/BannerView;->c:Lcom/smaato/soma/b;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-interface {v1, v0}, Lcom/smaato/soma/b;->setLocationUpdateEnabled(Z)V

    goto/16 :goto_0

    .line 438
    :cond_7
    const-string v1, "keywordList"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 439
    invoke-virtual {p0}, Lcom/smaato/soma/BannerView;->getUserSettings()Lcom/smaato/soma/internal/requests/settings/UserSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/smaato/soma/internal/requests/settings/UserSettings;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 440
    :cond_8
    const-string v1, "searchQuery"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 441
    invoke-virtual {p0}, Lcom/smaato/soma/BannerView;->getUserSettings()Lcom/smaato/soma/internal/requests/settings/UserSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/smaato/soma/internal/requests/settings/UserSettings;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 442
    :cond_9
    const-string v1, "age"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 443
    invoke-virtual {p0}, Lcom/smaato/soma/BannerView;->getUserSettings()Lcom/smaato/soma/internal/requests/settings/UserSettings;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/smaato/soma/internal/requests/settings/UserSettings;->a(I)V

    goto/16 :goto_0

    .line 444
    :cond_a
    const-string v1, "gender"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 445
    invoke-virtual {p0}, Lcom/smaato/soma/BannerView;->getUserSettings()Lcom/smaato/soma/internal/requests/settings/UserSettings;

    move-result-object v1

    invoke-static {v0}, Lcom/smaato/soma/internal/requests/settings/UserSettings$Gender;->getValueForString(Ljava/lang/String;)Lcom/smaato/soma/internal/requests/settings/UserSettings$Gender;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/smaato/soma/internal/requests/settings/UserSettings;->a(Lcom/smaato/soma/internal/requests/settings/UserSettings$Gender;)V

    goto/16 :goto_0

    .line 446
    :cond_b
    const-string v1, "region"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 447
    invoke-virtual {p0}, Lcom/smaato/soma/BannerView;->getUserSettings()Lcom/smaato/soma/internal/requests/settings/UserSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/smaato/soma/internal/requests/settings/UserSettings;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 448
    :cond_c
    const-string v1, "city"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 449
    invoke-virtual {p0}, Lcom/smaato/soma/BannerView;->getUserSettings()Lcom/smaato/soma/internal/requests/settings/UserSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/smaato/soma/internal/requests/settings/UserSettings;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 450
    :cond_d
    const-string v1, "latitude"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 451
    invoke-virtual {p0}, Lcom/smaato/soma/BannerView;->getUserSettings()Lcom/smaato/soma/internal/requests/settings/UserSettings;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/smaato/soma/internal/requests/settings/UserSettings;->a(D)V

    goto/16 :goto_0

    .line 452
    :cond_e
    const-string v1, "longitude"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 453
    invoke-virtual {p0}, Lcom/smaato/soma/BannerView;->getUserSettings()Lcom/smaato/soma/internal/requests/settings/UserSettings;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/smaato/soma/internal/requests/settings/UserSettings;->b(D)V

    goto/16 :goto_0

    .line 454
    :cond_f
    const-string v1, "userProfileEnabled"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 455
    invoke-virtual {p0}, Lcom/smaato/soma/BannerView;->getUserSettings()Lcom/smaato/soma/internal/requests/settings/UserSettings;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/smaato/soma/internal/requests/settings/UserSettings;->a(Z)V

    goto/16 :goto_0

    .line 456
    :cond_10
    const-string v1, "adDimension"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 457
    invoke-virtual {p0}, Lcom/smaato/soma/BannerView;->getAdSettings()Lcom/smaato/soma/d;

    move-result-object v1

    invoke-static {v0}, Lcom/smaato/soma/AdDimension;->getValueForString(Ljava/lang/String;)Lcom/smaato/soma/AdDimension;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/smaato/soma/d;->a(Lcom/smaato/soma/AdDimension;)V

    goto/16 :goto_0

    .line 458
    :cond_11
    const-string v1, "bannerWidth"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 459
    invoke-virtual {p0}, Lcom/smaato/soma/BannerView;->getAdSettings()Lcom/smaato/soma/d;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/smaato/soma/d;->a(I)V

    goto/16 :goto_0

    .line 460
    :cond_12
    const-string v1, "bannerHeight"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 461
    invoke-virtual {p0}, Lcom/smaato/soma/BannerView;->getAdSettings()Lcom/smaato/soma/d;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/smaato/soma/d;->b(I)V

    goto/16 :goto_0

    .line 462
    :cond_13
    const-string v1, "loadNewBanner"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 463
    invoke-virtual {p0}, Lcom/smaato/soma/BannerView;->e()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0
.end method

.method private a(Landroid/util/AttributeSet;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/LoadingAttributesFromLayoutFailed;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 392
    .line 393
    :try_start_0
    invoke-virtual {p0}, Lcom/smaato/soma/BannerView;->isInEditMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 394
    invoke-interface {p1}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v1

    if-ge p2, v1, :cond_0

    .line 395
    invoke-interface {p1, p2}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    .line 396
    invoke-interface {p1, p2}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    .line 395
    invoke-direct {p0, v0, v1}, Lcom/smaato/soma/BannerView;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    add-int/lit8 v0, p2, 0x1

    invoke-direct {p0, p1, v0}, Lcom/smaato/soma/BannerView;->a(Landroid/util/AttributeSet;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 402
    :cond_0
    return v0

    .line 403
    :catch_0
    move-exception v0

    .line 404
    new-instance v1, Lcom/smaato/soma/debug/b;

    const-string v2, "BannerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Check the BannerView inputs in xml"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 406
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    sget-object v5, Lcom/smaato/soma/debug/DebugCategory;->ERROR:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    .line 404
    invoke-static {v1}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 410
    new-instance v1, Lcom/smaato/soma/exception/LoadingAttributesFromLayoutFailed;

    invoke-direct {v1, v0}, Lcom/smaato/soma/exception/LoadingAttributesFromLayoutFailed;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic a(Lcom/smaato/soma/BannerView;Landroid/util/AttributeSet;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/LoadingAttributesFromLayoutFailed;
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/smaato/soma/BannerView;->a(Landroid/util/AttributeSet;I)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/smaato/soma/BannerView;Z)Z
    .locals 0

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/smaato/soma/BannerView;->m:Z

    return p1
.end method

.method static synthetic b(Lcom/smaato/soma/BannerView;)I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/smaato/soma/BannerView;->n:I

    return v0
.end method

.method static synthetic c(Lcom/smaato/soma/BannerView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/UnableToResumeAutoReload;
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/smaato/soma/BannerView;->l()V

    return-void
.end method

.method private l()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/UnableToResumeAutoReload;
        }
    .end annotation

    .prologue
    .line 227
    :try_start_0
    new-instance v0, Lcom/smaato/soma/BannerView$11;

    invoke-direct {v0, p0}, Lcom/smaato/soma/BannerView$11;-><init>(Lcom/smaato/soma/BannerView;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Ljava/lang/Object;)V

    .line 228
    invoke-virtual {p0}, Lcom/smaato/soma/BannerView;->getBannerAnimatorHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 231
    iget-boolean v0, p0, Lcom/smaato/soma/BannerView;->m:Z

    iput-boolean v0, p0, Lcom/smaato/soma/BannerView;->a:Z

    .line 233
    invoke-virtual {p0}, Lcom/smaato/soma/BannerView;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    invoke-virtual {p0}, Lcom/smaato/soma/BannerView;->getBannerAnimatorHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/smaato/soma/BannerView;->q:Ljava/lang/Runnable;

    iget v2, p0, Lcom/smaato/soma/BannerView;->n:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 243
    :cond_0
    return-void

    .line 238
    :catch_0
    move-exception v0

    .line 239
    throw v0

    .line 240
    :catch_1
    move-exception v0

    .line 241
    new-instance v1, Lcom/smaato/soma/exception/UnableToResumeAutoReload;

    invoke-direct {v1, v0}, Lcom/smaato/soma/exception/UnableToResumeAutoReload;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method protected a()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/BannerViewInstantiationException;
        }
    .end annotation

    .prologue
    .line 174
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/smaato/soma/BannerView;->setBackgroundColor(I)V

    .line 175
    invoke-super {p0}, Lcom/smaato/soma/j;->a()V

    .line 176
    new-instance v0, Lcom/smaato/soma/BannerView$9;

    invoke-direct {v0, p0}, Lcom/smaato/soma/BannerView$9;-><init>(Lcom/smaato/soma/BannerView;)V

    invoke-virtual {p0, v0}, Lcom/smaato/soma/BannerView;->a(Lcom/smaato/soma/c;)V

    .line 191
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 199
    iget-boolean v0, p0, Lcom/smaato/soma/BannerView;->a:Z

    return v0
.end method

.method protected c()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/UnableToPauseAutoReload;
        }
    .end annotation

    .prologue
    .line 210
    :try_start_0
    new-instance v0, Lcom/smaato/soma/BannerView$10;

    invoke-direct {v0, p0}, Lcom/smaato/soma/BannerView$10;-><init>(Lcom/smaato/soma/BannerView;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Ljava/lang/Object;)V

    .line 211
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smaato/soma/BannerView;->a:Z

    .line 212
    invoke-virtual {p0}, Lcom/smaato/soma/BannerView;->getBannerAnimatorHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 218
    return-void

    .line 213
    :catch_0
    move-exception v0

    .line 214
    throw v0

    .line 215
    :catch_1
    move-exception v0

    .line 216
    new-instance v1, Lcom/smaato/soma/exception/UnableToPauseAutoReload;

    invoke-direct {v1, v0}, Lcom/smaato/soma/exception/UnableToPauseAutoReload;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public d()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 498
    :try_start_0
    iget-object v0, p0, Lcom/smaato/soma/BannerView;->o:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smaato/soma/BannerView;->o:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 499
    iget-object v0, p0, Lcom/smaato/soma/BannerView;->o:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smaato/soma/mediation/f;

    invoke-virtual {v0}, Lcom/smaato/soma/mediation/f;->a()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 511
    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/smaato/soma/BannerView;->p:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/smaato/soma/BannerView;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 512
    iget-object v0, p0, Lcom/smaato/soma/BannerView;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smaato/soma/mediation/f;

    invoke-virtual {v0}, Lcom/smaato/soma/mediation/f;->a()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 520
    :cond_1
    :goto_1
    return-void

    .line 505
    :catch_0
    move-exception v0

    .line 506
    new-instance v0, Lcom/smaato/soma/debug/b;

    const-string v1, "BannerView:onDetachedFromWindow()"

    const-string v2, "Exception during clearing MoPubMediationBannerReference"

    sget-object v3, Lcom/smaato/soma/debug/DebugCategory;->DEBUG:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    goto :goto_0

    .line 516
    :catch_1
    move-exception v0

    .line 517
    new-instance v0, Lcom/smaato/soma/debug/b;

    const-string v1, "BannerView:onDetachedFromWindow()"

    const-string v2, "Exception during clearing CustomBannerReference"

    sget-object v3, Lcom/smaato/soma/debug/DebugCategory;->DEBUG:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    goto :goto_1

    .line 515
    :catch_2
    move-exception v0

    goto :goto_1

    .line 514
    :catch_3
    move-exception v0

    goto :goto_1

    .line 503
    :catch_4
    move-exception v0

    goto :goto_0

    .line 501
    :catch_5
    move-exception v0

    goto :goto_0
.end method

.method public final getAutoReloadFrequency()I
    .locals 1

    .prologue
    .line 299
    new-instance v0, Lcom/smaato/soma/BannerView$13;

    invoke-direct {v0, p0}, Lcom/smaato/soma/BannerView$13;-><init>(Lcom/smaato/soma/BannerView;)V

    .line 304
    invoke-virtual {v0}, Lcom/smaato/soma/BannerView$13;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 299
    return v0
.end method

.method public getBannerAnimatorHandler()Landroid/os/Handler;
    .locals 2

    .prologue
    .line 490
    iget-object v0, p0, Lcom/smaato/soma/BannerView;->i:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 491
    new-instance v0, Lcom/smaato/soma/BannerView$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p0, v1}, Lcom/smaato/soma/BannerView$a;-><init>(Lcom/smaato/soma/BannerView;Lcom/smaato/soma/j;Lcom/smaato/soma/BannerView$1;)V

    invoke-virtual {p0, v0}, Lcom/smaato/soma/BannerView;->setBannerAnimatorHandler(Landroid/os/Handler;)V

    .line 493
    :cond_0
    iget-object v0, p0, Lcom/smaato/soma/BannerView;->i:Landroid/os/Handler;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 370
    new-instance v0, Lcom/smaato/soma/BannerView$4;

    invoke-direct {v0, p0}, Lcom/smaato/soma/BannerView$4;-><init>(Lcom/smaato/soma/BannerView;)V

    .line 378
    invoke-virtual {v0}, Lcom/smaato/soma/BannerView$4;->c()Ljava/lang/Object;

    .line 379
    invoke-super {p0}, Lcom/smaato/soma/j;->onAttachedToWindow()V

    .line 380
    return-void
.end method

.method protected final onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 474
    invoke-super {p0}, Lcom/smaato/soma/j;->onDetachedFromWindow()V

    .line 475
    new-instance v0, Lcom/smaato/soma/BannerView$5;

    invoke-direct {v0, p0}, Lcom/smaato/soma/BannerView$5;-><init>(Lcom/smaato/soma/BannerView;)V

    .line 485
    invoke-virtual {v0}, Lcom/smaato/soma/BannerView$5;->c()Ljava/lang/Object;

    .line 486
    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 1

    .prologue
    .line 330
    invoke-super {p0, p1}, Lcom/smaato/soma/j;->onWindowFocusChanged(Z)V

    .line 331
    new-instance v0, Lcom/smaato/soma/BannerView$3;

    invoke-direct {v0, p0, p1}, Lcom/smaato/soma/BannerView$3;-><init>(Lcom/smaato/soma/BannerView;Z)V

    .line 361
    invoke-virtual {v0}, Lcom/smaato/soma/BannerView$3;->c()Ljava/lang/Object;

    .line 362
    return-void
.end method

.method public setAutoReloadEnabled(Z)V
    .locals 1

    .prologue
    .line 275
    new-instance v0, Lcom/smaato/soma/BannerView$12;

    invoke-direct {v0, p0, p1}, Lcom/smaato/soma/BannerView$12;-><init>(Lcom/smaato/soma/BannerView;Z)V

    .line 291
    invoke-virtual {v0}, Lcom/smaato/soma/BannerView$12;->c()Ljava/lang/Object;

    .line 292
    return-void
.end method

.method public final setAutoReloadFrequency(I)V
    .locals 1

    .prologue
    .line 314
    new-instance v0, Lcom/smaato/soma/BannerView$2;

    invoke-direct {v0, p0, p1}, Lcom/smaato/soma/BannerView$2;-><init>(Lcom/smaato/soma/BannerView;I)V

    .line 325
    invoke-virtual {v0}, Lcom/smaato/soma/BannerView$2;->c()Ljava/lang/Object;

    .line 326
    return-void
.end method

.method public setCustomMediationReference(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/smaato/soma/mediation/f;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 81
    iput-object p1, p0, Lcom/smaato/soma/BannerView;->p:Ljava/lang/ref/WeakReference;

    .line 82
    return-void
.end method

.method public setMediationReference(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/smaato/soma/mediation/f;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 70
    iput-object p1, p0, Lcom/smaato/soma/BannerView;->o:Ljava/lang/ref/WeakReference;

    .line 71
    return-void
.end method
