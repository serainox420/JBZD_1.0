.class public final enum Lcom/pubmatic/sdk/common/CommonConstants$MediationNetwork;
.super Ljava/lang/Enum;
.source "CommonConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubmatic/sdk/common/CommonConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MediationNetwork"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/pubmatic/sdk/common/CommonConstants$MediationNetwork;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/pubmatic/sdk/common/CommonConstants$MediationNetwork;

.field public static final enum FACEBOOK_AUDIENCE_NETWORK:Lcom/pubmatic/sdk/common/CommonConstants$MediationNetwork;

.field public static final enum MOPUB:Lcom/pubmatic/sdk/common/CommonConstants$MediationNetwork;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 195
    new-instance v0, Lcom/pubmatic/sdk/common/CommonConstants$MediationNetwork;

    const-string v1, "FACEBOOK_AUDIENCE_NETWORK"

    invoke-direct {v0, v1, v2}, Lcom/pubmatic/sdk/common/CommonConstants$MediationNetwork;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pubmatic/sdk/common/CommonConstants$MediationNetwork;->FACEBOOK_AUDIENCE_NETWORK:Lcom/pubmatic/sdk/common/CommonConstants$MediationNetwork;

    new-instance v0, Lcom/pubmatic/sdk/common/CommonConstants$MediationNetwork;

    const-string v1, "MOPUB"

    invoke-direct {v0, v1, v3}, Lcom/pubmatic/sdk/common/CommonConstants$MediationNetwork;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pubmatic/sdk/common/CommonConstants$MediationNetwork;->MOPUB:Lcom/pubmatic/sdk/common/CommonConstants$MediationNetwork;

    .line 194
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/pubmatic/sdk/common/CommonConstants$MediationNetwork;

    sget-object v1, Lcom/pubmatic/sdk/common/CommonConstants$MediationNetwork;->FACEBOOK_AUDIENCE_NETWORK:Lcom/pubmatic/sdk/common/CommonConstants$MediationNetwork;

    aput-object v1, v0, v2

    sget-object v1, Lcom/pubmatic/sdk/common/CommonConstants$MediationNetwork;->MOPUB:Lcom/pubmatic/sdk/common/CommonConstants$MediationNetwork;

    aput-object v1, v0, v3

    sput-object v0, Lcom/pubmatic/sdk/common/CommonConstants$MediationNetwork;->$VALUES:[Lcom/pubmatic/sdk/common/CommonConstants$MediationNetwork;

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
    .line 194
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pubmatic/sdk/common/CommonConstants$MediationNetwork;
    .locals 1

    .prologue
    .line 194
    const-class v0, Lcom/pubmatic/sdk/common/CommonConstants$MediationNetwork;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pubmatic/sdk/common/CommonConstants$MediationNetwork;

    return-object v0
.end method

.method public static values()[Lcom/pubmatic/sdk/common/CommonConstants$MediationNetwork;
    .locals 1

    .prologue
    .line 194
    sget-object v0, Lcom/pubmatic/sdk/common/CommonConstants$MediationNetwork;->$VALUES:[Lcom/pubmatic/sdk/common/CommonConstants$MediationNetwork;

    invoke-virtual {v0}, [Lcom/pubmatic/sdk/common/CommonConstants$MediationNetwork;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pubmatic/sdk/common/CommonConstants$MediationNetwork;

    return-object v0
.end method
