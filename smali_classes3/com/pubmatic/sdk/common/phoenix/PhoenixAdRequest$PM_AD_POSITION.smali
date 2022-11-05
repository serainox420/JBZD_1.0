.class public final enum Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$PM_AD_POSITION;
.super Ljava/lang/Enum;
.source "PhoenixAdRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PM_AD_POSITION"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$PM_AD_POSITION;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$PM_AD_POSITION;

.field public static final enum ABOVE_FOLD:Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$PM_AD_POSITION;

.field public static final enum BELOW_FOLD:Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$PM_AD_POSITION;

.field public static final enum PARTIALLY_ABOVE_FOLD:Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$PM_AD_POSITION;

.field public static final enum UNKNOWN:Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$PM_AD_POSITION;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 69
    new-instance v0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$PM_AD_POSITION;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$PM_AD_POSITION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$PM_AD_POSITION;->UNKNOWN:Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$PM_AD_POSITION;

    new-instance v0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$PM_AD_POSITION;

    const-string v1, "ABOVE_FOLD"

    invoke-direct {v0, v1, v3}, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$PM_AD_POSITION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$PM_AD_POSITION;->ABOVE_FOLD:Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$PM_AD_POSITION;

    new-instance v0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$PM_AD_POSITION;

    const-string v1, "BELOW_FOLD"

    invoke-direct {v0, v1, v4}, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$PM_AD_POSITION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$PM_AD_POSITION;->BELOW_FOLD:Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$PM_AD_POSITION;

    new-instance v0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$PM_AD_POSITION;

    const-string v1, "PARTIALLY_ABOVE_FOLD"

    invoke-direct {v0, v1, v5}, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$PM_AD_POSITION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$PM_AD_POSITION;->PARTIALLY_ABOVE_FOLD:Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$PM_AD_POSITION;

    .line 68
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$PM_AD_POSITION;

    sget-object v1, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$PM_AD_POSITION;->UNKNOWN:Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$PM_AD_POSITION;

    aput-object v1, v0, v2

    sget-object v1, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$PM_AD_POSITION;->ABOVE_FOLD:Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$PM_AD_POSITION;

    aput-object v1, v0, v3

    sget-object v1, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$PM_AD_POSITION;->BELOW_FOLD:Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$PM_AD_POSITION;

    aput-object v1, v0, v4

    sget-object v1, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$PM_AD_POSITION;->PARTIALLY_ABOVE_FOLD:Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$PM_AD_POSITION;

    aput-object v1, v0, v5

    sput-object v0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$PM_AD_POSITION;->$VALUES:[Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$PM_AD_POSITION;

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
    .line 68
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$PM_AD_POSITION;
    .locals 1

    .prologue
    .line 68
    const-class v0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$PM_AD_POSITION;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$PM_AD_POSITION;

    return-object v0
.end method

.method public static values()[Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$PM_AD_POSITION;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$PM_AD_POSITION;->$VALUES:[Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$PM_AD_POSITION;

    invoke-virtual {v0}, [Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$PM_AD_POSITION;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$PM_AD_POSITION;

    return-object v0
.end method
