.class public abstract Lcom/inmobi/monetization/internal/Ad;
.super Ljava/lang/Object;
.source "Ad.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/monetization/internal/Ad$2;,
        Lcom/inmobi/monetization/internal/Ad$a;,
        Lcom/inmobi/monetization/internal/Ad$AD_FORMAT;
    }
.end annotation


# static fields
.field public static final AD_TYPE_NATIVE:Ljava/lang/String; = "native"

.field protected static final DEFAULT_NO_OF_ADS:Ljava/lang/String; = "1"

.field protected static final KEY_AD_FORMAT:Ljava/lang/String; = "format"

.field protected static final KEY_AD_SIZE:Ljava/lang/String; = "mk-ad-slot"

.field protected static final KEY_NO_OF_ADS:Ljava/lang/String; = "mk-ads"

.field protected static final KEY_PLACEMENT_SIZE:Ljava/lang/String; = "placement-size"

.field private static e:Lcom/inmobi/monetization/internal/ConnBroadcastReciever;


# instance fields
.field a:Z

.field private b:Ljava/lang/String;

.field private c:J

.field private d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private f:Ljava/util/Map;
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

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Lcom/inmobi/monetization/internal/c;

.field private k:Lcom/inmobi/monetization/internal/Ad$a;

.field private l:Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;

.field private m:Ljava/util/HashMap;
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

.field protected mAdListener:Lcom/inmobi/monetization/internal/IMAdListener;

.field protected mEnableHardwareAcceleration:Z

.field protected mFetchStartTime:J

.field protected mImpressionId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    sput-object v0, Lcom/inmobi/monetization/internal/Ad;->e:Lcom/inmobi/monetization/internal/ConnBroadcastReciever;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 5

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object v1, p0, Lcom/inmobi/monetization/internal/Ad;->b:Ljava/lang/String;

    .line 54
    iput-wide v2, p0, Lcom/inmobi/monetization/internal/Ad;->c:J

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/monetization/internal/Ad;->mEnableHardwareAcceleration:Z

    .line 56
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/inmobi/monetization/internal/Ad;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 58
    iput-wide v2, p0, Lcom/inmobi/monetization/internal/Ad;->mFetchStartTime:J

    .line 60
    iput-object v1, p0, Lcom/inmobi/monetization/internal/Ad;->g:Ljava/lang/String;

    .line 61
    iput-object v1, p0, Lcom/inmobi/monetization/internal/Ad;->h:Ljava/lang/String;

    .line 62
    iput-object v1, p0, Lcom/inmobi/monetization/internal/Ad;->i:Ljava/lang/String;

    .line 63
    iput-object v1, p0, Lcom/inmobi/monetization/internal/Ad;->j:Lcom/inmobi/monetization/internal/c;

    .line 64
    new-instance v0, Lcom/inmobi/monetization/internal/Ad$a;

    invoke-direct {v0, p0}, Lcom/inmobi/monetization/internal/Ad$a;-><init>(Lcom/inmobi/monetization/internal/Ad;)V

    iput-object v0, p0, Lcom/inmobi/monetization/internal/Ad;->k:Lcom/inmobi/monetization/internal/Ad$a;

    .line 65
    iput-object v1, p0, Lcom/inmobi/monetization/internal/Ad;->mImpressionId:Ljava/lang/String;

    .line 66
    sget-object v0, Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;->MEDIATION:Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;

    iput-object v0, p0, Lcom/inmobi/monetization/internal/Ad;->l:Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;

    .line 67
    iput-object v1, p0, Lcom/inmobi/monetization/internal/Ad;->m:Ljava/util/HashMap;

    .line 68
    iput-object v1, p0, Lcom/inmobi/monetization/internal/Ad;->mAdListener:Lcom/inmobi/monetization/internal/IMAdListener;

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/monetization/internal/Ad;->a:Z

    .line 95
    iput-wide p1, p0, Lcom/inmobi/monetization/internal/Ad;->c:J

    .line 96
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object v1, p0, Lcom/inmobi/monetization/internal/Ad;->b:Ljava/lang/String;

    .line 54
    iput-wide v2, p0, Lcom/inmobi/monetization/internal/Ad;->c:J

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/monetization/internal/Ad;->mEnableHardwareAcceleration:Z

    .line 56
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/inmobi/monetization/internal/Ad;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 58
    iput-wide v2, p0, Lcom/inmobi/monetization/internal/Ad;->mFetchStartTime:J

    .line 60
    iput-object v1, p0, Lcom/inmobi/monetization/internal/Ad;->g:Ljava/lang/String;

    .line 61
    iput-object v1, p0, Lcom/inmobi/monetization/internal/Ad;->h:Ljava/lang/String;

    .line 62
    iput-object v1, p0, Lcom/inmobi/monetization/internal/Ad;->i:Ljava/lang/String;

    .line 63
    iput-object v1, p0, Lcom/inmobi/monetization/internal/Ad;->j:Lcom/inmobi/monetization/internal/c;

    .line 64
    new-instance v0, Lcom/inmobi/monetization/internal/Ad$a;

    invoke-direct {v0, p0}, Lcom/inmobi/monetization/internal/Ad$a;-><init>(Lcom/inmobi/monetization/internal/Ad;)V

    iput-object v0, p0, Lcom/inmobi/monetization/internal/Ad;->k:Lcom/inmobi/monetization/internal/Ad$a;

    .line 65
    iput-object v1, p0, Lcom/inmobi/monetization/internal/Ad;->mImpressionId:Ljava/lang/String;

    .line 66
    sget-object v0, Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;->MEDIATION:Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;

    iput-object v0, p0, Lcom/inmobi/monetization/internal/Ad;->l:Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;

    .line 67
    iput-object v1, p0, Lcom/inmobi/monetization/internal/Ad;->m:Ljava/util/HashMap;

    .line 68
    iput-object v1, p0, Lcom/inmobi/monetization/internal/Ad;->mAdListener:Lcom/inmobi/monetization/internal/IMAdListener;

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/monetization/internal/Ad;->a:Z

    .line 86
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    :cond_0
    invoke-static {}, Lcom/inmobi/commons/InMobi;->getAppId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/monetization/internal/Ad;->b:Ljava/lang/String;

    .line 92
    :goto_0
    return-void

    .line 91
    :cond_1
    iput-object p1, p0, Lcom/inmobi/monetization/internal/Ad;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method private a()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 310
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 311
    if-eqz v1, :cond_2

    .line 312
    iget-object v0, p0, Lcom/inmobi/monetization/internal/Ad;->m:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/inmobi/monetization/internal/Ad;->m:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 314
    iget-object v3, p0, Lcom/inmobi/monetization/internal/Ad;->m:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/inmobi/monetization/internal/Ad;->h:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inmobi/monetization/internal/Ad;->i:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 319
    iget-object v0, p0, Lcom/inmobi/monetization/internal/Ad;->h:Ljava/lang/String;

    iget-object v2, p0, Lcom/inmobi/monetization/internal/Ad;->i:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    :cond_1
    iget-object v0, p0, Lcom/inmobi/monetization/internal/Ad;->g:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 322
    const-string v0, "p-keywords"

    iget-object v2, p0, Lcom/inmobi/monetization/internal/Ad;->g:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    :cond_2
    return-object v1
