.class public abstract Lcom/mopub/common/event/BaseEvent$Builder;
.super Ljava/lang/Object;
.source "BaseEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/common/event/BaseEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation


# instance fields
.field private a:Lcom/mopub/common/event/BaseEvent$ScribeCategory;

.field private b:Lcom/mopub/common/event/BaseEvent$Name;

.field private c:Lcom/mopub/common/event/BaseEvent$Category;

.field private d:Lcom/mopub/common/event/BaseEvent$SdkProduct;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/Double;

.field private j:Ljava/lang/Double;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/Double;

.field private m:Ljava/lang/Double;

.field private n:Ljava/lang/Double;

.field private o:Ljava/lang/Double;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/Integer;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/Integer;

.field private t:D


# direct methods
.method public constructor <init>(Lcom/mopub/common/event/BaseEvent$ScribeCategory;Lcom/mopub/common/event/BaseEvent$Name;Lcom/mopub/common/event/BaseEvent$Category;D)V
    .locals 2

    .prologue
    .line 495
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 496
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 497
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 498
    invoke-static {p3}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 499
    const-wide/16 v0, 0x0

    cmpl-double v0, p4, v0

    if-ltz v0, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, p4, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/mopub/common/Preconditions;->checkArgument(Z)V

    .line 501
    iput-object p1, p0, Lcom/mopub/common/event/BaseEvent$Builder;->a:Lcom/mopub/common/event/BaseEvent$ScribeCategory;

    .line 502
    iput-object p2, p0, Lcom/mopub/common/event/BaseEvent$Builder;->b:Lcom/mopub/common/event/BaseEvent$Name;

    .line 503
    iput-object p3, p0, Lcom/mopub/common/event/BaseEvent$Builder;->c:Lcom/mopub/common/event/BaseEvent$Category;

    .line 504
    iput-wide p4, p0, Lcom/mopub/common/event/BaseEvent$Builder;->t:D

    .line 505
    return-void

    .line 499
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/mopub/common/event/BaseEvent$Builder;)Lcom/mopub/common/event/BaseEvent$ScribeCategory;
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent$Builder;->a:Lcom/mopub/common/event/BaseEvent$ScribeCategory;

    return-object v0
.end method

.method static synthetic b(Lcom/mopub/common/event/BaseEvent$Builder;)Lcom/mopub/common/event/BaseEvent$Name;
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent$Builder;->b:Lcom/mopub/common/event/BaseEvent$Name;

    return-object v0
.end method

.method static synthetic c(Lcom/mopub/common/event/BaseEvent$Builder;)Lcom/mopub/common/event/BaseEvent$Category;
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent$Builder;->c:Lcom/mopub/common/event/BaseEvent$Category;

    return-object v0
.end method

.method static synthetic d(Lcom/mopub/common/event/BaseEvent$Builder;)Lcom/mopub/common/event/BaseEvent$SdkProduct;
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent$Builder;->d:Lcom/mopub/common/event/BaseEvent$SdkProduct;

    return-object v0
.end method

.method static synthetic e(Lcom/mopub/common/event/BaseEvent$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent$Builder;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/mopub/common/event/BaseEvent$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent$Builder;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/mopub/common/event/BaseEvent$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent$Builder;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/mopub/common/event/BaseEvent$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent$Builder;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/mopub/common/event/BaseEvent$Builder;)Ljava/lang/Double;
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent$Builder;->i:Ljava/lang/Double;

    return-object v0
.end method

.method static synthetic j(Lcom/mopub/common/event/BaseEvent$Builder;)Ljava/lang/Double;
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent$Builder;->j:Ljava/lang/Double;

    return-object v0
.end method

