.class public final enum Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest$FORMAT_KEY;
.super Ljava/lang/Enum;
.source "MoceanAdRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FORMAT_KEY"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest$FORMAT_KEY;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest$FORMAT_KEY;

.field public static final enum DAAST:Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest$FORMAT_KEY;

.field public static final enum GENERIC:Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest$FORMAT_KEY;

.field public static final enum HTML:Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest$FORMAT_KEY;

.field public static final enum JSON:Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest$FORMAT_KEY;

.field public static final enum JSONP:Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest$FORMAT_KEY;

.field public static final enum OFFLINE_XML:Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest$FORMAT_KEY;

.field public static final enum VAST:Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest$FORMAT_KEY;

.field public static final enum XML:Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest$FORMAT_KEY;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 198
    new-instance v0, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest$FORMAT_KEY;

    const-string v1, "HTML"

    invoke-direct {v0, v1, v3}, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest$FORMAT_KEY;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest$FORMAT_KEY;->HTML:Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest$FORMAT_KEY;

    new-instance v0, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest$FORMAT_KEY;

    const-string v1, "XML"

    invoke-direct {v0, v1, v4}, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest$FORMAT_KEY;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest$FORMAT_KEY;->XML:Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest$FORMAT_KEY;

    new-instance v0, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest$FORMAT_KEY;

    const-string v1, "JSON"

    invoke-direct {v0, v1, v5}, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest$FORMAT_KEY;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest$FORMAT_KEY;->JSON:Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest$FORMAT_KEY;

    new-instance v0, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest$FORMAT_KEY;

    const-string v1, "JSONP"

    invoke-direct {v0, v1, v6}, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest$FORMAT_KEY;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest$FORMAT_KEY;->JSONP:Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest$FORMAT_KEY;

    new-instance v0, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest$FORMAT_KEY;

    const-string v1, "GENERIC"

    invoke-direct {v0, v1, v7}, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest$FORMAT_KEY;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest$FORMAT_KEY;->GENERIC:Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest$FORMAT_KEY;

    new-instance v0, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest$FORMAT_KEY;

    const-string v1, "VAST"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest$FORMAT_KEY;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest$FORMAT_KEY;->VAST:Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest$FORMAT_KEY;

    new-instance v0, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest$FORMAT_KEY;

    const-string v1, "DAAST"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest$FORMAT_KEY;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest$FORMAT_KEY;->DAAST:Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest$FORMAT_KEY;

    new-instance v0, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest$FORMAT_KEY;

    const-string v1, "OFFLINE_XML"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest$FORMAT_KEY;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest$FORMAT_KEY;->OFFLINE_XML:Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest$FORMAT_KEY;

    .line 197
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest$FORMAT_KEY;

    sget-object v1, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest$FORMAT_KEY;->HTML:Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest$FORMAT_KEY;

    aput-object v1, v0, v3

    sget-object v1, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest$FORMAT_KEY;->XML:Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest$FORMAT_KEY;

    aput-object v1, v0, v4

    sget-object v1, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest$FORMAT_KEY;->JSON:Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest$FORMAT_KEY;

    aput-object v1, v0, v5

    sget-object v1, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest$FORMAT_KEY;->JSONP:Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest$FORMAT_KEY;

    aput-object v1, v0, v6

    sget-object v1, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest$FORMAT_KEY;->GENERIC:Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest$FORMAT_KEY;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest$FORMAT_KEY;->VAST:Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest$FORMAT_KEY;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest$FORMAT_KEY;->DAAST:Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest$FORMAT_KEY;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest$FORMAT_KEY;->OFFLINE_XML:Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest$FORMAT_KEY;

    aput-object v2, v0, v1

    sput-object v0, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest$FORMAT_KEY;->$VALUES:[Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest$FORMAT_KEY;

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
    .line 197
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest$FORMAT_KEY;
    .locals 1

    .prologue
    .line 197
    const-class v0, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest$FORMAT_KEY;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest$FORMAT_KEY;

    return-object v0
.end method

.method public static values()[Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest$FORMAT_KEY;
    .locals 1

    .prologue
    .line 197
    sget-object v0, Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest$FORMAT_KEY;->$VALUES:[Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest$FORMAT_KEY;

    invoke-virtual {v0}, [Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest$FORMAT_KEY;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pubmatic/sdk/common/mocean/MoceanAdRequest$FORMAT_KEY;

    return-object v0
.end method
