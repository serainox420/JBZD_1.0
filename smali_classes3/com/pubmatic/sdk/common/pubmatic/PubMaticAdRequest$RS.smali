.class public final enum Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$RS;
.super Ljava/lang/Enum;
.source "PubMaticAdRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RS"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$RS;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$RS;

.field public static final enum JSON_CALLBACK:Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$RS;

.field public static final enum JS_VAR:Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$RS;

.field public static final enum PURE_JSON:Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$RS;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 329
    new-instance v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$RS;

    const-string v1, "PURE_JSON"

    invoke-direct {v0, v1, v2}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$RS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$RS;->PURE_JSON:Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$RS;

    new-instance v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$RS;

    const-string v1, "JSON_CALLBACK"

    invoke-direct {v0, v1, v3}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$RS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$RS;->JSON_CALLBACK:Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$RS;

    new-instance v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$RS;

    const-string v1, "JS_VAR"

    invoke-direct {v0, v1, v4}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$RS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$RS;->JS_VAR:Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$RS;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$RS;

    sget-object v1, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$RS;->PURE_JSON:Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$RS;

    aput-object v1, v0, v2

    sget-object v1, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$RS;->JSON_CALLBACK:Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$RS;

    aput-object v1, v0, v3

    sget-object v1, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$RS;->JS_VAR:Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$RS;

    aput-object v1, v0, v4

    sput-object v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$RS;->$VALUES:[Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$RS;

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
    .line 329
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$RS;
    .locals 1

    .prologue
    .line 329
    const-class v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$RS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$RS;

    return-object v0
.end method

.method public static values()[Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$RS;
    .locals 1

    .prologue
    .line 329
    sget-object v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$RS;->$VALUES:[Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$RS;

    invoke-virtual {v0}, [Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$RS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$RS;

    return-object v0
.end method
