.class public Lcom/mopub/network/AdResponse$Builder;
.super Ljava/lang/Object;
.source "AdResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/network/AdResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/Integer;

.field private n:Ljava/lang/Integer;

.field private o:Ljava/lang/Integer;

.field private p:Ljava/lang/Integer;

.field private q:Ljava/lang/String;

.field private r:Z

.field private s:Ljava/lang/String;

.field private t:Lorg/json/JSONObject;

.field private u:Lcom/mopub/common/event/EventDetails;

.field private v:Ljava/lang/String;

.field private w:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
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
    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 270
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mopub/network/AdResponse$Builder;->r:Z

    .line 278
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/mopub/network/AdResponse$Builder;->w:Ljava/util/Map;

    return-void
.end method

.method static synthetic a(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/mopub/network/AdResponse$Builder;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/mopub/network/AdResponse$Builder;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/mopub/network/AdResponse$Builder;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/mopub/network/AdResponse$Builder;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/mopub/network/AdResponse$Builder;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/mopub/network/AdResponse$Builder;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/mopub/network/AdResponse$Builder;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/mopub/network/AdResponse$Builder;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/mopub/network/AdResponse$Builder;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/mopub/network/AdResponse$Builder;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic k(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/mopub/network/AdResponse$Builder;->k:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic l(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/mopub/network/AdResponse$Builder;->l:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic m(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/mopub/network/AdResponse$Builder;->m:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic n(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/mopub/network/AdResponse$Builder;->n:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic o(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/mopub/network/AdResponse$Builder;->o:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic p(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/mopub/network/AdResponse$Builder;->p:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic q(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/mopub/network/AdResponse$Builder;->q:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic r(Lcom/mopub/network/AdResponse$Builder;)Z
    .locals 1

    .prologue
    .line 248
    iget-boolean v0, p0, Lcom/mopub/network/AdResponse$Builder;->r:Z

    return v0
.end method

.method static synthetic s(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/mopub/network/AdResponse$Builder;->s:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic t(Lcom/mopub/network/AdResponse$Builder;)Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/mopub/network/AdResponse$Builder;->t:Lorg/json/JSONObject;

    return-object v0
.end method

.method static synthetic u(Lcom/mopub/network/AdResponse$Builder;)Lcom/mopub/common/event/EventDetails;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/mopub/network/AdResponse$Builder;->u:Lcom/mopub/common/event/EventDetails;

    return-object v0
.end method

.method static synthetic v(Lcom/mopub/network/AdResponse$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/mopub/network/AdResponse$Builder;->v:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic w(Lcom/mopub/network/AdResponse$Builder;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/mopub/network/AdResponse$Builder;->w:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/mopub/network/AdResponse;
    .locals 2

    .prologue
    .line 400
    new-instance v0, Lcom/mopub/network/AdResponse;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mopub/network/AdResponse;-><init>(Lcom/mopub/network/AdResponse$Builder;Lcom/mopub/network/AdResponse$1;)V

    return-object v0
.end method

.method public setAdTimeoutDelayMilliseconds(Ljava/lang/Integer;)Lcom/mopub/network/AdResponse$Builder;
    .locals 0

    .prologue
    .line 351
    iput-object p1, p0, Lcom/mopub/network/AdResponse$Builder;->o:Ljava/lang/Integer;

    .line 352
    return-object p0
.end method

.method public setAdType(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;
    .locals 0

    .prologue
    .line 281
    iput-object p1, p0, Lcom/mopub/network/AdResponse$Builder;->a:Ljava/lang/String;

    .line 282
    return-object p0
.end method

.method public setAdUnitId(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;
    .locals 0

    .prologue
    .line 286
    iput-object p1, p0, Lcom/mopub/network/AdResponse$Builder;->b:Ljava/lang/String;

    .line 287
    return-object p0
.end method

.method public setClickTrackingUrl(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;
    .locals 0

    .prologue
    .line 324
    iput-object p1, p0, Lcom/mopub/network/AdResponse$Builder;->i:Ljava/lang/String;

    .line 325
    return-object p0
.end method

.method public setCustomEventClassName(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;
    .locals 0

    .prologue
    .line 386
    iput-object p1, p0, Lcom/mopub/network/AdResponse$Builder;->v:Ljava/lang/String;

    .line 387
    return-object p0
.end method

.method public setDimensions(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/mopub/network/AdResponse$Builder;
    .locals 0

    .prologue
    .line 345
    iput-object p1, p0, Lcom/mopub/network/AdResponse$Builder;->m:Ljava/lang/Integer;

    .line 346
    iput-object p2, p0, Lcom/mopub/network/AdResponse$Builder;->n:Ljava/lang/Integer;

    .line 347
    return-object p0
.end method

.method public setDspCreativeId(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;
    .locals 0

    .prologue
    .line 366
    iput-object p1, p0, Lcom/mopub/network/AdResponse$Builder;->q:Ljava/lang/String;

    .line 367
    return-object p0
.end method

.method public setEventDetails(Lcom/mopub/common/event/EventDetails;)Lcom/mopub/network/AdResponse$Builder;
    .locals 0

    .prologue
    .line 381
    iput-object p1, p0, Lcom/mopub/network/AdResponse$Builder;->u:Lcom/mopub/common/event/EventDetails;

    .line 382
    return-object p0
.end method

.method public setFailoverUrl(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;
    .locals 0

    .prologue
    .line 334
    iput-object p1, p0, Lcom/mopub/network/AdResponse$Builder;->k:Ljava/lang/String;

    .line 335
    return-object p0
.end method

.method public setFullAdType(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;
    .locals 0

    .prologue
    .line 291
    iput-object p1, p0, Lcom/mopub/network/AdResponse$Builder;->c:Ljava/lang/String;

    .line 292
    return-object p0
.end method

.method public setImpressionTrackingUrl(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;
    .locals 0

    .prologue
    .line 329
    iput-object p1, p0, Lcom/mopub/network/AdResponse$Builder;->j:Ljava/lang/String;

    .line 330
    return-object p0
.end method

.method public setJsonBody(Lorg/json/JSONObject;)Lcom/mopub/network/AdResponse$Builder;
    .locals 0

    .prologue
    .line 376
    iput-object p1, p0, Lcom/mopub/network/AdResponse$Builder;->t:Lorg/json/JSONObject;

    .line 377
    return-object p0
.end method

.method public setNetworkType(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;
    .locals 0

    .prologue
    .line 296
    iput-object p1, p0, Lcom/mopub/network/AdResponse$Builder;->d:Ljava/lang/String;

    .line 297
    return-object p0
.end method

.method public setRedirectUrl(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;
    .locals 0

    .prologue
    .line 319
    iput-object p1, p0, Lcom/mopub/network/AdResponse$Builder;->h:Ljava/lang/String;

    .line 320
    return-object p0
.end method

.method public setRefreshTimeMilliseconds(Ljava/lang/Integer;)Lcom/mopub/network/AdResponse$Builder;
    .locals 0

    .prologue
    .line 356
    iput-object p1, p0, Lcom/mopub/network/AdResponse$Builder;->p:Ljava/lang/Integer;

    .line 357
    return-object p0
.end method

.method public setRequestId(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;
    .locals 0

    .prologue
    .line 339
    iput-object p1, p0, Lcom/mopub/network/AdResponse$Builder;->l:Ljava/lang/String;

    .line 340
    return-object p0
.end method

.method public setResponseBody(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;
    .locals 0

    .prologue
    .line 371
    iput-object p1, p0, Lcom/mopub/network/AdResponse$Builder;->s:Ljava/lang/String;

    .line 372
    return-object p0
.end method

.method public setRewardedVideoCompletionUrl(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;
    .locals 0

    .prologue
    .line 314
    iput-object p1, p0, Lcom/mopub/network/AdResponse$Builder;->g:Ljava/lang/String;

    .line 315
    return-object p0
.end method

.method public setRewardedVideoCurrencyAmount(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;
    .locals 0

    .prologue
    .line 308
    iput-object p1, p0, Lcom/mopub/network/AdResponse$Builder;->f:Ljava/lang/String;

    .line 309
    return-object p0
.end method

.method public setRewardedVideoCurrencyName(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;
    .locals 0

    .prologue
    .line 302
    iput-object p1, p0, Lcom/mopub/network/AdResponse$Builder;->e:Ljava/lang/String;

    .line 303
    return-object p0
.end method

.method public setScrollable(Ljava/lang/Boolean;)Lcom/mopub/network/AdResponse$Builder;
    .locals 1

    .prologue
    .line 361
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/mopub/network/AdResponse$Builder;->r:Z

    :goto_0
    iput-boolean v0, p0, Lcom/mopub/network/AdResponse$Builder;->r:Z

    .line 362
    return-object p0

    .line 361
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public setServerExtras(Ljava/util/Map;)Lcom/mopub/network/AdResponse$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/mopub/network/AdResponse$Builder;"
        }
    .end annotation

    .prologue
    .line 391
    if-nez p1, :cond_0

    .line 392
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/mopub/network/AdResponse$Builder;->w:Ljava/util/Map;

    .line 396
    :goto_0
    return-object p0

    .line 394
    :cond_0
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0, p1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/mopub/network/AdResponse$Builder;->w:Ljava/util/Map;

    goto :goto_0
.end method
