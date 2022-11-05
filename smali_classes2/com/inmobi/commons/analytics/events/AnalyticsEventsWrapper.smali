.class public final Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;
.super Ljava/lang/Object;
.source "AnalyticsEventsWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper$IMItemType;,
        Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper$IMSectionStatus;
    }
.end annotation


# static fields
.field private static a:Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;

.field private static c:Z


# instance fields
.field private b:Lcom/inmobi/commons/analytics/db/AnalyticsEventsQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    sput-boolean v0, Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;->c:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 274
    const-string v0, "[InMobi]-[Analytics]-4.5.5"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IllegalArgumentError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    return-void
.end method

.method private a()Z
    .locals 2

    .prologue
    .line 284
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/analytics/util/SessionInfo;->getSessionId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 286
    invoke-static {}, Lcom/inmobi/commons/InMobi;->getAppId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;->startSession(Ljava/lang/String;Ljava/util/Map;)V

    .line 291
    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 287
    :cond_1
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/analytics/util/SessionInfo;->getSessionId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 288
    const-string v0, "[InMobi]-[Analytics]-4.5.5"

    const-string v1, "Please call InMobi.initialize or startSession before calling any events API"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;
    .locals 3

    .prologue
    .line 73
    const-class v1, Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/inmobi/commons/analytics/util/AnalyticsUtils;->getWebviewUserAgent()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 74
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/analytics/util/AnalyticsUtils;->setWebviewUserAgent(Ljava/lang/String;)V

    .line 76
    :cond_0
    sget-object v0, Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;->a:Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;

    if-nez v0, :cond_1

    .line 77
    new-instance v0, Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;

    invoke-direct {v0}, Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;-><init>()V

    sput-object v0, Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;->a:Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;

    .line 78
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/inmobi/commons/analytics/util/AnalyticsUtils;->setStartHandle(Z)V

    .line 79
    invoke-static {}, Lcom/inmobi/commons/analytics/net/AnalyticsNetworkManager;->startInstance()Lcom/inmobi/commons/analytics/net/AnalyticsNetworkManager;

    .line 81
    :cond_1
    sget-object v0, Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;->a:Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;

    invoke-static {}, Lcom/inmobi/commons/analytics/db/AnalyticsEventsQueue;->getInstance()Lcom/inmobi/commons/analytics/db/AnalyticsEventsQueue;

    move-result-object v2

    iput-object v2, v0, Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;->b:Lcom/inmobi/commons/analytics/db/AnalyticsEventsQueue;

    .line 83
    sget-object v0, Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;->a:Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static isEventsUser()Z
    .locals 1

    .prologue
    .line 32
    sget-boolean v0, Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;->c:Z

    return v0
.end method

.method public static setIsEventsUser()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x1

    sput-boolean v0, Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;->c:Z

    .line 37
    return-void
.end method


