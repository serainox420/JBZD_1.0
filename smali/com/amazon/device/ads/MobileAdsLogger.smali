.class Lcom/amazon/device/ads/MobileAdsLogger;
.super Ljava/lang/Object;
.source "MobileAdsLogger.java"

# interfaces
.implements Lcom/amazon/device/ads/Logger;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/device/ads/MobileAdsLogger$1;,
        Lcom/amazon/device/ads/MobileAdsLogger$Level;
    }
.end annotation


# static fields
.field private static final DEFAULT_LOGTAG_PREFIX:Ljava/lang/String; = "AmazonMobileAds"

.field private static final DEFAULT_MAX_LENGTH:I = 0x3e8

.field static final LOGGING_ENABLED:Ljava/lang/String; = "loggingEnabled"


# instance fields
.field private final debugProperties:Lcom/amazon/device/ads/DebugProperties;

.field private final logger:Lcom/amazon/device/ads/Logger;

.field private maxLength:I

.field private final settings:Lcom/amazon/device/ads/Settings;


# direct methods
.method public constructor <init>(Lcom/amazon/device/ads/Logger;)V
    .locals 2

    .prologue
    .line 26
    invoke-static {}, Lcom/amazon/device/ads/DebugProperties;->getInstance()Lcom/amazon/device/ads/DebugProperties;

    move-result-object v0

    invoke-static {}, Lcom/amazon/device/ads/Settings;->getInstance()Lcom/amazon/device/ads/Settings;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;-><init>(Lcom/amazon/device/ads/Logger;Lcom/amazon/device/ads/DebugProperties;Lcom/amazon/device/ads/Settings;)V

    .line 27
    return-void
.end method

