.class Lcom/moat/analytics/mobile/aol/NativeVideoTrackerImpl$Postponer;
.super Ljava/lang/Object;
.source "NativeVideoTrackerImpl.java"

# interfaces
.implements Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy$Postponer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moat/analytics/mobile/aol/NativeVideoTrackerImpl;
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
        "Lcom/moat/analytics/mobile/aol/NativeVideoTracker;",
        ">;"
    }
.end annotation


# static fields
.field private static final changeTargetView:Lcom/moat/analytics/mobile/aol/base/functional/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/moat/analytics/mobile/aol/base/functional/Optional",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private static final dispatchEvent:Lcom/moat/analytics/mobile/aol/base/functional/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/moat/analytics/mobile/aol/base/functional/Optional",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private static final dispatchEventDep:Lcom/moat/analytics/mobile/aol/base/functional/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/moat/analytics/mobile/aol/base/functional/Optional",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private static final setDebug:Lcom/moat/analytics/mobile/aol/base/functional/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/moat/analytics/mobile/aol/base/functional/Optional",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private static final trackVideoAd:Lcom/moat/analytics/mobile/aol/base/functional/Optional;
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
    .locals 15

    .prologue
    .line 84
    invoke-static {}, Lcom/moat/analytics/mobile/aol/base/functional/Optional;->empty()Lcom/moat/analytics/mobile/aol/base/functional/Optional;

    move-result-object v4

    .line 85
    invoke-static {}, Lcom/moat/analytics/mobile/aol/base/functional/Optional;->empty()Lcom/moat/analytics/mobile/aol/base/functional/Optional;

    move-result-object v3

    .line 86
    invoke-static {}, Lcom/moat/analytics/mobile/aol/base/functional/Optional;->empty()Lcom/moat/analytics/mobile/aol/base/functional/Optional;

    move-result-object v2

    .line 87
    invoke-static {}, Lcom/moat/analytics/mobile/aol/base/functional/Optional;->empty()Lcom/moat/analytics/mobile/aol/base/functional/Optional;

    move-result-object v1

    .line 88
    invoke-static {}, Lcom/moat/analytics/mobile/aol/base/functional/Optional;->empty()Lcom/moat/analytics/mobile/aol/base/functional/Optional;

    move-result-object v5

    .line 91
    :try_start_0
    const-class v0, Lcom/moat/analytics/mobile/aol/NativeVideoTracker;

    .line 92
    const-string v6, "setDebug"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 93
    const-string v7, "trackVideoAd"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Ljava/util/Map;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-class v10, Landroid/media/MediaPlayer;

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-class v10, Landroid/view/View;

    aput-object v10, v8, v9

    invoke-virtual {v0, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 94
    const-string v8, "changeTargetView"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Landroid/view/View;

    aput-object v11, v9, v10

    invoke-virtual {v0, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 95
    const-string v9, "dispatchEvent"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Ljava/util/Map;

    aput-object v12, v10, v11

    invoke-virtual {v0, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    .line 96
    const-string v10, "dispatchEvent"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    const-class v13, Ljava/util/Map;

    aput-object v13, v11, v12

    invoke-virtual {v0, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    .line 97
    invoke-static {v6}, Lcom/moat/analytics/mobile/aol/base/functional/Optional;->of(Ljava/lang/Object;)Lcom/moat/analytics/mobile/aol/base/functional/Optional;

    move-result-object v4

    .line 98
    invoke-static {v7}, Lcom/moat/analytics/mobile/aol/base/functional/Optional;->of(Ljava/lang/Object;)Lcom/moat/analytics/mobile/aol/base/functional/Optional;

    move-result-object v3

    .line 99
    invoke-static {v8}, Lcom/moat/analytics/mobile/aol/base/functional/Optional;->of(Ljava/lang/Object;)Lcom/moat/analytics/mobile/aol/base/functional/Optional;

    move-result-object v2

    .line 100
    invoke-static {v9}, Lcom/moat/analytics/mobile/aol/base/functional/Optional;->of(Ljava/lang/Object;)Lcom/moat/analytics/mobile/aol/base/functional/Optional;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 101
    :try_start_1
    invoke-static {v10}, Lcom/moat/analytics/mobile/aol/base/functional/Optional;->of(Ljava/lang/Object;)Lcom/moat/analytics/mobile/aol/base/functional/Optional;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 105
    :goto_0
    sput-object v4, Lcom/moat/analytics/mobile/aol/NativeVideoTrackerImpl$Postponer;->setDebug:Lcom/moat/analytics/mobile/aol/base/functional/Optional;

    .line 106
    sput-object v3, Lcom/moat/analytics/mobile/aol/NativeVideoTrackerImpl$Postponer;->trackVideoAd:Lcom/moat/analytics/mobile/aol/base/functional/Optional;

    .line 107
    sput-object v2, Lcom/moat/analytics/mobile/aol/NativeVideoTrackerImpl$Postponer;->changeTargetView:Lcom/moat/analytics/mobile/aol/base/functional/Optional;

    .line 108
    sput-object v0, Lcom/moat/analytics/mobile/aol/NativeVideoTrackerImpl$Postponer;->dispatchEvent:Lcom/moat/analytics/mobile/aol/base/functional/Optional;

    .line 109
    sput-object v1, Lcom/moat/analytics/mobile/aol/NativeVideoTrackerImpl$Postponer;->dispatchEventDep:Lcom/moat/analytics/mobile/aol/base/functional/Optional;

    .line 110
    return-void

    .line 102
    :catch_0
    move-exception v0

    move-object v14, v0

    move-object v0, v5

    move-object v5, v14

    .line 103
    :goto_1
    invoke-static {v5}, Lcom/moat/analytics/mobile/aol/base/exception/Exceptions;->handleException(Ljava/lang/Exception;)V

    goto :goto_0

    .line 102
    :catch_1
    move-exception v5

    goto :goto_1
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 73
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
            "Lcom/moat/analytics/mobile/aol/NativeVideoTracker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 125
    const-class v0, Lcom/moat/analytics/mobile/aol/NativeVideoTracker;

    return-object v0
.end method

.method public isQueueable(Ljava/lang/reflect/Method;)Z
    .locals 2

    .prologue
    .line 115
    invoke-static {p1}, Lcom/moat/analytics/mobile/aol/base/functional/Optional;->of(Ljava/lang/Object;)Lcom/moat/analytics/mobile/aol/base/functional/Optional;

    move-result-object v0

    .line 116
    sget-object v1, Lcom/moat/analytics/mobile/aol/NativeVideoTrackerImpl$Postponer;->setDebug:Lcom/moat/analytics/mobile/aol/base/functional/Optional;

    invoke-virtual {v1, v0}, Lcom/moat/analytics/mobile/aol/base/functional/Optional;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/moat/analytics/mobile/aol/NativeVideoTrackerImpl$Postponer;->trackVideoAd:Lcom/moat/analytics/mobile/aol/base/functional/Optional;

    .line 117
    invoke-virtual {v1, v0}, Lcom/moat/analytics/mobile/aol/base/functional/Optional;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/moat/analytics/mobile/aol/NativeVideoTrackerImpl$Postponer;->changeTargetView:Lcom/moat/analytics/mobile/aol/base/functional/Optional;

    .line 118
    invoke-virtual {v1, v0}, Lcom/moat/analytics/mobile/aol/base/functional/Optional;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/moat/analytics/mobile/aol/NativeVideoTrackerImpl$Postponer;->dispatchEvent:Lcom/moat/analytics/mobile/aol/base/functional/Optional;

    .line 119
    invoke-virtual {v1, v0}, Lcom/moat/analytics/mobile/aol/base/functional/Optional;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/moat/analytics/mobile/aol/NativeVideoTrackerImpl$Postponer;->dispatchEventDep:Lcom/moat/analytics/mobile/aol/base/functional/Optional;

    .line 120
    invoke-virtual {v1, v0}, Lcom/moat/analytics/mobile/aol/base/functional/Optional;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 116
    :goto_0
    return v0

    .line 120
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
