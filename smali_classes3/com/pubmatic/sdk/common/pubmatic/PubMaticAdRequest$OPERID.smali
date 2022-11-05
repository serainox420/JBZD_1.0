.class public final enum Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$OPERID;
.super Ljava/lang/Enum;
.source "PubMaticAdRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OPERID"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$OPERID;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$OPERID;

.field public static final enum HTML:Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$OPERID;

.field public static final enum JAVA_SCRIPT:Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$OPERID;

.field public static final enum JSON:Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$OPERID;

.field public static final enum JSON_MOBILE:Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$OPERID;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 327
    new-instance v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$OPERID;

    const-string v1, "HTML"

    invoke-direct {v0, v1, v2}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$OPERID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$OPERID;->HTML:Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$OPERID;

    new-instance v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$OPERID;

    const-string v1, "JAVA_SCRIPT"

    invoke-direct {v0, v1, v3}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$OPERID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$OPERID;->JAVA_SCRIPT:Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$OPERID;

    new-instance v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$OPERID;

    const-string v1, "JSON"

    invoke-direct {v0, v1, v4}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$OPERID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$OPERID;->JSON:Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$OPERID;

    new-instance v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$OPERID;

    const-string v1, "JSON_MOBILE"

    invoke-direct {v0, v1, v5}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$OPERID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$OPERID;->JSON_MOBILE:Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$OPERID;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$OPERID;

    sget-object v1, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$OPERID;->HTML:Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$OPERID;

    aput-object v1, v0, v2

    sget-object v1, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$OPERID;->JAVA_SCRIPT:Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$OPERID;

    aput-object v1, v0, v3

    sget-object v1, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$OPERID;->JSON:Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$OPERID;

    aput-object v1, v0, v4

    sget-object v1, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$OPERID;->JSON_MOBILE:Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$OPERID;

    aput-object v1, v0, v5

    sput-object v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$OPERID;->$VALUES:[Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$OPERID;

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
    .line 327
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$OPERID;
    .locals 1

    .prologue
    .line 327
    const-class v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$OPERID;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$OPERID;

    return-object v0
.end method

.method public static values()[Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$OPERID;
    .locals 1

    .prologue
    .line 327
    sget-object v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$OPERID;->$VALUES:[Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$OPERID;

    invoke-virtual {v0}, [Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$OPERID;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$OPERID;

    return-object v0
.end method
