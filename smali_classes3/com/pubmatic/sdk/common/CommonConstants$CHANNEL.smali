.class public final enum Lcom/pubmatic/sdk/common/CommonConstants$CHANNEL;
.super Ljava/lang/Enum;
.source "CommonConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubmatic/sdk/common/CommonConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CHANNEL"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/pubmatic/sdk/common/CommonConstants$CHANNEL;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/pubmatic/sdk/common/CommonConstants$CHANNEL;

.field public static final enum MOCEAN:Lcom/pubmatic/sdk/common/CommonConstants$CHANNEL;

.field public static final enum NA:Lcom/pubmatic/sdk/common/CommonConstants$CHANNEL;

.field public static final enum PHOENIX:Lcom/pubmatic/sdk/common/CommonConstants$CHANNEL;

.field public static final enum PUBMATIC:Lcom/pubmatic/sdk/common/CommonConstants$CHANNEL;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 36
    new-instance v0, Lcom/pubmatic/sdk/common/CommonConstants$CHANNEL;

    const-string v1, "NA"

    invoke-direct {v0, v1, v2}, Lcom/pubmatic/sdk/common/CommonConstants$CHANNEL;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pubmatic/sdk/common/CommonConstants$CHANNEL;->NA:Lcom/pubmatic/sdk/common/CommonConstants$CHANNEL;

    new-instance v0, Lcom/pubmatic/sdk/common/CommonConstants$CHANNEL;

    const-string v1, "MOCEAN"

    invoke-direct {v0, v1, v3}, Lcom/pubmatic/sdk/common/CommonConstants$CHANNEL;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pubmatic/sdk/common/CommonConstants$CHANNEL;->MOCEAN:Lcom/pubmatic/sdk/common/CommonConstants$CHANNEL;

    new-instance v0, Lcom/pubmatic/sdk/common/CommonConstants$CHANNEL;

    const-string v1, "PUBMATIC"

    invoke-direct {v0, v1, v4}, Lcom/pubmatic/sdk/common/CommonConstants$CHANNEL;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pubmatic/sdk/common/CommonConstants$CHANNEL;->PUBMATIC:Lcom/pubmatic/sdk/common/CommonConstants$CHANNEL;

    new-instance v0, Lcom/pubmatic/sdk/common/CommonConstants$CHANNEL;

    const-string v1, "PHOENIX"

    invoke-direct {v0, v1, v5}, Lcom/pubmatic/sdk/common/CommonConstants$CHANNEL;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pubmatic/sdk/common/CommonConstants$CHANNEL;->PHOENIX:Lcom/pubmatic/sdk/common/CommonConstants$CHANNEL;

    .line 35
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/pubmatic/sdk/common/CommonConstants$CHANNEL;

    sget-object v1, Lcom/pubmatic/sdk/common/CommonConstants$CHANNEL;->NA:Lcom/pubmatic/sdk/common/CommonConstants$CHANNEL;

    aput-object v1, v0, v2

    sget-object v1, Lcom/pubmatic/sdk/common/CommonConstants$CHANNEL;->MOCEAN:Lcom/pubmatic/sdk/common/CommonConstants$CHANNEL;

    aput-object v1, v0, v3

    sget-object v1, Lcom/pubmatic/sdk/common/CommonConstants$CHANNEL;->PUBMATIC:Lcom/pubmatic/sdk/common/CommonConstants$CHANNEL;

    aput-object v1, v0, v4

    sget-object v1, Lcom/pubmatic/sdk/common/CommonConstants$CHANNEL;->PHOENIX:Lcom/pubmatic/sdk/common/CommonConstants$CHANNEL;

    aput-object v1, v0, v5

    sput-object v0, Lcom/pubmatic/sdk/common/CommonConstants$CHANNEL;->$VALUES:[Lcom/pubmatic/sdk/common/CommonConstants$CHANNEL;

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
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pubmatic/sdk/common/CommonConstants$CHANNEL;
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/pubmatic/sdk/common/CommonConstants$CHANNEL;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pubmatic/sdk/common/CommonConstants$CHANNEL;

    return-object v0
.end method

.method public static values()[Lcom/pubmatic/sdk/common/CommonConstants$CHANNEL;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/pubmatic/sdk/common/CommonConstants$CHANNEL;->$VALUES:[Lcom/pubmatic/sdk/common/CommonConstants$CHANNEL;

    invoke-virtual {v0}, [Lcom/pubmatic/sdk/common/CommonConstants$CHANNEL;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pubmatic/sdk/common/CommonConstants$CHANNEL;

    return-object v0
.end method
