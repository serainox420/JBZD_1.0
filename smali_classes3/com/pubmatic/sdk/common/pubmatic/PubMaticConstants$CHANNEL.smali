.class public final enum Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$CHANNEL;
.super Ljava/lang/Enum;
.source "PubMaticConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CHANNEL"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$CHANNEL;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$CHANNEL;

.field public static final enum MOCEAN:Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$CHANNEL;

.field public static final enum NA:Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$CHANNEL;

.field public static final enum PHOENIX:Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$CHANNEL;

.field public static final enum PUBMATIC:Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$CHANNEL;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 46
    new-instance v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$CHANNEL;

    const-string v1, "NA"

    invoke-direct {v0, v1, v2}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$CHANNEL;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$CHANNEL;->NA:Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$CHANNEL;

    .line 47
    new-instance v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$CHANNEL;

    const-string v1, "PUBMATIC"

    invoke-direct {v0, v1, v3}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$CHANNEL;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$CHANNEL;->PUBMATIC:Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$CHANNEL;

    .line 48
    new-instance v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$CHANNEL;

    const-string v1, "MOCEAN"

    invoke-direct {v0, v1, v4}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$CHANNEL;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$CHANNEL;->MOCEAN:Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$CHANNEL;

    .line 49
    new-instance v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$CHANNEL;

    const-string v1, "PHOENIX"

    invoke-direct {v0, v1, v5}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$CHANNEL;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$CHANNEL;->PHOENIX:Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$CHANNEL;

    .line 45
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$CHANNEL;

    sget-object v1, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$CHANNEL;->NA:Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$CHANNEL;

    aput-object v1, v0, v2

    sget-object v1, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$CHANNEL;->PUBMATIC:Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$CHANNEL;

    aput-object v1, v0, v3

    sget-object v1, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$CHANNEL;->MOCEAN:Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$CHANNEL;

    aput-object v1, v0, v4

    sget-object v1, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$CHANNEL;->PHOENIX:Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$CHANNEL;

    aput-object v1, v0, v5

    sput-object v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$CHANNEL;->$VALUES:[Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$CHANNEL;

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
    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$CHANNEL;
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$CHANNEL;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$CHANNEL;

    return-object v0
.end method

.method public static values()[Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$CHANNEL;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$CHANNEL;->$VALUES:[Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$CHANNEL;

    invoke-virtual {v0}, [Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$CHANNEL;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$CHANNEL;

    return-object v0
.end method
