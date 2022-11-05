.class public final enum Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$OVER18;
.super Ljava/lang/Enum;
.source "PubMaticAdRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OVER18"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$OVER18;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$OVER18;

.field public static final enum ALLOW_ALL:Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$OVER18;

.field public static final enum DEFAULT_DENY:Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$OVER18;

.field public static final enum DENY:Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$OVER18;

.field public static final enum ONLY_OVER18:Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$OVER18;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 325
    new-instance v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$OVER18;

    const-string v1, "DEFAULT_DENY"

    invoke-direct {v0, v1, v2}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$OVER18;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$OVER18;->DEFAULT_DENY:Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$OVER18;

    new-instance v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$OVER18;

    const-string v1, "DENY"

    invoke-direct {v0, v1, v3}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$OVER18;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$OVER18;->DENY:Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$OVER18;

    new-instance v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$OVER18;

    const-string v1, "ONLY_OVER18"

    invoke-direct {v0, v1, v4}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$OVER18;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$OVER18;->ONLY_OVER18:Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$OVER18;

    new-instance v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$OVER18;

    const-string v1, "ALLOW_ALL"

    invoke-direct {v0, v1, v5}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$OVER18;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$OVER18;->ALLOW_ALL:Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$OVER18;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$OVER18;

    sget-object v1, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$OVER18;->DEFAULT_DENY:Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$OVER18;

    aput-object v1, v0, v2

    sget-object v1, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$OVER18;->DENY:Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$OVER18;

    aput-object v1, v0, v3

    sget-object v1, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$OVER18;->ONLY_OVER18:Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$OVER18;

    aput-object v1, v0, v4

    sget-object v1, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$OVER18;->ALLOW_ALL:Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$OVER18;

    aput-object v1, v0, v5

    sput-object v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$OVER18;->$VALUES:[Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$OVER18;

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
    .line 325
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$OVER18;
    .locals 1

    .prologue
    .line 325
    const-class v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$OVER18;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$OVER18;

    return-object v0
.end method

.method public static values()[Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$OVER18;
    .locals 1

    .prologue
    .line 325
    sget-object v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$OVER18;->$VALUES:[Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$OVER18;

    invoke-virtual {v0}, [Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$OVER18;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$OVER18;

    return-object v0
.end method