.end method

.method static synthetic a(Lcom/inmobi/monetization/internal/Ad;Lorg/json/JSONObject;Lcom/inmobi/monetization/internal/configs/NetworkEventType;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/inmobi/monetization/internal/Ad;->a(Lorg/json/JSONObject;Lcom/inmobi/monetization/internal/configs/NetworkEventType;)V

    return-void
.end method

.method private a(Lorg/json/JSONObject;Lcom/inmobi/monetization/internal/configs/NetworkEventType;)V
    .locals 2

    .prologue
    .line 514
    iget-boolean v0, p0, Lcom/inmobi/monetization/internal/Ad;->a:Z

    if-eqz v0, :cond_0

    .line 515
    invoke-static {}, Lcom/inmobi/monetization/internal/configs/Initializer;->getLogger()Lcom/inmobi/commons/metric/Logger;

    move-result-object v0

    new-instance v1, Lcom/inmobi/commons/metric/EventLog;

    invoke-direct {v1, p2, p1}, Lcom/inmobi/commons/metric/EventLog;-><init>(Lcom/inmobi/commons/metric/EventType;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/metric/Logger;->logEvent(Lcom/inmobi/commons/metric/EventLog;)V

    .line 518
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/inmobi/monetization/internal/Ad;)Z
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/inmobi/monetization/internal/Ad;->b()Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/inmobi/monetization/internal/Ad;)Lcom/inmobi/monetization/internal/Ad$a;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/inmobi/monetization/internal/Ad;->k:Lcom/inmobi/monetization/internal/Ad$a;

    return-object v0
.end method

.method private b()Z
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/inmobi/monetization/internal/Ad;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method private c()Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;
    .locals 4

    .prologue
    .line 626
    invoke-static {}, Lcom/inmobi/monetization/internal/LtvpRuleProcessor;->getInstance()Lcom/inmobi/monetization/internal/LtvpRuleProcessor;

    move-result-object v0

    iget-wide v2, p0, Lcom/inmobi/monetization/internal/Ad;->c:J

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/monetization/internal/LtvpRuleProcessor;->getLtvpRuleConfig(J)Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/inmobi/monetization/internal/Ad;)Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/inmobi/monetization/internal/Ad;->l:Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;

    return-object v0
.end method