.method static synthetic k(Lcom/mopub/common/event/BaseEvent$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent$Builder;->k:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic l(Lcom/mopub/common/event/BaseEvent$Builder;)Ljava/lang/Double;
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent$Builder;->l:Ljava/lang/Double;

    return-object v0
.end method

.method static synthetic m(Lcom/mopub/common/event/BaseEvent$Builder;)Ljava/lang/Double;
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent$Builder;->m:Ljava/lang/Double;

    return-object v0
.end method

.method static synthetic n(Lcom/mopub/common/event/BaseEvent$Builder;)Ljava/lang/Double;
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent$Builder;->n:Ljava/lang/Double;

    return-object v0
.end method

.method static synthetic o(Lcom/mopub/common/event/BaseEvent$Builder;)Ljava/lang/Double;
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent$Builder;->o:Ljava/lang/Double;

    return-object v0
.end method

.method static synthetic p(Lcom/mopub/common/event/BaseEvent$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent$Builder;->p:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic q(Lcom/mopub/common/event/BaseEvent$Builder;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent$Builder;->q:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic r(Lcom/mopub/common/event/BaseEvent$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent$Builder;->r:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic s(Lcom/mopub/common/event/BaseEvent$Builder;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent$Builder;->s:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic t(Lcom/mopub/common/event/BaseEvent$Builder;)D
    .locals 2

    .prologue
    .line 466
    iget-wide v0, p0, Lcom/mopub/common/event/BaseEvent$Builder;->t:D

    return-wide v0
.end method


# virtual methods
.method public abstract build()Lcom/mopub/common/event/BaseEvent;
.end method

.method public withAdCreativeId(Ljava/lang/String;)Lcom/mopub/common/event/BaseEvent$Builder;
    .locals 0

    .prologue
    .line 521
    iput-object p1, p0, Lcom/mopub/common/event/BaseEvent$Builder;->f:Ljava/lang/String;

    .line 522
    return-object p0
.end method

.method public withAdHeightPx(Ljava/lang/Double;)Lcom/mopub/common/event/BaseEvent$Builder;
    .locals 0

    .prologue
    .line 545
    iput-object p1, p0, Lcom/mopub/common/event/BaseEvent$Builder;->j:Ljava/lang/Double;

    .line 546
    return-object p0
.end method

.method public withAdNetworkType(Ljava/lang/String;)Lcom/mopub/common/event/BaseEvent$Builder;
    .locals 0

    .prologue
    .line 533
    iput-object p1, p0, Lcom/mopub/common/event/BaseEvent$Builder;->h:Ljava/lang/String;

    .line 534
    return-object p0
.end method

.method public withAdType(Ljava/lang/String;)Lcom/mopub/common/event/BaseEvent$Builder;
    .locals 0

    .prologue
    .line 527
    iput-object p1, p0, Lcom/mopub/common/event/BaseEvent$Builder;->g:Ljava/lang/String;

    .line 528
    return-object p0
.end method

.method public withAdUnitId(Ljava/lang/String;)Lcom/mopub/common/event/BaseEvent$Builder;
    .locals 0

    .prologue
    .line 515
    iput-object p1, p0, Lcom/mopub/common/event/BaseEvent$Builder;->e:Ljava/lang/String;

    .line 516
    return-object p0
.end method

.method public withAdWidthPx(Ljava/lang/Double;)Lcom/mopub/common/event/BaseEvent$Builder;
    .locals 0

    .prologue
    .line 539
    iput-object p1, p0, Lcom/mopub/common/event/BaseEvent$Builder;->i:Ljava/lang/Double;

    .line 540
    return-object p0
.end method

.method public withDspCreativeId(Ljava/lang/String;)Lcom/mopub/common/event/BaseEvent$Builder;
    .locals 0

    .prologue
    .line 551
    iput-object p1, p0, Lcom/mopub/common/event/BaseEvent$Builder;->k:Ljava/lang/String;

    .line 552
    return-object p0
.end method

.method public withGeoAccuracy(Ljava/lang/Double;)Lcom/mopub/common/event/BaseEvent$Builder;
    .locals 0

    .prologue
    .line 569
    iput-object p1, p0, Lcom/mopub/common/event/BaseEvent$Builder;->n:Ljava/lang/Double;

    .line 570
    return-object p0
.end method

.method public withGeoLat(Ljava/lang/Double;)Lcom/mopub/common/event/BaseEvent$Builder;
    .locals 0

    .prologue
    .line 557
    iput-object p1, p0, Lcom/mopub/common/event/BaseEvent$Builder;->l:Ljava/lang/Double;

    .line 558
    return-object p0
.end method

.method public withGeoLon(Ljava/lang/Double;)Lcom/mopub/common/event/BaseEvent$Builder;
    .locals 0

    .prologue
    .line 563
    iput-object p1, p0, Lcom/mopub/common/event/BaseEvent$Builder;->m:Ljava/lang/Double;

    .line 564
    return-object p0
.end method

.method public withPerformanceDurationMs(Ljava/lang/Double;)Lcom/mopub/common/event/BaseEvent$Builder;
    .locals 0

    .prologue
    .line 575
    iput-object p1, p0, Lcom/mopub/common/event/BaseEvent$Builder;->o:Ljava/lang/Double;

    .line 576
    return-object p0
.end method

.method public withRequestId(Ljava/lang/String;)Lcom/mopub/common/event/BaseEvent$Builder;
    .locals 0

    .prologue
    .line 581
    iput-object p1, p0, Lcom/mopub/common/event/BaseEvent$Builder;->p:Ljava/lang/String;

    .line 582
    return-object p0
.end method

.method public withRequestRetries(Ljava/lang/Integer;)Lcom/mopub/common/event/BaseEvent$Builder;
    .locals 0

    .prologue
    .line 599
    iput-object p1, p0, Lcom/mopub/common/event/BaseEvent$Builder;->s:Ljava/lang/Integer;

    .line 600
    return-object p0
.end method

.method public withRequestStatusCode(Ljava/lang/Integer;)Lcom/mopub/common/event/BaseEvent$Builder;
    .locals 0

    .prologue
    .line 587
    iput-object p1, p0, Lcom/mopub/common/event/BaseEvent$Builder;->q:Ljava/lang/Integer;

    .line 588
    return-object p0
.end method

.method public withRequestUri(Ljava/lang/String;)Lcom/mopub/common/event/BaseEvent$Builder;
    .locals 0

    .prologue
    .line 593
    iput-object p1, p0, Lcom/mopub/common/event/BaseEvent$Builder;->r:Ljava/lang/String;

    .line 594
    return-object p0
.end method

.method public withSdkProduct(Lcom/mopub/common/event/BaseEvent$SdkProduct;)Lcom/mopub/common/event/BaseEvent$Builder;
    .locals 0

    .prologue
    .line 509
    iput-object p1, p0, Lcom/mopub/common/event/BaseEvent$Builder;->d:Lcom/mopub/common/event/BaseEvent$SdkProduct;

    .line 510
    return-object p0
.end method
