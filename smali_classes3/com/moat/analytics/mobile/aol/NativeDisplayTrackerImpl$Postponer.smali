.class Lcom/moat/analytics/mobile/aol/NativeDisplayTrackerImpl$Postponer;
.super Ljava/lang/Object;
.source "NativeDisplayTrackerImpl.java"

# interfaces
.implements Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy$Postponer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moat/analytics/mobile/aol/NativeDisplayTrackerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Postponer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy$Postponer",
        "<",
        "Lcom/moat/analytics/mobile/aol/NativeDisplayTracker;",
        ">;"
    }
.end annotation


# static fields
.field private static final stopTracking:Lcom/moat/analytics/mobile/aol/base/functional/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/moat/analytics/mobile/aol/base/functional/Optional",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private static final track:Lcom/moat/analytics/mobile/aol/base/functional/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/moat/analytics/mobile/aol/base/functional/Optional",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    .line 167
    invoke-static {}, Lcom/moat/analytics/mobile/aol/base/functional/Optional;->empty()Lcom/moat/analytics/mobile/aol/base/functional/Optional;

    move-result-object v2

    .line 168
    invoke-static {}, Lcom/moat/analytics/mobile/aol/base/functional/Optional;->empty()Lcom/moat/analytics/mobile/aol/base/functional/Optional;

    move-result-object v0

    .line 171
    :try_start_0
    const-class v1, Lcom/moat/analytics/mobile/aol/NativeDisplayTracker;

    const-string v3, "track"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/util/Map;

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 172
    const-class v3, Lcom/moat/analytics/mobile/aol/NativeDisplayTracker;

    const-string v4, "stopTracking"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 173
    invoke-static {v1}, Lcom/moat/analytics/mobile/aol/base/functional/Optional;->of(Ljava/lang/Object;)Lcom/moat/analytics/mobile/aol/base/functional/Optional;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 174
    :try_start_1
    invoke-static {v3}, Lcom/moat/analytics/mobile/aol/base/functional/Optional;->of(Ljava/lang/Object;)Lcom/moat/analytics/mobile/aol/base/functional/Optional;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 178
    :goto_0
    sput-object v1, Lcom/moat/analytics/mobile/aol/NativeDisplayTrackerImpl$Postponer;->track:Lcom/moat/analytics/mobile/aol/base/functional/Optional;

    .line 179
    sput-object v0, Lcom/moat/analytics/mobile/aol/NativeDisplayTrackerImpl$Postponer;->stopTracking:Lcom/moat/analytics/mobile/aol/base/functional/Optional;

    .line 180
    return-void

    .line 175
    :catch_0
    move-exception v1

    move-object v7, v1

    move-object v1, v2

    move-object v2, v7

    .line 176
    :goto_1
    invoke-static {v2}, Lcom/moat/analytics/mobile/aol/base/exception/Exceptions;->handleException(Ljava/lang/Exception;)V

    goto :goto_0

    .line 175
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMethodsOwner()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Lcom/moat/analytics/mobile/aol/NativeDisplayTracker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 190
    const-class v0, Lcom/moat/analytics/mobile/aol/NativeDisplayTracker;

    return-object v0
.end method

.method public isQueueable(Ljava/lang/reflect/Method;)Z
    .locals 2

    .prologue
    .line 184
    invoke-static {p1}, Lcom/moat/analytics/mobile/aol/base/functional/Optional;->of(Ljava/lang/Object;)Lcom/moat/analytics/mobile/aol/base/functional/Optional;

    move-result-object v0

    .line 185
    sget-object v1, Lcom/moat/analytics/mobile/aol/NativeDisplayTrackerImpl$Postponer;->track:Lcom/moat/analytics/mobile/aol/base/functional/Optional;

    invoke-virtual {v1, v0}, Lcom/moat/analytics/mobile/aol/base/functional/Optional;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/moat/analytics/mobile/aol/NativeDisplayTrackerImpl$Postponer;->stopTracking:Lcom/moat/analytics/mobile/aol/base/functional/Optional;

    invoke-virtual {v1, v0}, Lcom/moat/analytics/mobile/aol/base/functional/Optional;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