# virtual methods
.method public beginSection(ILjava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 152
    if-nez p2, :cond_1

    .line 153
    :try_start_0
    const-string v0, "arguments cannot be null"

    invoke-direct {p0, v0}, Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;->a(Ljava/lang/String;)V

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    if-eqz p3, :cond_2

    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_2

    .line 157
    const-string v0, "attribute map cannot exceed 10 values"

    invoke-direct {p0, v0}, Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 167
    :catch_0
    move-exception v0

    .line 168
    const-string v1, "[InMobi]-[Analytics]-4.5.5"

    const-string v2, "Begin Section Exception"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 160
    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    new-instance v0, Lcom/inmobi/commons/analytics/db/FunctionLevelBegin;

    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/inmobi/commons/analytics/db/FunctionLevelBegin;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/util/Map;)V

    .line 165
    iget-object v1, p0, Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;->b:Lcom/inmobi/commons/analytics/db/AnalyticsEventsQueue;

    invoke-virtual {v1, v0}, Lcom/inmobi/commons/analytics/db/AnalyticsEventsQueue;->addElement(Ljava/lang/Object;)V

    .line 166
    iget-object v0, p0, Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;->b:Lcom/inmobi/commons/analytics/db/AnalyticsEventsQueue;

    invoke-virtual {v0}, Lcom/inmobi/commons/analytics/db/AnalyticsEventsQueue;->processFunctions()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public endSection(ILjava/lang/String;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 190
    if-nez p2, :cond_1

    .line 191
    :try_start_0
    const-string v0, "arguments cannot be null"

    invoke-direct {p0, v0}, Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;->a(Ljava/lang/String;)V

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    if-eqz p3, :cond_2

    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_2

    .line 195
    const-string v0, "attribute map cannot exceed 10 values"

    invoke-direct {p0, v0}, Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 205
    :catch_0
    move-exception v0

    .line 206
    const-string v1, "[InMobi]-[Analytics]-4.5.5"

    const-string v2, "End Section Exception"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 198
    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    new-instance v0, Lcom/inmobi/commons/analytics/db/FunctionLevelEnd;

    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v4, 0x0

    move v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/inmobi/commons/analytics/db/FunctionLevelEnd;-><init>(Landroid/content/Context;ILjava/lang/String;Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper$IMSectionStatus;Ljava/util/Map;)V

    .line 203
    iget-object v1, p0, Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;->b:Lcom/inmobi/commons/analytics/db/AnalyticsEventsQueue;

    invoke-virtual {v1, v0}, Lcom/inmobi/commons/analytics/db/AnalyticsEventsQueue;->addElement(Ljava/lang/Object;)V

    .line 204
    iget-object v0, p0, Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;->b:Lcom/inmobi/commons/analytics/db/AnalyticsEventsQueue;

    invoke-virtual {v0}, Lcom/inmobi/commons/analytics/db/AnalyticsEventsQueue;->processFunctions()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public endSession(Ljava/util/Map;)V
    .locals 3
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
    .line 126
    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    .line 127
    const-string v0, "attribute map cannot exceed 10 values"

    invoke-direct {p0, v0}, Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;->a(Ljava/lang/String;)V

    .line 136
    :goto_0
    return-void

    .line 130
    :cond_0
    new-instance v0, Lcom/inmobi/commons/analytics/db/FunctionEndSession;

    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/inmobi/commons/analytics/db/FunctionEndSession;-><init>(Landroid/content/Context;Ljava/util/Map;)V

    .line 131
    iget-object v1, p0, Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;->b:Lcom/inmobi/commons/analytics/db/AnalyticsEventsQueue;

    invoke-virtual {v1, v0}, Lcom/inmobi/commons/analytics/db/AnalyticsEventsQueue;->addElement(Ljava/lang/Object;)V

    .line 132
    iget-object v0, p0, Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;->b:Lcom/inmobi/commons/analytics/db/AnalyticsEventsQueue;

    invoke-virtual {v0}, Lcom/inmobi/commons/analytics/db/AnalyticsEventsQueue;->processFunctions()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 133
    :catch_0
    move-exception v0

    .line 134
    const-string v1, "[InMobi]-[Analytics]-4.5.5"

    const-string v2, "End Session Exception"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setUserAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 295
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 297
    :cond_0
    const-string v0, "arguments cannot be null or empty"

    invoke-direct {p0, v0}, Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;->a(Ljava/lang/String;)V

    .line 315
    :cond_1
    :goto_0
    return-void

    .line 300
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xf

    if-gt v0, v1, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_4

    .line 301
    :cond_3
    const-string v0, "attribute name cannot exceed 15 chars and attribute val cannot exceed 20 chars. Please pass a valid attribute"

    invoke-direct {p0, v0}, Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 305
    :cond_4
    :try_start_0
    invoke-direct {p0}, Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 308
    new-instance v0, Lcom/inmobi/commons/analytics/db/FunctionSetUserAttribute;

    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/inmobi/commons/analytics/db/FunctionSetUserAttribute;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    iget-object v1, p0, Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;->b:Lcom/inmobi/commons/analytics/db/AnalyticsEventsQueue;

    invoke-virtual {v1, v0}, Lcom/inmobi/commons/analytics/db/AnalyticsEventsQueue;->addElement(Ljava/lang/Object;)V

    .line 311
    iget-object v0, p0, Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;->b:Lcom/inmobi/commons/analytics/db/AnalyticsEventsQueue;

    invoke-virtual {v0}, Lcom/inmobi/commons/analytics/db/AnalyticsEventsQueue;->processFunctions()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 312
    :catch_0
    move-exception v0

    .line 313
    const-string v1, "[InMobi]-[Analytics]-4.5.5"

    const-string v2, "Set User Attribute Exception"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public startSession(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 99
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    :cond_0
    const-string v0, "appid cannot be null or empty"

    invoke-direct {p0, v0}, Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;->a(Ljava/lang/String;)V

    .line 114
    :goto_0
    return-void

    .line 103
    :cond_1
    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_2

    .line 104
    const-string v0, "attribute map cannot exceed 10 values"

    invoke-direct {p0, v0}, Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 111
    :catch_0
    move-exception v0

    .line 112
    const-string v1, "[InMobi]-[Analytics]-4.5.5"

    const-string v2, "Init exception"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 107
    :cond_2
    :try_start_1
    new-instance v0, Lcom/inmobi/commons/analytics/db/FunctionStartSession;

    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/inmobi/commons/analytics/db/FunctionStartSession;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 109
    iget-object v1, p0, Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;->b:Lcom/inmobi/commons/analytics/db/AnalyticsEventsQueue;

    invoke-virtual {v1, v0}, Lcom/inmobi/commons/analytics/db/AnalyticsEventsQueue;->addElement(Ljava/lang/Object;)V

    .line 110
    iget-object v0, p0, Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;->b:Lcom/inmobi/commons/analytics/db/AnalyticsEventsQueue;

    invoke-virtual {v0}, Lcom/inmobi/commons/analytics/db/AnalyticsEventsQueue;->processFunctions()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public tagEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 253
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 254
    :cond_0
    const-string v0, "arguments cannot be null or empty"

    invoke-direct {p0, v0}, Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;->a(Ljava/lang/String;)V

    .line 271
    :cond_1
    :goto_0
    return-void

    .line 257
    :cond_2
    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_3

    .line 258
    const-string v0, "attribute map cannot exceed 10 values"

    invoke-direct {p0, v0}, Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 268
    :catch_0
    move-exception v0

    .line 269
    const-string v1, "[InMobi]-[Analytics]-4.5.5"

    const-string v2, "Tag Event Exception"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 261
    :cond_3
    :try_start_1
    invoke-direct {p0}, Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 264
    new-instance v0, Lcom/inmobi/commons/analytics/db/FunctionTagEvent;

    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/inmobi/commons/analytics/db/FunctionTagEvent;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 266
    iget-object v1, p0, Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;->b:Lcom/inmobi/commons/analytics/db/AnalyticsEventsQueue;

    invoke-virtual {v1, v0}, Lcom/inmobi/commons/analytics/db/AnalyticsEventsQueue;->addElement(Ljava/lang/Object;)V

    .line 267
    iget-object v0, p0, Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;->b:Lcom/inmobi/commons/analytics/db/AnalyticsEventsQueue;

    invoke-virtual {v0}, Lcom/inmobi/commons/analytics/db/AnalyticsEventsQueue;->processFunctions()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public tagTransactionManually(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 221
    if-nez p1, :cond_1

    .line 222
    :try_start_0
    const-string v0, "transaction intent cannot be null or empty"

    invoke-direct {p0, v0}, Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;->a(Ljava/lang/String;)V

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 225
    :cond_1
    invoke-direct {p0}, Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    new-instance v0, Lcom/inmobi/commons/analytics/db/FunctionTagTransaction;

    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/inmobi/commons/analytics/db/FunctionTagTransaction;-><init>(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 230
    iget-object v1, p0, Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;->b:Lcom/inmobi/commons/analytics/db/AnalyticsEventsQueue;

    invoke-virtual {v1, v0}, Lcom/inmobi/commons/analytics/db/AnalyticsEventsQueue;->addElement(Ljava/lang/Object;)V

    .line 231
    iget-object v0, p0, Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;->b:Lcom/inmobi/commons/analytics/db/AnalyticsEventsQueue;

    invoke-virtual {v0}, Lcom/inmobi/commons/analytics/db/AnalyticsEventsQueue;->processFunctions()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 232
    :catch_0
    move-exception v0

    .line 233
    const-string v1, "[InMobi]-[Analytics]-4.5.5"

    const-string v2, "Tag Transaction Manually Exception"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