.method constructor <init>(Lcom/amazon/device/ads/Logger;Lcom/amazon/device/ads/DebugProperties;Lcom/amazon/device/ads/Settings;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/amazon/device/ads/MobileAdsLogger;->maxLength:I

    .line 30
    const-string v0, "AmazonMobileAds"

    invoke-interface {p1, v0}, Lcom/amazon/device/ads/Logger;->withLogTag(Ljava/lang/String;)Lcom/amazon/device/ads/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/MobileAdsLogger;->logger:Lcom/amazon/device/ads/Logger;

    .line 31
    iput-object p2, p0, Lcom/amazon/device/ads/MobileAdsLogger;->debugProperties:Lcom/amazon/device/ads/DebugProperties;

    .line 32
    iput-object p3, p0, Lcom/amazon/device/ads/MobileAdsLogger;->settings:Lcom/amazon/device/ads/Settings;

    .line 33
    return-void
.end method

.method private varargs doLog(ZLcom/amazon/device/ads/MobileAdsLogger$Level;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 256
    invoke-virtual {p0}, Lcom/amazon/device/ads/MobileAdsLogger;->canLog()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    .line 258
    :cond_0
    invoke-direct {p0, p3, p4}, Lcom/amazon/device/ads/MobileAdsLogger;->formatAndSplit(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 260
    sget-object v2, Lcom/amazon/device/ads/MobileAdsLogger$1;->$SwitchMap$com$amazon$device$ads$MobileAdsLogger$Level:[I

    invoke-virtual {p2}, Lcom/amazon/device/ads/MobileAdsLogger$Level;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 263
    :pswitch_0
    iget-object v2, p0, Lcom/amazon/device/ads/MobileAdsLogger;->logger:Lcom/amazon/device/ads/Logger;

    invoke-interface {v2, v0}, Lcom/amazon/device/ads/Logger;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 266
    :pswitch_1
    iget-object v2, p0, Lcom/amazon/device/ads/MobileAdsLogger;->logger:Lcom/amazon/device/ads/Logger;

    invoke-interface {v2, v0}, Lcom/amazon/device/ads/Logger;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 269
    :pswitch_2
    iget-object v2, p0, Lcom/amazon/device/ads/MobileAdsLogger;->logger:Lcom/amazon/device/ads/Logger;

    invoke-interface {v2, v0}, Lcom/amazon/device/ads/Logger;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 272
    :pswitch_3
    iget-object v2, p0, Lcom/amazon/device/ads/MobileAdsLogger;->logger:Lcom/amazon/device/ads/Logger;

    invoke-interface {v2, v0}, Lcom/amazon/device/ads/Logger;->v(Ljava/lang/String;)V

    goto :goto_0

    .line 275
    :pswitch_4
    iget-object v2, p0, Lcom/amazon/device/ads/MobileAdsLogger;->logger:Lcom/amazon/device/ads/Logger;

    invoke-interface {v2, v0}, Lcom/amazon/device/ads/Logger;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 280
    :cond_1
    return-void

    .line 260
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private varargs formatAndSplit(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 284
    if-eqz p2, :cond_0

    array-length v0, p2

    if-lez v0, :cond_0

    .line 286
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 288
    :cond_0
    iget v0, p0, Lcom/amazon/device/ads/MobileAdsLogger;->maxLength:I

    invoke-direct {p0, p1, v0}, Lcom/amazon/device/ads/MobileAdsLogger;->split(Ljava/lang/String;I)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method private split(Ljava/lang/String;I)Ljava/lang/Iterable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 293
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 294
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 302
    :goto_0
    return-object v0

    .line 298
    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 300
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int v3, v0, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    add-int/2addr v0, p2

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 302
    goto :goto_0
.end method


# virtual methods
.method public canLog()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 62
    iget-object v1, p0, Lcom/amazon/device/ads/MobileAdsLogger;->logger:Lcom/amazon/device/ads/Logger;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amazon/device/ads/MobileAdsLogger;->debugProperties:Lcom/amazon/device/ads/DebugProperties;

    if-nez v1, :cond_1

    .line 67
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/amazon/device/ads/MobileAdsLogger;->debugProperties:Lcom/amazon/device/ads/DebugProperties;

    const-string v2, "debug.logging"

    iget-object v3, p0, Lcom/amazon/device/ads/MobileAdsLogger;->settings:Lcom/amazon/device/ads/Settings;

    const-string v4, "loggingEnabled"

    invoke-virtual {v3, v4, v0}, Lcom/amazon/device/ads/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/amazon/device/ads/DebugProperties;->getDebugPropertyAsBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 207
    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 208
    return-void
.end method

.method public varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 156
    sget-object v0, Lcom/amazon/device/ads/MobileAdsLogger$Level;->DEBUG:Lcom/amazon/device/ads/MobileAdsLogger$Level;

    invoke-virtual {p0, v0, p1, p2}, Lcom/amazon/device/ads/MobileAdsLogger;->log(Lcom/amazon/device/ads/MobileAdsLogger$Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 157
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 225
    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 226
    return-void
.end method

.method public varargs e(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 180
    sget-object v0, Lcom/amazon/device/ads/MobileAdsLogger$Level;->ERROR:Lcom/amazon/device/ads/MobileAdsLogger$Level;

    invoke-virtual {p0, v0, p1, p2}, Lcom/amazon/device/ads/MobileAdsLogger;->log(Lcom/amazon/device/ads/MobileAdsLogger$Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 181
    return-void
.end method

.method public enableLogging(Z)V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/amazon/device/ads/MobileAdsLogger;->settings:Lcom/amazon/device/ads/Settings;

    const-string v1, "loggingEnabled"

    invoke-virtual {v0, v1, p1}, Lcom/amazon/device/ads/Settings;->putTransientBoolean(Ljava/lang/String;Z)V

    .line 54
    return-void
.end method

.method public final enableLoggingWithSetterNotification(Z)V
    .locals 4

    .prologue
    .line 81
    if-nez p1, :cond_0

    .line 83
    const-string v0, "Debug logging"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->logSetterNotification(Ljava/lang/String;Ljava/lang/Object;)V

    .line 86
    :cond_0
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/MobileAdsLogger;->enableLogging(Z)V

    .line 88
    if-eqz p1, :cond_1

    .line 90
    const-string v0, "Debug logging"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->logSetterNotification(Ljava/lang/String;Ljava/lang/Object;)V

    .line 91
    const-string v0, "Amazon Mobile Ads API Version: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {}, Lcom/amazon/device/ads/Version;->getRawSDKVersion()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    :cond_1
    return-void
.end method

.method public varargs forceLog(Lcom/amazon/device/ads/MobileAdsLogger$Level;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 251
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/amazon/device/ads/MobileAdsLogger;->doLog(ZLcom/amazon/device/ads/MobileAdsLogger$Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 252
    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 189
    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/amazon/device/ads/MobileAdsLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 190
    return-void
.end method

.method public varargs i(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 132
    sget-object v0, Lcom/amazon/device/ads/MobileAdsLogger$Level;->INFO:Lcom/amazon/device/ads/MobileAdsLogger$Level;

    invoke-virtual {p0, v0, p1, p2}, Lcom/amazon/device/ads/MobileAdsLogger;->log(Lcom/amazon/device/ads/MobileAdsLogger$Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 133
    return-void
.end method

.method public varargs log(Lcom/amazon/device/ads/MobileAdsLogger$Level;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 238
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/amazon/device/ads/MobileAdsLogger;->doLog(ZLcom/amazon/device/ads/MobileAdsLogger$Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 239
    return-void
.end method

.method public logSetterNotification(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 107
    invoke-virtual {p0}, Lcom/amazon/device/ads/MobileAdsLogger;->canLog()Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    :goto_0
    return-void

    .line 113
    :cond_0
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 115
    const-string v1, "%s has been %s."

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "enabled"

    :goto_1
    aput-object v0, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-string v0, "disabled"

    goto :goto_1

    .line 119
    :cond_2
    const-string v0, "%s has been set: %s"

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public v(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 198
    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/amazon/device/ads/MobileAdsLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 199
    return-void
.end method

.method public varargs v(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 144
    sget-object v0, Lcom/amazon/device/ads/MobileAdsLogger$Level;->VERBOSE:Lcom/amazon/device/ads/MobileAdsLogger$Level;

    invoke-virtual {p0, v0, p1, p2}, Lcom/amazon/device/ads/MobileAdsLogger;->log(Lcom/amazon/device/ads/MobileAdsLogger$Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    return-void
.end method

.method public w(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 216
    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/amazon/device/ads/MobileAdsLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 217
    return-void
.end method

.method public varargs w(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 168
    sget-object v0, Lcom/amazon/device/ads/MobileAdsLogger$Level;->WARN:Lcom/amazon/device/ads/MobileAdsLogger$Level;

    invoke-virtual {p0, v0, p1, p2}, Lcom/amazon/device/ads/MobileAdsLogger;->log(Lcom/amazon/device/ads/MobileAdsLogger$Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 169
    return-void
.end method

.method public bridge synthetic withLogTag(Ljava/lang/String;)Lcom/amazon/device/ads/Logger;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/MobileAdsLogger;->withLogTag(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v0

    return-object v0
.end method

.method public withLogTag(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;
    .locals 3

    .prologue
    .line 43
    iget-object v0, p0, Lcom/amazon/device/ads/MobileAdsLogger;->logger:Lcom/amazon/device/ads/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AmazonMobileAds "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/device/ads/Logger;->withLogTag(Ljava/lang/String;)Lcom/amazon/device/ads/Logger;

    .line 44
    return-object p0
.end method

.method public withMaxLength(I)Lcom/amazon/device/ads/MobileAdsLogger;
    .locals 0

    .prologue
    .line 37
    iput p1, p0, Lcom/amazon/device/ads/MobileAdsLogger;->maxLength:I

    .line 38
    return-object p0
.end method
