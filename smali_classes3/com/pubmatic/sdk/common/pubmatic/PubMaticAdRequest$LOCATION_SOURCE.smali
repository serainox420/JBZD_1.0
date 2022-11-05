.class public final enum Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$LOCATION_SOURCE;
.super Ljava/lang/Enum;
.source "PubMaticAdRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LOCATION_SOURCE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$LOCATION_SOURCE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$LOCATION_SOURCE;

.field public static final enum GPS_OR_SERVICES:Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$LOCATION_SOURCE;

.field public static final enum IP:Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$LOCATION_SOURCE;

.field public static final enum UCER_PROVIDED:Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$LOCATION_SOURCE;

.field public static final enum UNKOWN:Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$LOCATION_SOURCE;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 335
    new-instance v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$LOCATION_SOURCE;

    const-string v1, "UNKOWN"

    invoke-direct {v0, v1, v2}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$LOCATION_SOURCE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$LOCATION_SOURCE;->UNKOWN:Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$LOCATION_SOURCE;

    new-instance v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$LOCATION_SOURCE;

    const-string v1, "GPS_OR_SERVICES"

    invoke-direct {v0, v1, v3}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$LOCATION_SOURCE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$LOCATION_SOURCE;->GPS_OR_SERVICES:Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$LOCATION_SOURCE;

    new-instance v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$LOCATION_SOURCE;

    const-string v1, "IP"

    invoke-direct {v0, v1, v4}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$LOCATION_SOURCE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$LOCATION_SOURCE;->IP:Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$LOCATION_SOURCE;

    new-instance v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$LOCATION_SOURCE;

    const-string v1, "UCER_PROVIDED"

    invoke-direct {v0, v1, v5}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$LOCATION_SOURCE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$LOCATION_SOURCE;->UCER_PROVIDED:Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$LOCATION_SOURCE;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$LOCATION_SOURCE;

    sget-object v1, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$LOCATION_SOURCE;->UNKOWN:Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$LOCATION_SOURCE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$LOCATION_SOURCE;->GPS_OR_SERVICES:Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$LOCATION_SOURCE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$LOCATION_SOURCE;->IP:Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$LOCATION_SOURCE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$LOCATION_SOURCE;->UCER_PROVIDED:Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$LOCATION_SOURCE;

    aput-object v1, v0, v5

    sput-object v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$LOCATION_SOURCE;->$VALUES:[Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$LOCATION_SOURCE;

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
    .line 335
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$LOCATION_SOURCE;
    .locals 1

    .prologue
    .line 335
    const-class v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$LOCATION_SOURCE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$LOCATION_SOURCE;

    return-object v0
.end method

.method public static values()[Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$LOCATION_SOURCE;
    .locals 1

    .prologue
    .line 335
    sget-object v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$LOCATION_SOURCE;->$VALUES:[Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$LOCATION_SOURCE;

    invoke-virtual {v0}, [Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$LOCATION_SOURCE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$LOCATION_SOURCE;

    return-object v0
.end method
