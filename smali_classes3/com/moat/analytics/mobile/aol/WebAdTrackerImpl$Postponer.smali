.class Lcom/moat/analytics/mobile/aol/WebAdTrackerImpl$Postponer;
.super Ljava/lang/Object;
.source "WebAdTrackerImpl.java"

# interfaces
.implements Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy$Postponer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moat/analytics/mobile/aol/WebAdTrackerImpl;
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
        "Lcom/moat/analytics/mobile/aol/WebAdTracker;",
        ">;"
    }
.end annotation


# static fields
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
    .locals 4

    .prologue
    .line 67
    invoke-static {}, Lcom/moat/analytics/mobile/aol/base/functional/Optional;->empty()Lcom/moat/analytics/mobile/aol/base/functional/Optional;

    move-result-object v0

    .line 69
    :try_start_0
    const-class v1, Lcom/moat/analytics/mobile/aol/WebAdTracker;

    const-string v2, "track"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 70
    invoke-static {v1}, Lcom/moat/analytics/mobile/aol/base/functional/Optional;->of(Ljava/lang/Object;)Lcom/moat/analytics/mobile/aol/base/functional/Optional;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 74
    :goto_0
    sput-object v0, Lcom/moat/analytics/mobile/aol/WebAdTrackerImpl$Postponer;->track:Lcom/moat/analytics/mobile/aol/base/functional/Optional;

    .line 75
    return-void

    .line 71
    :catch_0
    move-exception v1

    .line 72
    invoke-static {v1}, Lcom/moat/analytics/mobile/aol/base/exception/Exceptions;->handleException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 63
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
            "Lcom/moat/analytics/mobile/aol/WebAdTracker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    const-class v0, Lcom/moat/analytics/mobile/aol/WebAdTracker;

    return-object v0
.end method

.method public isQueueable(Ljava/lang/reflect/Method;)Z
    .locals 2

    .prologue
    .line 79
    sget-object v0, Lcom/moat/analytics/mobile/aol/WebAdTrackerImpl$Postponer;->track:Lcom/moat/analytics/mobile/aol/base/functional/Optional;

    invoke-static {p1}, Lcom/moat/analytics/mobile/aol/base/functional/Optional;->of(Ljava/lang/Object;)Lcom/moat/analytics/mobile/aol/base/functional/Optional;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/moat/analytics/mobile/aol/base/functional/Optional;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
