.class final enum Lcom/amazon/device/ads/RelativePosition;
.super Ljava/lang/Enum;
.source "RelativePosition.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/amazon/device/ads/RelativePosition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/device/ads/RelativePosition;

.field public static final enum BOTTOM_CENTER:Lcom/amazon/device/ads/RelativePosition;

.field public static final enum BOTTOM_LEFT:Lcom/amazon/device/ads/RelativePosition;

.field public static final enum BOTTOM_RIGHT:Lcom/amazon/device/ads/RelativePosition;

.field public static final enum CENTER:Lcom/amazon/device/ads/RelativePosition;

.field private static final POSITIONS:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/amazon/device/ads/RelativePosition;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum TOP_CENTER:Lcom/amazon/device/ads/RelativePosition;

.field public static final enum TOP_LEFT:Lcom/amazon/device/ads/RelativePosition;

.field public static final enum TOP_RIGHT:Lcom/amazon/device/ads/RelativePosition;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 12
    new-instance v0, Lcom/amazon/device/ads/RelativePosition;

    const-string v1, "TOP_LEFT"

    invoke-direct {v0, v1, v3}, Lcom/amazon/device/ads/RelativePosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/device/ads/RelativePosition;->TOP_LEFT:Lcom/amazon/device/ads/RelativePosition;

    .line 13
    new-instance v0, Lcom/amazon/device/ads/RelativePosition;

    const-string v1, "TOP_RIGHT"

    invoke-direct {v0, v1, v4}, Lcom/amazon/device/ads/RelativePosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/device/ads/RelativePosition;->TOP_RIGHT:Lcom/amazon/device/ads/RelativePosition;

    .line 14
    new-instance v0, Lcom/amazon/device/ads/RelativePosition;

    const-string v1, "CENTER"

    invoke-direct {v0, v1, v5}, Lcom/amazon/device/ads/RelativePosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/device/ads/RelativePosition;->CENTER:Lcom/amazon/device/ads/RelativePosition;

    .line 15
    new-instance v0, Lcom/amazon/device/ads/RelativePosition;

    const-string v1, "BOTTOM_LEFT"

    invoke-direct {v0, v1, v6}, Lcom/amazon/device/ads/RelativePosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/device/ads/RelativePosition;->BOTTOM_LEFT:Lcom/amazon/device/ads/RelativePosition;

    .line 16
    new-instance v0, Lcom/amazon/device/ads/RelativePosition;

    const-string v1, "BOTTOM_RIGHT"

    invoke-direct {v0, v1, v7}, Lcom/amazon/device/ads/RelativePosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/device/ads/RelativePosition;->BOTTOM_RIGHT:Lcom/amazon/device/ads/RelativePosition;

    .line 17
    new-instance v0, Lcom/amazon/device/ads/RelativePosition;

    const-string v1, "TOP_CENTER"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/amazon/device/ads/RelativePosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/device/ads/RelativePosition;->TOP_CENTER:Lcom/amazon/device/ads/RelativePosition;

    .line 18
    new-instance v0, Lcom/amazon/device/ads/RelativePosition;

    const-string v1, "BOTTOM_CENTER"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/amazon/device/ads/RelativePosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/device/ads/RelativePosition;->BOTTOM_CENTER:Lcom/amazon/device/ads/RelativePosition;

    .line 10
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/amazon/device/ads/RelativePosition;

    sget-object v1, Lcom/amazon/device/ads/RelativePosition;->TOP_LEFT:Lcom/amazon/device/ads/RelativePosition;

    aput-object v1, v0, v3

    sget-object v1, Lcom/amazon/device/ads/RelativePosition;->TOP_RIGHT:Lcom/amazon/device/ads/RelativePosition;

    aput-object v1, v0, v4

    sget-object v1, Lcom/amazon/device/ads/RelativePosition;->CENTER:Lcom/amazon/device/ads/RelativePosition;

    aput-object v1, v0, v5

    sget-object v1, Lcom/amazon/device/ads/RelativePosition;->BOTTOM_LEFT:Lcom/amazon/device/ads/RelativePosition;

    aput-object v1, v0, v6

    sget-object v1, Lcom/amazon/device/ads/RelativePosition;->BOTTOM_RIGHT:Lcom/amazon/device/ads/RelativePosition;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/amazon/device/ads/RelativePosition;->TOP_CENTER:Lcom/amazon/device/ads/RelativePosition;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/amazon/device/ads/RelativePosition;->BOTTOM_CENTER:Lcom/amazon/device/ads/RelativePosition;

    aput-object v2, v0, v1

    sput-object v0, Lcom/amazon/device/ads/RelativePosition;->$VALUES:[Lcom/amazon/device/ads/RelativePosition;

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/amazon/device/ads/RelativePosition;->POSITIONS:Ljava/util/HashMap;

    .line 23
    sget-object v0, Lcom/amazon/device/ads/RelativePosition;->POSITIONS:Ljava/util/HashMap;

    const-string v1, "top-left"

    sget-object v2, Lcom/amazon/device/ads/RelativePosition;->TOP_LEFT:Lcom/amazon/device/ads/RelativePosition;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v0, Lcom/amazon/device/ads/RelativePosition;->POSITIONS:Ljava/util/HashMap;

    const-string v1, "top-right"

    sget-object v2, Lcom/amazon/device/ads/RelativePosition;->TOP_RIGHT:Lcom/amazon/device/ads/RelativePosition;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v0, Lcom/amazon/device/ads/RelativePosition;->POSITIONS:Ljava/util/HashMap;

    const-string v1, "top-center"

    sget-object v2, Lcom/amazon/device/ads/RelativePosition;->TOP_CENTER:Lcom/amazon/device/ads/RelativePosition;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v0, Lcom/amazon/device/ads/RelativePosition;->POSITIONS:Ljava/util/HashMap;

    const-string v1, "bottom-left"

    sget-object v2, Lcom/amazon/device/ads/RelativePosition;->BOTTOM_LEFT:Lcom/amazon/device/ads/RelativePosition;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v0, Lcom/amazon/device/ads/RelativePosition;->POSITIONS:Ljava/util/HashMap;

    const-string v1, "bottom-right"

    sget-object v2, Lcom/amazon/device/ads/RelativePosition;->BOTTOM_RIGHT:Lcom/amazon/device/ads/RelativePosition;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v0, Lcom/amazon/device/ads/RelativePosition;->POSITIONS:Ljava/util/HashMap;

    const-string v1, "bottom-center"

    sget-object v2, Lcom/amazon/device/ads/RelativePosition;->BOTTOM_CENTER:Lcom/amazon/device/ads/RelativePosition;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lcom/amazon/device/ads/RelativePosition;->POSITIONS:Ljava/util/HashMap;

    const-string v1, "center"

    sget-object v2, Lcom/amazon/device/ads/RelativePosition;->CENTER:Lcom/amazon/device/ads/RelativePosition;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
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
    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/amazon/device/ads/RelativePosition;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/amazon/device/ads/RelativePosition;->POSITIONS:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/ads/RelativePosition;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/device/ads/RelativePosition;
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcom/amazon/device/ads/RelativePosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/ads/RelativePosition;

    return-object v0
.end method

.method public static values()[Lcom/amazon/device/ads/RelativePosition;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/amazon/device/ads/RelativePosition;->$VALUES:[Lcom/amazon/device/ads/RelativePosition;

    invoke-virtual {v0}, [Lcom/amazon/device/ads/RelativePosition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/device/ads/RelativePosition;

    return-object v0
.end method
