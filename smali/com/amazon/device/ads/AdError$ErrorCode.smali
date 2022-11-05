.class public final enum Lcom/amazon/device/ads/AdError$ErrorCode;
.super Ljava/lang/Enum;
.source "AdError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/AdError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/amazon/device/ads/AdError$ErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/device/ads/AdError$ErrorCode;

.field public static final enum INTERNAL_ERROR:Lcom/amazon/device/ads/AdError$ErrorCode;

.field public static final enum NETWORK_ERROR:Lcom/amazon/device/ads/AdError$ErrorCode;

.field public static final enum NETWORK_TIMEOUT:Lcom/amazon/device/ads/AdError$ErrorCode;

.field public static final enum NO_FILL:Lcom/amazon/device/ads/AdError$ErrorCode;

.field public static final enum REQUEST_ERROR:Lcom/amazon/device/ads/AdError$ErrorCode;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 34
    new-instance v0, Lcom/amazon/device/ads/AdError$ErrorCode;

    const-string v1, "NETWORK_ERROR"

    invoke-direct {v0, v1, v2}, Lcom/amazon/device/ads/AdError$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/device/ads/AdError$ErrorCode;->NETWORK_ERROR:Lcom/amazon/device/ads/AdError$ErrorCode;

    .line 39
    new-instance v0, Lcom/amazon/device/ads/AdError$ErrorCode;

    const-string v1, "NETWORK_TIMEOUT"

    invoke-direct {v0, v1, v3}, Lcom/amazon/device/ads/AdError$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/device/ads/AdError$ErrorCode;->NETWORK_TIMEOUT:Lcom/amazon/device/ads/AdError$ErrorCode;

    .line 44
    new-instance v0, Lcom/amazon/device/ads/AdError$ErrorCode;

    const-string v1, "NO_FILL"

    invoke-direct {v0, v1, v4}, Lcom/amazon/device/ads/AdError$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/device/ads/AdError$ErrorCode;->NO_FILL:Lcom/amazon/device/ads/AdError$ErrorCode;

    .line 49
    new-instance v0, Lcom/amazon/device/ads/AdError$ErrorCode;

    const-string v1, "INTERNAL_ERROR"

    invoke-direct {v0, v1, v5}, Lcom/amazon/device/ads/AdError$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/device/ads/AdError$ErrorCode;->INTERNAL_ERROR:Lcom/amazon/device/ads/AdError$ErrorCode;

    .line 54
    new-instance v0, Lcom/amazon/device/ads/AdError$ErrorCode;

    const-string v1, "REQUEST_ERROR"

    invoke-direct {v0, v1, v6}, Lcom/amazon/device/ads/AdError$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/device/ads/AdError$ErrorCode;->REQUEST_ERROR:Lcom/amazon/device/ads/AdError$ErrorCode;

    .line 28
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/amazon/device/ads/AdError$ErrorCode;

    sget-object v1, Lcom/amazon/device/ads/AdError$ErrorCode;->NETWORK_ERROR:Lcom/amazon/device/ads/AdError$ErrorCode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/device/ads/AdError$ErrorCode;->NETWORK_TIMEOUT:Lcom/amazon/device/ads/AdError$ErrorCode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/amazon/device/ads/AdError$ErrorCode;->NO_FILL:Lcom/amazon/device/ads/AdError$ErrorCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/amazon/device/ads/AdError$ErrorCode;->INTERNAL_ERROR:Lcom/amazon/device/ads/AdError$ErrorCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/amazon/device/ads/AdError$ErrorCode;->REQUEST_ERROR:Lcom/amazon/device/ads/AdError$ErrorCode;

    aput-object v1, v0, v6

    sput-object v0, Lcom/amazon/device/ads/AdError$ErrorCode;->$VALUES:[Lcom/amazon/device/ads/AdError$ErrorCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/device/ads/AdError$ErrorCode;
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/amazon/device/ads/AdError$ErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/ads/AdError$ErrorCode;

    return-object v0
.end method

.method public static values()[Lcom/amazon/device/ads/AdError$ErrorCode;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/amazon/device/ads/AdError$ErrorCode;->$VALUES:[Lcom/amazon/device/ads/AdError$ErrorCode;

    invoke-virtual {v0}, [Lcom/amazon/device/ads/AdError$ErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/device/ads/AdError$ErrorCode;

    return-object v0
.end method
