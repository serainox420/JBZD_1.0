.class public final enum Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$ETHNICITY;
.super Ljava/lang/Enum;
.source "PubMaticAdRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ETHNICITY"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$ETHNICITY;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$ETHNICITY;

.field public static final enum AFRICAN_AMERICAN:Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$ETHNICITY;

.field public static final enum ASIAN_AMERICAN:Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$ETHNICITY;

.field public static final enum CAUCASIAN:Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$ETHNICITY;

.field public static final enum HISPANIC:Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$ETHNICITY;

.field public static final enum OTHER:Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$ETHNICITY;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 337
    new-instance v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$ETHNICITY;

    const-string v1, "HISPANIC"

    invoke-direct {v0, v1, v2}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$ETHNICITY;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$ETHNICITY;->HISPANIC:Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$ETHNICITY;

    new-instance v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$ETHNICITY;

    const-string v1, "AFRICAN_AMERICAN"

    invoke-direct {v0, v1, v3}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$ETHNICITY;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$ETHNICITY;->AFRICAN_AMERICAN:Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$ETHNICITY;

    new-instance v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$ETHNICITY;

    const-string v1, "CAUCASIAN"

    invoke-direct {v0, v1, v4}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$ETHNICITY;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$ETHNICITY;->CAUCASIAN:Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$ETHNICITY;

    new-instance v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$ETHNICITY;

    const-string v1, "ASIAN_AMERICAN"

    invoke-direct {v0, v1, v5}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$ETHNICITY;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$ETHNICITY;->ASIAN_AMERICAN:Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$ETHNICITY;

    new-instance v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$ETHNICITY;

    const-string v1, "OTHER"

    invoke-direct {v0, v1, v6}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$ETHNICITY;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$ETHNICITY;->OTHER:Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$ETHNICITY;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$ETHNICITY;

    sget-object v1, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$ETHNICITY;->HISPANIC:Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$ETHNICITY;

    aput-object v1, v0, v2

    sget-object v1, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$ETHNICITY;->AFRICAN_AMERICAN:Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$ETHNICITY;

    aput-object v1, v0, v3

    sget-object v1, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$ETHNICITY;->CAUCASIAN:Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$ETHNICITY;

    aput-object v1, v0, v4

    sget-object v1, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$ETHNICITY;->ASIAN_AMERICAN:Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$ETHNICITY;

    aput-object v1, v0, v5

    sget-object v1, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$ETHNICITY;->OTHER:Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$ETHNICITY;

    aput-object v1, v0, v6

    sput-object v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$ETHNICITY;->$VALUES:[Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$ETHNICITY;

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
    .line 337
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$ETHNICITY;
    .locals 1

    .prologue
    .line 337
    const-class v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$ETHNICITY;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$ETHNICITY;

    return-object v0
.end method

.method public static values()[Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$ETHNICITY;
    .locals 1

    .prologue
    .line 337
    sget-object v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$ETHNICITY;->$VALUES:[Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$ETHNICITY;

    invoke-virtual {v0}, [Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$ETHNICITY;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$ETHNICITY;

    return-object v0
.end method
