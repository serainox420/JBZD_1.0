.class public final enum Lcom/unity3d/ads/device/DeviceError;
.super Ljava/lang/Enum;
.source "DeviceError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/unity3d/ads/device/DeviceError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/unity3d/ads/device/DeviceError;

.field public static final enum APPLICATION_CONTEXT_NULL:Lcom/unity3d/ads/device/DeviceError;

.field public static final enum AUDIOMANAGER_NULL:Lcom/unity3d/ads/device/DeviceError;

.field public static final enum COULDNT_GET_STORAGE_LOCATION:Lcom/unity3d/ads/device/DeviceError;

.field public static final enum INVALID_STORAGETYPE:Lcom/unity3d/ads/device/DeviceError;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/unity3d/ads/device/DeviceError;

    const-string v1, "APPLICATION_CONTEXT_NULL"

    invoke-direct {v0, v1, v2}, Lcom/unity3d/ads/device/DeviceError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/device/DeviceError;->APPLICATION_CONTEXT_NULL:Lcom/unity3d/ads/device/DeviceError;

    .line 5
    new-instance v0, Lcom/unity3d/ads/device/DeviceError;

    const-string v1, "AUDIOMANAGER_NULL"

    invoke-direct {v0, v1, v3}, Lcom/unity3d/ads/device/DeviceError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/device/DeviceError;->AUDIOMANAGER_NULL:Lcom/unity3d/ads/device/DeviceError;

    .line 6
    new-instance v0, Lcom/unity3d/ads/device/DeviceError;

    const-string v1, "INVALID_STORAGETYPE"

    invoke-direct {v0, v1, v4}, Lcom/unity3d/ads/device/DeviceError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/device/DeviceError;->INVALID_STORAGETYPE:Lcom/unity3d/ads/device/DeviceError;

    .line 7
    new-instance v0, Lcom/unity3d/ads/device/DeviceError;

    const-string v1, "COULDNT_GET_STORAGE_LOCATION"

    invoke-direct {v0, v1, v5}, Lcom/unity3d/ads/device/DeviceError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/device/DeviceError;->COULDNT_GET_STORAGE_LOCATION:Lcom/unity3d/ads/device/DeviceError;

    .line 3
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/unity3d/ads/device/DeviceError;

    sget-object v1, Lcom/unity3d/ads/device/DeviceError;->APPLICATION_CONTEXT_NULL:Lcom/unity3d/ads/device/DeviceError;

    aput-object v1, v0, v2

    sget-object v1, Lcom/unity3d/ads/device/DeviceError;->AUDIOMANAGER_NULL:Lcom/unity3d/ads/device/DeviceError;

    aput-object v1, v0, v3

    sget-object v1, Lcom/unity3d/ads/device/DeviceError;->INVALID_STORAGETYPE:Lcom/unity3d/ads/device/DeviceError;

    aput-object v1, v0, v4

    sget-object v1, Lcom/unity3d/ads/device/DeviceError;->COULDNT_GET_STORAGE_LOCATION:Lcom/unity3d/ads/device/DeviceError;

    aput-object v1, v0, v5

    sput-object v0, Lcom/unity3d/ads/device/DeviceError;->$VALUES:[Lcom/unity3d/ads/device/DeviceError;

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
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/unity3d/ads/device/DeviceError;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/unity3d/ads/device/DeviceError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/unity3d/ads/device/DeviceError;

    return-object v0
.end method

.method public static values()[Lcom/unity3d/ads/device/DeviceError;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/unity3d/ads/device/DeviceError;->$VALUES:[Lcom/unity3d/ads/device/DeviceError;

    invoke-virtual {v0}, [Lcom/unity3d/ads/device/DeviceError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unity3d/ads/device/DeviceError;

    return-object v0
.end method
