.class public final enum Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$AD_TYPE;
.super Ljava/lang/Enum;
.source "PubMaticAdRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AD_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$AD_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$AD_TYPE;

.field public static final enum AUDIO:Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$AD_TYPE;

.field public static final enum IMAGE:Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$AD_TYPE;

.field public static final enum IMAGE_TEXT:Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$AD_TYPE;

.field public static final enum NATIVE:Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$AD_TYPE;

.field public static final enum RICHMEDIA:Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$AD_TYPE;

.field public static final enum TEXT:Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$AD_TYPE;

.field public static final enum VIDEO:Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$AD_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 323
    new-instance v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$AD_TYPE;

    const-string v1, "TEXT"

    invoke-direct {v0, v1, v3}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$AD_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$AD_TYPE;->TEXT:Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$AD_TYPE;

    new-instance v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$AD_TYPE;

    const-string v1, "IMAGE"

    invoke-direct {v0, v1, v4}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$AD_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$AD_TYPE;->IMAGE:Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$AD_TYPE;

    new-instance v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$AD_TYPE;

    const-string v1, "IMAGE_TEXT"

    invoke-direct {v0, v1, v5}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$AD_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$AD_TYPE;->IMAGE_TEXT:Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$AD_TYPE;

    new-instance v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$AD_TYPE;

    const-string v1, "RICHMEDIA"

    invoke-direct {v0, v1, v6}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$AD_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$AD_TYPE;->RICHMEDIA:Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$AD_TYPE;

    new-instance v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$AD_TYPE;

    const-string v1, "NATIVE"

    invoke-direct {v0, v1, v7}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$AD_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$AD_TYPE;->NATIVE:Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$AD_TYPE;

    new-instance v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$AD_TYPE;

    const-string v1, "VIDEO"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$AD_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$AD_TYPE;->VIDEO:Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$AD_TYPE;

    new-instance v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$AD_TYPE;

    const-string v1, "AUDIO"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$AD_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$AD_TYPE;->AUDIO:Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$AD_TYPE;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$AD_TYPE;

    sget-object v1, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$AD_TYPE;->TEXT:Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$AD_TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$AD_TYPE;->IMAGE:Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$AD_TYPE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$AD_TYPE;->IMAGE_TEXT:Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$AD_TYPE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$AD_TYPE;->RICHMEDIA:Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$AD_TYPE;

    aput-object v1, v0, v6

    sget-object v1, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$AD_TYPE;->NATIVE:Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$AD_TYPE;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$AD_TYPE;->VIDEO:Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$AD_TYPE;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$AD_TYPE;->AUDIO:Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$AD_TYPE;

    aput-object v2, v0, v1

    sput-object v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$AD_TYPE;->$VALUES:[Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$AD_TYPE;

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
    .line 323
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$AD_TYPE;
    .locals 1

    .prologue
    .line 323
    const-class v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$AD_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$AD_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$AD_TYPE;
    .locals 1

    .prologue
    .line 323
    sget-object v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$AD_TYPE;->$VALUES:[Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$AD_TYPE;

    invoke-virtual {v0}, [Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$AD_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pubmatic/sdk/common/pubmatic/PubMaticAdRequest$AD_TYPE;

    return-object v0
.end method
