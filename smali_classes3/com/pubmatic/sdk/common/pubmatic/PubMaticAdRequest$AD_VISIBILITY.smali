.class public final enum Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$AD_VISIBILITY;
.super Ljava/lang/Enum;
.source "PubMaticAdRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AD_VISIBILITY"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$AD_VISIBILITY;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$AD_VISIBILITY;

.field public static final enum ABOVE_FOLD:Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$AD_VISIBILITY;

.field public static final enum BELOW_FOLD:Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$AD_VISIBILITY;

.field public static final enum CAN_NOT_DETERMINE:Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$AD_VISIBILITY;

.field public static final enum PARTIAL:Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$AD_VISIBILITY;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 333
    new-instance v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$AD_VISIBILITY;

    const-string v1, "CAN_NOT_DETERMINE"

    invoke-direct {v0, v1, v2}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$AD_VISIBILITY;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$AD_VISIBILITY;->CAN_NOT_DETERMINE:Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$AD_VISIBILITY;

    new-instance v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$AD_VISIBILITY;

    const-string v1, "ABOVE_FOLD"

    invoke-direct {v0, v1, v3}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$AD_VISIBILITY;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$AD_VISIBILITY;->ABOVE_FOLD:Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$AD_VISIBILITY;

    new-instance v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$AD_VISIBILITY;

    const-string v1, "BELOW_FOLD"

    invoke-direct {v0, v1, v4}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$AD_VISIBILITY;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$AD_VISIBILITY;->BELOW_FOLD:Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$AD_VISIBILITY;

    new-instance v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$AD_VISIBILITY;

    const-string v1, "PARTIAL"

    invoke-direct {v0, v1, v5}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$AD_VISIBILITY;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$AD_VISIBILITY;->PARTIAL:Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$AD_VISIBILITY;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$AD_VISIBILITY;

    sget-object v1, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$AD_VISIBILITY;->CAN_NOT_DETERMINE:Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$AD_VISIBILITY;

    aput-object v1, v0, v2

    sget-object v1, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$AD_VISIBILITY;->ABOVE_FOLD:Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$AD_VISIBILITY;

    aput-object v1, v0, v3

    sget-object v1, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$AD_VISIBILITY;->BELOW_FOLD:Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$AD_VISIBILITY;

    aput-object v1, v0, v4

    sget-object v1, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$AD_VISIBILITY;->PARTIAL:Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$AD_VISIBILITY;

    aput-object v1, v0, v5

    sput-object v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$AD_VISIBILITY;->$VALUES:[Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$AD_VISIBILITY;

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
    .line 333
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$AD_VISIBILITY;
    .locals 1

    .prologue
    .line 333
    const-class v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$AD_VISIBILITY;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$AD_VISIBILITY;

    return-object v0
.end method

.method public static values()[Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$AD_VISIBILITY;
    .locals 1

    .prologue
    .line 333
    sget-object v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$AD_VISIBILITY;->$VALUES:[Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$AD_VISIBILITY;

    invoke-virtual {v0}, [Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$AD_VISIBILITY;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$AD_VISIBILITY;

    return-object v0
.end method
