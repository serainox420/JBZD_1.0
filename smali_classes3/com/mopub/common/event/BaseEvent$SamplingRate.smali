.class public final enum Lcom/mopub/common/event/BaseEvent$SamplingRate;
.super Ljava/lang/Enum;
.source "BaseEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/common/event/BaseEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SamplingRate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mopub/common/event/BaseEvent$SamplingRate;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AD_INTERACTIONS:Lcom/mopub/common/event/BaseEvent$SamplingRate;

.field public static final enum AD_REQUEST:Lcom/mopub/common/event/BaseEvent$SamplingRate;

.field public static final enum NATIVE_VIDEO:Lcom/mopub/common/event/BaseEvent$SamplingRate;

.field private static final synthetic b:[Lcom/mopub/common/event/BaseEvent$SamplingRate;


# instance fields
.field private final a:D


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-wide v2, 0x3fb999999999999aL    # 0.1

    .line 109
    new-instance v0, Lcom/mopub/common/event/BaseEvent$SamplingRate;

    const-string v1, "AD_REQUEST"

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/mopub/common/event/BaseEvent$SamplingRate;-><init>(Ljava/lang/String;ID)V

    sput-object v0, Lcom/mopub/common/event/BaseEvent$SamplingRate;->AD_REQUEST:Lcom/mopub/common/event/BaseEvent$SamplingRate;

    .line 110
    new-instance v0, Lcom/mopub/common/event/BaseEvent$SamplingRate;

    const-string v1, "NATIVE_VIDEO"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/mopub/common/event/BaseEvent$SamplingRate;-><init>(Ljava/lang/String;ID)V

    sput-object v0, Lcom/mopub/common/event/BaseEvent$SamplingRate;->NATIVE_VIDEO:Lcom/mopub/common/event/BaseEvent$SamplingRate;

    .line 111
    new-instance v0, Lcom/mopub/common/event/BaseEvent$SamplingRate;

    const-string v1, "AD_INTERACTIONS"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/mopub/common/event/BaseEvent$SamplingRate;-><init>(Ljava/lang/String;ID)V

    sput-object v0, Lcom/mopub/common/event/BaseEvent$SamplingRate;->AD_INTERACTIONS:Lcom/mopub/common/event/BaseEvent$SamplingRate;

    .line 108
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/mopub/common/event/BaseEvent$SamplingRate;

    sget-object v1, Lcom/mopub/common/event/BaseEvent$SamplingRate;->AD_REQUEST:Lcom/mopub/common/event/BaseEvent$SamplingRate;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mopub/common/event/BaseEvent$SamplingRate;->NATIVE_VIDEO:Lcom/mopub/common/event/BaseEvent$SamplingRate;

    aput-object v1, v0, v5

    sget-object v1, Lcom/mopub/common/event/BaseEvent$SamplingRate;->AD_INTERACTIONS:Lcom/mopub/common/event/BaseEvent$SamplingRate;

    aput-object v1, v0, v6

    sput-object v0, Lcom/mopub/common/event/BaseEvent$SamplingRate;->b:[Lcom/mopub/common/event/BaseEvent$SamplingRate;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ID)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)V"
        }
    .end annotation

    .prologue
    .line 115
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 116
    iput-wide p3, p0, Lcom/mopub/common/event/BaseEvent$SamplingRate;->a:D

    .line 117
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mopub/common/event/BaseEvent$SamplingRate;
    .locals 1

    .prologue
    .line 108
    const-class v0, Lcom/mopub/common/event/BaseEvent$SamplingRate;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mopub/common/event/BaseEvent$SamplingRate;

    return-object v0
.end method

.method public static values()[Lcom/mopub/common/event/BaseEvent$SamplingRate;
    .locals 1

    .prologue
    .line 108
    sget-object v0, Lcom/mopub/common/event/BaseEvent$SamplingRate;->b:[Lcom/mopub/common/event/BaseEvent$SamplingRate;

    invoke-virtual {v0}, [Lcom/mopub/common/event/BaseEvent$SamplingRate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mopub/common/event/BaseEvent$SamplingRate;

    return-object v0
.end method


# virtual methods
.method public getSamplingRate()D
    .locals 2

    .prologue
    .line 120
    iget-wide v0, p0, Lcom/mopub/common/event/BaseEvent$SamplingRate;->a:D

    return-wide v0
.end method
