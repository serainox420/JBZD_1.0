.class final enum Lcom/amazon/device/ads/AdSize$Scaling;
.super Ljava/lang/Enum;
.source "AdSize.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/AdSize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Scaling"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/amazon/device/ads/AdSize$Scaling;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/device/ads/AdSize$Scaling;

.field public static final enum CAN_UPSCALE:Lcom/amazon/device/ads/AdSize$Scaling;

.field public static final enum NO_UPSCALE:Lcom/amazon/device/ads/AdSize$Scaling;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 79
    new-instance v0, Lcom/amazon/device/ads/AdSize$Scaling;

    const-string v1, "CAN_UPSCALE"

    invoke-direct {v0, v1, v2}, Lcom/amazon/device/ads/AdSize$Scaling;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/device/ads/AdSize$Scaling;->CAN_UPSCALE:Lcom/amazon/device/ads/AdSize$Scaling;

    .line 84
    new-instance v0, Lcom/amazon/device/ads/AdSize$Scaling;

    const-string v1, "NO_UPSCALE"

    invoke-direct {v0, v1, v3}, Lcom/amazon/device/ads/AdSize$Scaling;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/device/ads/AdSize$Scaling;->NO_UPSCALE:Lcom/amazon/device/ads/AdSize$Scaling;

    .line 74
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/amazon/device/ads/AdSize$Scaling;

    sget-object v1, Lcom/amazon/device/ads/AdSize$Scaling;->CAN_UPSCALE:Lcom/amazon/device/ads/AdSize$Scaling;

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/device/ads/AdSize$Scaling;->NO_UPSCALE:Lcom/amazon/device/ads/AdSize$Scaling;

    aput-object v1, v0, v3

    sput-object v0, Lcom/amazon/device/ads/AdSize$Scaling;->$VALUES:[Lcom/amazon/device/ads/AdSize$Scaling;

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
    .line 74
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/device/ads/AdSize$Scaling;
    .locals 1

    .prologue
    .line 74
    const-class v0, Lcom/amazon/device/ads/AdSize$Scaling;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/ads/AdSize$Scaling;

    return-object v0
.end method

.method public static values()[Lcom/amazon/device/ads/AdSize$Scaling;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/amazon/device/ads/AdSize$Scaling;->$VALUES:[Lcom/amazon/device/ads/AdSize$Scaling;

    invoke-virtual {v0}, [Lcom/amazon/device/ads/AdSize$Scaling;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/device/ads/AdSize$Scaling;

    return-object v0
.end method
