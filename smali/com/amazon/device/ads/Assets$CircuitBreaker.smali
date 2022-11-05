.class Lcom/amazon/device/ads/Assets$CircuitBreaker;
.super Ljava/lang/Object;
.source "Assets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/Assets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CircuitBreaker"
.end annotation


# instance fields
.field broken:Z

.field final synthetic this$0:Lcom/amazon/device/ads/Assets;


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/Assets;)V
    .locals 1

    .prologue
    .line 191
    iput-object p1, p0, Lcom/amazon/device/ads/Assets$CircuitBreaker;->this$0:Lcom/amazon/device/ads/Assets;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/device/ads/Assets$CircuitBreaker;->broken:Z

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/device/ads/Assets$CircuitBreaker;)Z
    .locals 1

    .prologue
    .line 191
    invoke-direct {p0}, Lcom/amazon/device/ads/Assets$CircuitBreaker;->isBroken()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/amazon/device/ads/Assets$CircuitBreaker;)V
    .locals 0

    .prologue
    .line 191
    invoke-direct {p0}, Lcom/amazon/device/ads/Assets$CircuitBreaker;->breakCircuit()V

    return-void
.end method

.method private breakCircuit()V
    .locals 1

    .prologue
    .line 196
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazon/device/ads/Assets$CircuitBreaker;->broken:Z

    .line 197
    return-void
.end method

.method private isBroken()Z
    .locals 1

    .prologue
    .line 201
    iget-boolean v0, p0, Lcom/amazon/device/ads/Assets$CircuitBreaker;->broken:Z

    return v0
.end method
