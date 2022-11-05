.class public final enum Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$CONTENT_TYPE;
.super Ljava/lang/Enum;
.source "PubMaticConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CONTENT_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$CONTENT_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$CONTENT_TYPE;

.field public static final enum INVALID:Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$CONTENT_TYPE;

.field public static final enum JSON:Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$CONTENT_TYPE;

.field public static final enum URL_ENCODED:Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$CONTENT_TYPE;

.field public static final enum XML:Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$CONTENT_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 6
    new-instance v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$CONTENT_TYPE;

    const-string v1, "JSON"

    invoke-direct {v0, v1, v2}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$CONTENT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$CONTENT_TYPE;->JSON:Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$CONTENT_TYPE;

    .line 7
    new-instance v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$CONTENT_TYPE;

    const-string v1, "XML"

    invoke-direct {v0, v1, v3}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$CONTENT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$CONTENT_TYPE;->XML:Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$CONTENT_TYPE;

    .line 8
    new-instance v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$CONTENT_TYPE;

    const-string v1, "URL_ENCODED"

    invoke-direct {v0, v1, v4}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$CONTENT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$CONTENT_TYPE;->URL_ENCODED:Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$CONTENT_TYPE;

    .line 9
    new-instance v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$CONTENT_TYPE;

    const-string v1, "INVALID"

    invoke-direct {v0, v1, v5}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$CONTENT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$CONTENT_TYPE;->INVALID:Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$CONTENT_TYPE;

    .line 5
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$CONTENT_TYPE;

    sget-object v1, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$CONTENT_TYPE;->JSON:Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$CONTENT_TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$CONTENT_TYPE;->XML:Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$CONTENT_TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$CONTENT_TYPE;->URL_ENCODED:Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$CONTENT_TYPE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$CONTENT_TYPE;->INVALID:Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$CONTENT_TYPE;

    aput-object v1, v0, v5

    sput-object v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$CONTENT_TYPE;->$VALUES:[Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$CONTENT_TYPE;

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
    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$CONTENT_TYPE;
    .locals 1

    .prologue
    .line 5
    const-class v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$CONTENT_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$CONTENT_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$CONTENT_TYPE;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$CONTENT_TYPE;->$VALUES:[Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$CONTENT_TYPE;

    invoke-virtual {v0}, [Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$CONTENT_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$CONTENT_TYPE;

    return-object v0
.end method
