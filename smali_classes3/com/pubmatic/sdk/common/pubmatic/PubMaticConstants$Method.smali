.class public final enum Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$Method;
.super Ljava/lang/Enum;
.source "PubMaticConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Method"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$Method;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$Method;

.field public static final enum GET:Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$Method;

.field public static final enum POST:Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$Method;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 12
    new-instance v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$Method;

    const-string v1, "GET"

    invoke-direct {v0, v1, v2}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$Method;->GET:Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$Method;

    new-instance v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$Method;

    const-string v1, "POST"

    invoke-direct {v0, v1, v3}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$Method;->POST:Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$Method;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$Method;

    sget-object v1, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$Method;->GET:Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$Method;

    aput-object v1, v0, v2

    sget-object v1, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$Method;->POST:Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$Method;

    aput-object v1, v0, v3

    sput-object v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$Method;->$VALUES:[Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$Method;

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
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$Method;
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$Method;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$Method;

    return-object v0
.end method

.method public static values()[Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$Method;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$Method;->$VALUES:[Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$Method;

    invoke-virtual {v0}, [Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$Method;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$Method;

    return-object v0
.end method