# virtual methods
.method protected collectMetrics(Lcom/inmobi/commons/network/Response;JLcom/inmobi/monetization/internal/configs/NetworkEventType;)V
    .locals 6

    .prologue
    .line 469
    :try_start_0
    iget-boolean v0, p0, Lcom/inmobi/monetization/internal/Ad;->a:Z

    if-eqz v0, :cond_0

    .line 470
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 473
    invoke-virtual {p1}, Lcom/inmobi/commons/network/Response;->getStatusCode()I

    move-result v0

    const/16 v2, 0x190

    if-le v0, v2, :cond_1

    .line 475
    const-string v0, "m"

    invoke-virtual {p1}, Lcom/inmobi/commons/network/Response;->getError()Lcom/inmobi/commons/network/ErrorCode;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 494
    :goto_0
    const-string v0, "t"

    invoke-virtual {v1, v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 495
    invoke-static {}, Lcom/inmobi/monetization/internal/configs/Initializer;->getLogger()Lcom/inmobi/commons/metric/Logger;

    move-result-object v0

    new-instance v2, Lcom/inmobi/commons/metric/EventLog;

    invoke-direct {v2, p4, v1}, Lcom/inmobi/commons/metric/EventLog;-><init>(Lcom/inmobi/commons/metric/EventType;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v2}, Lcom/inmobi/commons/metric/Logger;->logEvent(Lcom/inmobi/commons/metric/EventLog;)V

    .line 505
    :cond_0
    :goto_1
    return-void

    .line 477
    :cond_1
    invoke-virtual {p1}, Lcom/inmobi/commons/network/Response;->getStatusCode()I

    move-result v0

    const/16 v2, 0xc8

    if-eq v0, v2, :cond_2

    .line 480
    const-string v0, "m"

    invoke-virtual {p1}, Lcom/inmobi/commons/network/Response;->getStatusCode()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 499
    :catch_0
    move-exception v0

    .line 500
    const-string v0, "[InMobi]-[Monetization]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error creating metric logs for ad fetch at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 484
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Lcom/inmobi/commons/network/Response;->getHeaders()Ljava/util/Map;

    move-result-object v2

    .line 485
    if-eqz v2, :cond_3

    .line 486
    const-string v0, "im-id"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/inmobi/monetization/internal/Ad;->mImpressionId:Ljava/lang/String;

    .line 487
    const-string v0, "im-ec"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 488
    if-eqz v0, :cond_3

    .line 489
    const-string v2, "[InMobi]-[Monetization]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sandbox error Id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    :cond_3
    const-string v0, "ad"

    iget-object v2, p0, Lcom/inmobi/monetization/internal/Ad;->mImpressionId:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 525
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->isInitializedSuccessfully()Z

    move-result v0

    if-nez v0, :cond_0

    .line 526
    const-string v0, "[InMobi]-[Monetization]"

    const-string v1, "Please initialize the sdk"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    :goto_0
    return-void

    .line 529
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/inmobi/monetization/internal/Ad;->e:Lcom/inmobi/monetization/internal/ConnBroadcastReciever;

    goto :goto_0
.end method

.method protected abstract getAdFormatParams()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method protected getDecryptedResponse(Lcom/inmobi/monetization/internal/c;Lcom/inmobi/commons/network/Response;)Lcom/inmobi/commons/network/Response;
    .locals 5

    .prologue
    .line 539
    const/4 v1, 0x0

    .line 541
    :try_start_0
    invoke-virtual {p2}, Lcom/inmobi/commons/network/Response;->getResponseBody()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/inmobi/commons/internal/Base64;->decode([BI)[B

    move-result-object v0

    .line 542
    invoke-virtual {p1}, Lcom/inmobi/monetization/internal/c;->b()[B

    move-result-object v2

    invoke-virtual {p1}, Lcom/inmobi/monetization/internal/c;->a()[B

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/inmobi/commons/internal/EncryptionUtils;->DeAe([B[B[B)[B

    move-result-object v2

    .line 544
    new-instance v0, Lcom/inmobi/commons/network/Response;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p2}, Lcom/inmobi/commons/network/Response;->getStatusCode()I

    move-result v2

    invoke-virtual {p2}, Lcom/inmobi/commons/network/Response;->getHeaders()Ljava/util/Map;

    move-result-object v4

    invoke-direct {v0, v3, v2, v4}, Lcom/inmobi/commons/network/Response;-><init>(Ljava/lang/String;ILjava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 550
    :goto_0
    return-object v0

    .line 546
    :catch_0
    move-exception v0

    .line 548
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method

.method protected handleError(Lcom/inmobi/monetization/internal/c;Lcom/inmobi/commons/network/Response;)V
    .locals 4

    .prologue
    .line 419
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/inmobi/monetization/internal/Ad;->mFetchStartTime:J

    sub-long/2addr v0, v2

    .line 420
    iget-object v2, p0, Lcom/inmobi/monetization/internal/Ad;->mAdListener:Lcom/inmobi/monetization/internal/IMAdListener;

    if-eqz v2, :cond_0

    .line 422
    invoke-virtual {p2}, Lcom/inmobi/commons/network/Response;->getStatusCode()I

    move-result v2

    const/16 v3, 0xcc

    if-ne v2, v3, :cond_1

    .line 424
    iget-object v2, p0, Lcom/inmobi/monetization/internal/Ad;->mAdListener:Lcom/inmobi/monetization/internal/IMAdListener;

    sget-object v3, Lcom/inmobi/monetization/internal/AdErrorCode;->NO_FILL:Lcom/inmobi/monetization/internal/AdErrorCode;

    invoke-interface {v2, v3}, Lcom/inmobi/monetization/internal/IMAdListener;->onAdRequestFailed(Lcom/inmobi/monetization/internal/AdErrorCode;)V

    .line 426
    sget-object v2, Lcom/inmobi/monetization/internal/configs/NetworkEventType;->RESPONSE_ERROR:Lcom/inmobi/monetization/internal/configs/NetworkEventType;

    invoke-virtual {p0, p2, v0, v1, v2}, Lcom/inmobi/monetization/internal/Ad;->collectMetrics(Lcom/inmobi/commons/network/Response;JLcom/inmobi/monetization/internal/configs/NetworkEventType;)V

    .line 459
    :cond_0
    :goto_0
    return-void

    .line 428
    :cond_1
    invoke-virtual {p2}, Lcom/inmobi/commons/network/Response;->getStatusCode()I

    move-result v2

    const/16 v3, 0x190

    if-ne v2, v3, :cond_2

    .line 430
    const-string v2, "[InMobi]-[Monetization]"

    const-string v3, "Check the app Id passed in the ad"

    invoke-static {v2, v3}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    iget-object v2, p0, Lcom/inmobi/monetization/internal/Ad;->mAdListener:Lcom/inmobi/monetization/internal/IMAdListener;

    sget-object v3, Lcom/inmobi/monetization/internal/AdErrorCode;->INVALID_APP_ID:Lcom/inmobi/monetization/internal/AdErrorCode;

    invoke-interface {v2, v3}, Lcom/inmobi/monetization/internal/IMAdListener;->onAdRequestFailed(Lcom/inmobi/monetization/internal/AdErrorCode;)V

    .line 433
    sget-object v2, Lcom/inmobi/monetization/internal/configs/NetworkEventType;->RESPONSE_ERROR:Lcom/inmobi/monetization/internal/configs/NetworkEventType;

    invoke-virtual {p0, p2, v0, v1, v2}, Lcom/inmobi/monetization/internal/Ad;->collectMetrics(Lcom/inmobi/commons/network/Response;JLcom/inmobi/monetization/internal/configs/NetworkEventType;)V

    goto :goto_0

    .line 435
    :cond_2
    invoke-virtual {p2}, Lcom/inmobi/commons/network/Response;->getError()Lcom/inmobi/commons/network/ErrorCode;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 439
    invoke-virtual {p2}, Lcom/inmobi/commons/network/Response;->getError()Lcom/inmobi/commons/network/ErrorCode;

    move-result-object v2

    .line 440
    sget-object v3, Lcom/inmobi/commons/network/ErrorCode;->INTERNAL_ERROR:Lcom/inmobi/commons/network/ErrorCode;

    invoke-virtual {v2, v3}, Lcom/inmobi/commons/network/ErrorCode;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 441
    iget-object v2, p0, Lcom/inmobi/monetization/internal/Ad;->mAdListener:Lcom/inmobi/monetization/internal/IMAdListener;

    sget-object v3, Lcom/inmobi/monetization/internal/AdErrorCode;->INTERNAL_ERROR:Lcom/inmobi/monetization/internal/AdErrorCode;

    invoke-interface {v2, v3}, Lcom/inmobi/monetization/internal/IMAdListener;->onAdRequestFailed(Lcom/inmobi/monetization/internal/AdErrorCode;)V

    .line 451
    :cond_3
    :goto_1
    sget-object v2, Lcom/inmobi/monetization/internal/configs/NetworkEventType;->CONNECT_ERROR:Lcom/inmobi/monetization/internal/configs/NetworkEventType;

    invoke-virtual {p0, p2, v0, v1, v2}, Lcom/inmobi/monetization/internal/Ad;->collectMetrics(Lcom/inmobi/commons/network/Response;JLcom/inmobi/monetization/internal/configs/NetworkEventType;)V

    goto :goto_0

    .line 442
    :cond_4
    sget-object v3, Lcom/inmobi/commons/network/ErrorCode;->INVALID_REQUEST:Lcom/inmobi/commons/network/ErrorCode;

    invoke-virtual {v2, v3}, Lcom/inmobi/commons/network/ErrorCode;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 443
    iget-object v2, p0, Lcom/inmobi/monetization/internal/Ad;->mAdListener:Lcom/inmobi/monetization/internal/IMAdListener;

    sget-object v3, Lcom/inmobi/monetization/internal/AdErrorCode;->INVALID_REQUEST:Lcom/inmobi/monetization/internal/AdErrorCode;

    invoke-interface {v2, v3}, Lcom/inmobi/monetization/internal/IMAdListener;->onAdRequestFailed(Lcom/inmobi/monetization/internal/AdErrorCode;)V

    goto :goto_1

    .line 444
    :cond_5
    sget-object v3, Lcom/inmobi/commons/network/ErrorCode;->NETWORK_ERROR:Lcom/inmobi/commons/network/ErrorCode;

    invoke-virtual {v2, v3}, Lcom/inmobi/commons/network/ErrorCode;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 445
    iget-object v2, p0, Lcom/inmobi/monetization/internal/Ad;->mAdListener:Lcom/inmobi/monetization/internal/IMAdListener;

    sget-object v3, Lcom/inmobi/monetization/internal/AdErrorCode;->NETWORK_ERROR:Lcom/inmobi/monetization/internal/AdErrorCode;

    invoke-interface {v2, v3}, Lcom/inmobi/monetization/internal/IMAdListener;->onAdRequestFailed(Lcom/inmobi/monetization/internal/AdErrorCode;)V

    goto :goto_1

    .line 446
    :cond_6
    sget-object v3, Lcom/inmobi/commons/network/ErrorCode;->CONNECTION_ERROR:Lcom/inmobi/commons/network/ErrorCode;

    invoke-virtual {v2, v3}, Lcom/inmobi/commons/network/ErrorCode;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    .line 455
    :cond_7
    iget-object v0, p0, Lcom/inmobi/monetization/internal/Ad;->mAdListener:Lcom/inmobi/monetization/internal/IMAdListener;

    sget-object v1, Lcom/inmobi/monetization/internal/AdErrorCode;->INTERNAL_ERROR:Lcom/inmobi/monetization/internal/AdErrorCode;

    invoke-interface {v0, v1}, Lcom/inmobi/monetization/internal/IMAdListener;->onAdRequestFailed(Lcom/inmobi/monetization/internal/AdErrorCode;)V

    goto :goto_0
.end method

.method protected abstract handleResponse(Lcom/inmobi/monetization/internal/c;Lcom/inmobi/commons/network/Response;)V
.end method

.method protected initialize()Z
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    .line 104
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->isInitializedSuccessfully()Z

    move-result v1

    if-nez v1, :cond_0

    .line 105
    const-string v1, "[InMobi]-[Monetization]"

    const-string v2, "Please initialize the sdk"

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :goto_0
    return v0

    .line 109
    :cond_0
    iget-object v1, p0, Lcom/inmobi/monetization/internal/Ad;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, ""

    iget-object v2, p0, Lcom/inmobi/monetization/internal/Ad;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-wide v2, p0, Lcom/inmobi/monetization/internal/Ad;->c:J

    cmp-long v1, v4, v2

    if-nez v1, :cond_2

    .line 110
    const-string v1, "[InMobi]-[Monetization]"

    const-string v2, "Please create an instance of  ad with valid appId/ slotid"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 116
    :cond_2
    :try_start_0
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/internal/ThinICE;->start(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :goto_1
    :try_start_1
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/monetization/internal/b;->a(Landroid/content/Context;)V
    :try_end_1
    .catch Lcom/inmobi/monetization/internal/InvalidManifestConfigException; {:try_start_1 .. :try_end_1} :catch_1

    .line 129
    :goto_2
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getUserAgent()Ljava/lang/String;

    .line 132
    invoke-static {}, Lcom/inmobi/monetization/internal/carb/CARB;->getInstance()Lcom/inmobi/monetization/internal/carb/CARB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/monetization/internal/carb/CARB;->startCarb()V

    .line 134
    invoke-static {}, Lcom/inmobi/commons/uid/UID;->getInstance()Lcom/inmobi/commons/uid/UID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/uid/UID;->printPublisherTestId()V

    .line 136
    const-class v0, Lcom/inmobi/monetization/internal/imai/IMAIController;

    invoke-static {v0}, Lcom/inmobi/re/container/IMWebView;->setIMAIController(Ljava/lang/Class;)V

    .line 138
    sget-object v0, Lcom/inmobi/monetization/internal/Ad;->e:Lcom/inmobi/monetization/internal/ConnBroadcastReciever;

    if-nez v0, :cond_3

    .line 139
    new-instance v0, Lcom/inmobi/monetization/internal/ConnBroadcastReciever;

    invoke-direct {v0}, Lcom/inmobi/monetization/internal/ConnBroadcastReciever;-><init>()V

    sput-object v0, Lcom/inmobi/monetization/internal/Ad;->e:Lcom/inmobi/monetization/internal/ConnBroadcastReciever;

    .line 141
    :cond_3
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/inmobi/monetization/internal/Ad;->e:Lcom/inmobi/monetization/internal/ConnBroadcastReciever;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 144
    iget-wide v0, p0, Lcom/inmobi/monetization/internal/Ad;->c:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_4

    .line 145
    invoke-direct {p0}, Lcom/inmobi/monetization/internal/Ad;->c()Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/monetization/internal/Ad;->l:Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;

    .line 147
    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    .line 117
    :catch_0
    move-exception v0

    .line 118
    const-string v0, "[InMobi]-[Monetization]"

    const-string v1, "Cannot start ice. Activity is null"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 123
    :catch_1
    move-exception v0

    .line 124
    const-string v1, "[InMobi]-[Monetization]"

    const-string v2, "IMConfigException occured while initializing interstitial while validating adView"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method protected loadAd()V
    .locals 4

    .prologue
    .line 157
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->isInitializedSuccessfully()Z

    move-result v0

    if-nez v0, :cond_1

    .line 158
    const-string v0, "[InMobi]-[Monetization]"

    const-string v1, "Please initialize the sdk"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/inmobi/monetization/internal/Ad;->mAdListener:Lcom/inmobi/monetization/internal/IMAdListener;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/inmobi/monetization/internal/Ad;->mAdListener:Lcom/inmobi/monetization/internal/IMAdListener;

    sget-object v1, Lcom/inmobi/monetization/internal/AdErrorCode;->INVALID_REQUEST:Lcom/inmobi/monetization/internal/AdErrorCode;

    invoke-interface {v0, v1}, Lcom/inmobi/monetization/internal/IMAdListener;->onAdRequestFailed(Lcom/inmobi/monetization/internal/AdErrorCode;)V

    .line 302
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    invoke-static {}, Lcom/inmobi/commons/data/DeviceInfo;->updateDeviceInfo()V

    .line 166
    invoke-static {}, Lcom/inmobi/commons/uid/UID;->getInstance()Lcom/inmobi/commons/uid/UID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/uid/UID;->printPublisherTestId()V

    .line 167
    const-string v0, "[InMobi]-[Monetization]"

    const-string v1, " >>>> Start loading new Ad <<<<"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    :try_start_0
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->checkNetworkAvailibility(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 172
    iget-object v0, p0, Lcom/inmobi/monetization/internal/Ad;->mAdListener:Lcom/inmobi/monetization/internal/IMAdListener;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/inmobi/monetization/internal/Ad;->mAdListener:Lcom/inmobi/monetization/internal/IMAdListener;

    sget-object v1, Lcom/inmobi/monetization/internal/AdErrorCode;->NETWORK_ERROR:Lcom/inmobi/monetization/internal/AdErrorCode;

    invoke-interface {v0, v1}, Lcom/inmobi/monetization/internal/IMAdListener;->onAdRequestFailed(Lcom/inmobi/monetization/internal/AdErrorCode;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 297
    :catch_0
    move-exception v0

    .line 298
    iget-object v1, p0, Lcom/inmobi/monetization/internal/Ad;->j:Lcom/inmobi/monetization/internal/c;

    new-instance v2, Lcom/inmobi/commons/network/Response;

    sget-object v3, Lcom/inmobi/commons/network/ErrorCode;->INTERNAL_ERROR:Lcom/inmobi/commons/network/ErrorCode;

    invoke-direct {v2, v3}, Lcom/inmobi/commons/network/Response;-><init>(Lcom/inmobi/commons/network/ErrorCode;)V

    invoke-virtual {p0, v1, v2}, Lcom/inmobi/monetization/internal/Ad;->handleError(Lcom/inmobi/monetization/internal/c;Lcom/inmobi/commons/network/Response;)V

    .line 299
    const-string v1, "[InMobi]-[Monetization]"

    const-string v2, "Error in loading ad "

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 177
    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcom/inmobi/monetization/internal/Ad;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 178
    iget-object v0, p0, Lcom/inmobi/monetization/internal/Ad;->mAdListener:Lcom/inmobi/monetization/internal/IMAdListener;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/inmobi/monetization/internal/Ad;->mAdListener:Lcom/inmobi/monetization/internal/IMAdListener;

    sget-object v1, Lcom/inmobi/monetization/internal/AdErrorCode;->AD_DOWNLOAD_IN_PROGRESS:Lcom/inmobi/monetization/internal/AdErrorCode;

    invoke-interface {v0, v1}, Lcom/inmobi/monetization/internal/IMAdListener;->onAdRequestFailed(Lcom/inmobi/monetization/internal/AdErrorCode;)V

    goto :goto_0

    .line 184
    :cond_3
    invoke-virtual {p0}, Lcom/inmobi/monetization/internal/Ad;->getAdFormatParams()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_8

    .line 185
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/inmobi/monetization/internal/Ad;->f:Ljava/util/Map;

    .line 188
    :goto_1
    iget-object v0, p0, Lcom/inmobi/monetization/internal/Ad;->f:Ljava/util/Map;

    const-string v1, "format"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 189
    iget-object v0, p0, Lcom/inmobi/monetization/internal/Ad;->f:Ljava/util/Map;

    const-string v1, "format"

    sget-object v2, Lcom/inmobi/monetization/internal/Ad$AD_FORMAT;->IMAI:Lcom/inmobi/monetization/internal/Ad$AD_FORMAT;

    invoke-virtual {v2}, Lcom/inmobi/monetization/internal/Ad$AD_FORMAT;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    :cond_4
    iget-object v0, p0, Lcom/inmobi/monetization/internal/Ad;->f:Ljava/util/Map;

    const-string v1, "mk-ads"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 191
    iget-object v0, p0, Lcom/inmobi/monetization/internal/Ad;->f:Ljava/util/Map;

    const-string v1, "mk-ads"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    :cond_5
    iget-object v0, p0, Lcom/inmobi/monetization/internal/Ad;->b:Ljava/lang/String;

    if-eqz v0, :cond_6

    const-string v0, ""

    iget-object v1, p0, Lcom/inmobi/monetization/internal/Ad;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 194
    iget-object v0, p0, Lcom/inmobi/monetization/internal/Ad;->f:Ljava/util/Map;

    const-string v1, "mk-siteid"

    iget-object v2, p0, Lcom/inmobi/monetization/internal/Ad;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    :cond_6
    new-instance v0, Lcom/inmobi/monetization/internal/c;

    invoke-direct {v0}, Lcom/inmobi/monetization/internal/c;-><init>()V

    iput-object v0, p0, Lcom/inmobi/monetization/internal/Ad;->j:Lcom/inmobi/monetization/internal/c;

    .line 201
    iget-object v0, p0, Lcom/inmobi/monetization/internal/Ad;->j:Lcom/inmobi/monetization/internal/c;

    invoke-direct {p0}, Lcom/inmobi/monetization/internal/Ad;->a()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/monetization/internal/c;->b(Ljava/util/Map;)V

    .line 204
    iget-wide v0, p0, Lcom/inmobi/monetization/internal/Ad;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_a

    .line 206
    invoke-direct {p0}, Lcom/inmobi/monetization/internal/Ad;->c()Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/monetization/internal/Ad;->l:Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;

    .line 207
    iget-object v0, p0, Lcom/inmobi/monetization/internal/Ad;->l:Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;

    if-eqz v0, :cond_a

    .line 209
    sget-object v0, Lcom/inmobi/monetization/internal/Ad$2;->a:[I

    iget-object v1, p0, Lcom/inmobi/monetization/internal/Ad;->l:Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;

    invoke-virtual {v1}, Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 232
    iget-object v0, p0, Lcom/inmobi/monetization/internal/Ad;->mAdListener:Lcom/inmobi/monetization/internal/IMAdListener;

    if-eqz v0, :cond_7

    .line 233
    iget-object v0, p0, Lcom/inmobi/monetization/internal/Ad;->mAdListener:Lcom/inmobi/monetization/internal/IMAdListener;

    sget-object v1, Lcom/inmobi/monetization/internal/AdErrorCode;->NO_FILL:Lcom/inmobi/monetization/internal/AdErrorCode;

    invoke-interface {v0, v1}, Lcom/inmobi/monetization/internal/IMAdListener;->onAdRequestFailed(Lcom/inmobi/monetization/internal/AdErrorCode;)V

    .line 238
    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/inmobi/monetization/internal/Ad;->l:Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;

    sget-object v1, Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;->ACTIONS_ONLY:Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;

    if-eq v0, v1, :cond_a

    iget-object v0, p0, Lcom/inmobi/monetization/internal/Ad;->l:Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;

    sget-object v1, Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;->ACTIONS_TO_MEDIATION:Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;

    if-eq v0, v1, :cond_a

    .line 240
    const-string v0, "[InMobi]-[Monetization]"

    const-string v1, "No actions returned by rule"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 187
    :cond_8
    invoke-virtual {p0}, Lcom/inmobi/monetization/internal/Ad;->getAdFormatParams()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/monetization/internal/Ad;->f:Ljava/util/Map;

    goto/16 :goto_1

    .line 214
    :pswitch_0
    iget-object v0, p0, Lcom/inmobi/monetization/internal/Ad;->f:Ljava/util/Map;

    const-string v1, "mk-site-slotid"

    iget-wide v2, p0, Lcom/inmobi/monetization/internal/Ad;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    iget-object v0, p0, Lcom/inmobi/monetization/internal/Ad;->f:Ljava/util/Map;

    const-string v1, "rule-id"

    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/inmobi/monetization/internal/objects/LtvpRuleCache;->getInstance(Landroid/content/Context;)Lcom/inmobi/monetization/internal/objects/LtvpRuleCache;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/monetization/internal/objects/LtvpRuleCache;->getLtvpRuleId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    invoke-static {}, Lcom/inmobi/commons/internal/ActivityRecognitionManager;->getDetectedActivity()I

    move-result v0

    .line 217
    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    .line 218
    iget-object v1, p0, Lcom/inmobi/monetization/internal/Ad;->f:Ljava/util/Map;

    const-string v2, "u-activity-type"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    :cond_9
    iget-object v0, p0, Lcom/inmobi/monetization/internal/Ad;->j:Lcom/inmobi/monetization/internal/c;

    if-eqz v0, :cond_7

    .line 221
    iget-object v0, p0, Lcom/inmobi/monetization/internal/Ad;->j:Lcom/inmobi/monetization/internal/c;

    invoke-static {}, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsInitializer;->getConfigParams()Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;->getEndPoints()Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsEndPointsConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsEndPointsConfig;->getHouseUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/monetization/internal/c;->setUrl(Ljava/lang/String;)V

    goto :goto_2

    .line 224
    :pswitch_1
    iget-object v0, p0, Lcom/inmobi/monetization/internal/Ad;->mAdListener:Lcom/inmobi/monetization/internal/IMAdListener;

    if-eqz v0, :cond_7

    .line 225
    iget-object v0, p0, Lcom/inmobi/monetization/internal/Ad;->mAdListener:Lcom/inmobi/monetization/internal/IMAdListener;

    sget-object v1, Lcom/inmobi/monetization/internal/AdErrorCode;->DO_MONETIZE:Lcom/inmobi/monetization/internal/AdErrorCode;

    invoke-interface {v0, v1}, Lcom/inmobi/monetization/internal/IMAdListener;->onAdRequestFailed(Lcom/inmobi/monetization/internal/AdErrorCode;)V

    goto :goto_2

    .line 228
    :pswitch_2
    iget-object v0, p0, Lcom/inmobi/monetization/internal/Ad;->mAdListener:Lcom/inmobi/monetization/internal/IMAdListener;

    if-eqz v0, :cond_7

    .line 229
    iget-object v0, p0, Lcom/inmobi/monetization/internal/Ad;->mAdListener:Lcom/inmobi/monetization/internal/IMAdListener;

    sget-object v1, Lcom/inmobi/monetization/internal/AdErrorCode;->DO_NOTHING:Lcom/inmobi/monetization/internal/AdErrorCode;

    invoke-interface {v0, v1}, Lcom/inmobi/monetization/internal/IMAdListener;->onAdRequestFailed(Lcom/inmobi/monetization/internal/AdErrorCode;)V

    goto/16 :goto_2

    .line 246
    :cond_a
    iget-object v0, p0, Lcom/inmobi/monetization/internal/Ad;->j:Lcom/inmobi/monetization/internal/c;

    iget-object v1, p0, Lcom/inmobi/monetization/internal/Ad;->f:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/inmobi/monetization/internal/c;->a(Ljava/util/Map;)V

    .line 247
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/inmobi/monetization/internal/Ad;->setDownloadingNewAd(Z)V

    .line 249
    invoke-static {}, Lcom/inmobi/monetization/internal/a;->a()Lcom/inmobi/monetization/internal/a;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/monetization/internal/Ad;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/inmobi/monetization/internal/Ad;->j:Lcom/inmobi/monetization/internal/c;

    new-instance v3, Lcom/inmobi/monetization/internal/Ad$1;

    invoke-direct {v3, p0}, Lcom/inmobi/monetization/internal/Ad$1;-><init>(Lcom/inmobi/monetization/internal/Ad;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/inmobi/monetization/internal/a;->a(Ljava/lang/String;Lcom/inmobi/monetization/internal/c;Lcom/inmobi/commons/network/abstraction/INetworkListener;)V

    .line 291
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/inmobi/monetization/internal/Ad;->mFetchStartTime:J

    .line 292
    iget-object v0, p0, Lcom/inmobi/monetization/internal/Ad;->k:Lcom/inmobi/monetization/internal/Ad$a;

    const/16 v1, 0x65

    invoke-static {}, Lcom/inmobi/monetization/internal/configs/Initializer;->getConfigParams()Lcom/inmobi/monetization/internal/configs/ConfigParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/monetization/internal/configs/ConfigParams;->getFetchTimeOut()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/inmobi/monetization/internal/Ad$a;->sendEmptyMessageDelayed(IJ)Z

    .line 295
    invoke-static {}, Lcom/inmobi/monetization/internal/configs/Initializer;->getLogger()Lcom/inmobi/commons/metric/Logger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/metric/Logger;->startNewSample()Z

    move-result v0

    iput-boolean v0, p0, Lcom/inmobi/monetization/internal/Ad;->a:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 209
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setAdListener(Lcom/inmobi/monetization/internal/IMAdListener;)V
    .locals 0

    .prologue
    .line 410
    iput-object p1, p0, Lcom/inmobi/monetization/internal/Ad;->mAdListener:Lcom/inmobi/monetization/internal/IMAdListener;

    .line 411
    return-void
.end method

.method protected setAdRequest(Lcom/inmobi/monetization/internal/c;)V
    .locals 0

    .prologue
    .line 636
    iput-object p1, p0, Lcom/inmobi/monetization/internal/Ad;->j:Lcom/inmobi/monetization/internal/c;

    .line 637
    return-void
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 602
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 603
    iput-object p1, p0, Lcom/inmobi/monetization/internal/Ad;->b:Ljava/lang/String;

    .line 606
    :goto_0
    return-void

    .line 605
    :cond_0
    const-string v0, "[InMobi]-[Monetization]"

    const-string v1, "AppId cannot be null or blank."

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected setDownloadingNewAd(Z)V
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/inmobi/monetization/internal/Ad;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 341
    return-void
.end method

.method public setKeywords(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 363
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->isInitializedSuccessfully()Z

    move-result v0

    if-nez v0, :cond_1

    .line 364
    const-string v0, "[InMobi]-[Monetization]"

    const-string v1, "Please initialize the sdk"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    :cond_0
    :goto_0
    return-void

    .line 367
    :cond_1
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 368
    iput-object p1, p0, Lcom/inmobi/monetization/internal/Ad;->g:Ljava/lang/String;

    goto :goto_0
.end method

.method public setRequestParams(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 377
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->isInitializedSuccessfully()Z

    move-result v0

    if-nez v0, :cond_1

    .line 378
    const-string v0, "[InMobi]-[Monetization]"

    const-string v1, "Please initialize the sdk"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    :cond_0
    return-void

    .line 381
    :cond_1
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/inmobi/monetization/internal/Ad;->m:Ljava/util/HashMap;

    if-nez v0, :cond_2

    .line 385
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/inmobi/monetization/internal/Ad;->m:Ljava/util/HashMap;

    .line 387
    :cond_2
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 389
    iget-object v2, p0, Lcom/inmobi/monetization/internal/Ad;->m:Ljava/util/HashMap;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setSlotId(J)V
    .locals 3

    .prologue
    .line 614
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 615
    iput-wide p1, p0, Lcom/inmobi/monetization/internal/Ad;->c:J

    .line 618
    :goto_0
    return-void

    .line 617
    :cond_0
    const-string v0, "[InMobi]-[Monetization]"

    const-string v1, "Invalid slot id"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stopLoading()V
    .locals 2

    .prologue
    const/16 v1, 0x65

    .line 347
    invoke-direct {p0}, Lcom/inmobi/monetization/internal/Ad;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 348
    iget-object v0, p0, Lcom/inmobi/monetization/internal/Ad;->k:Lcom/inmobi/monetization/internal/Ad$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/monetization/internal/Ad;->k:Lcom/inmobi/monetization/internal/Ad$a;

    invoke-virtual {v0, v1}, Lcom/inmobi/monetization/internal/Ad$a;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/inmobi/monetization/internal/Ad;->k:Lcom/inmobi/monetization/internal/Ad$a;

    invoke-virtual {v0, v1}, Lcom/inmobi/monetization/internal/Ad$a;->removeMessages(I)V

    .line 351
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/inmobi/monetization/internal/Ad;->setDownloadingNewAd(Z)V

    .line 352
    const-string v0, "[InMobi]-[Monetization]"

    const-string v1, "Stopped loading an ad"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    iget-object v0, p0, Lcom/inmobi/monetization/internal/Ad;->mAdListener:Lcom/inmobi/monetization/internal/IMAdListener;

    if-eqz v0, :cond_1

    .line 354
    iget-object v0, p0, Lcom/inmobi/monetization/internal/Ad;->mAdListener:Lcom/inmobi/monetization/internal/IMAdListener;

    sget-object v1, Lcom/inmobi/monetization/internal/AdErrorCode;->ADREQUEST_CANCELLED:Lcom/inmobi/monetization/internal/AdErrorCode;

    invoke-interface {v0, v1}, Lcom/inmobi/monetization/internal/IMAdListener;->onAdRequestFailed(Lcom/inmobi/monetization/internal/AdErrorCode;)V

    .line 356
    :cond_1
    return-void
.end method
