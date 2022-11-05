.class public final enum Lcom/pubmatic/sdk/banner/mraid/Consts$Feature;
.super Ljava/lang/Enum;
.source "Consts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubmatic/sdk/banner/mraid/Consts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Feature"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/pubmatic/sdk/banner/mraid/Consts$Feature;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/pubmatic/sdk/banner/mraid/Consts$Feature;

.field public static final enum Calendar:Lcom/pubmatic/sdk/banner/mraid/Consts$Feature;

.field public static final enum InlineVideo:Lcom/pubmatic/sdk/banner/mraid/Consts$Feature;

.field public static final enum SMS:Lcom/pubmatic/sdk/banner/mraid/Consts$Feature;

.field public static final enum StorePicture:Lcom/pubmatic/sdk/banner/mraid/Consts$Feature;

.field public static final enum Tel:Lcom/pubmatic/sdk/banner/mraid/Consts$Feature;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 39
    new-instance v0, Lcom/pubmatic/sdk/banner/mraid/Consts$Feature;

    const-string v1, "SMS"

    invoke-direct {v0, v1, v2}, Lcom/pubmatic/sdk/banner/mraid/Consts$Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pubmatic/sdk/banner/mraid/Consts$Feature;->SMS:Lcom/pubmatic/sdk/banner/mraid/Consts$Feature;

    .line 40
    new-instance v0, Lcom/pubmatic/sdk/banner/mraid/Consts$Feature;

    const-string v1, "Tel"

    invoke-direct {v0, v1, v3}, Lcom/pubmatic/sdk/banner/mraid/Consts$Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pubmatic/sdk/banner/mraid/Consts$Feature;->Tel:Lcom/pubmatic/sdk/banner/mraid/Consts$Feature;

    .line 41
    new-instance v0, Lcom/pubmatic/sdk/banner/mraid/Consts$Feature;

    const-string v1, "Calendar"

    invoke-direct {v0, v1, v4}, Lcom/pubmatic/sdk/banner/mraid/Consts$Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pubmatic/sdk/banner/mraid/Consts$Feature;->Calendar:Lcom/pubmatic/sdk/banner/mraid/Consts$Feature;

    .line 42
    new-instance v0, Lcom/pubmatic/sdk/banner/mraid/Consts$Feature;

    const-string v1, "StorePicture"

    invoke-direct {v0, v1, v5}, Lcom/pubmatic/sdk/banner/mraid/Consts$Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pubmatic/sdk/banner/mraid/Consts$Feature;->StorePicture:Lcom/pubmatic/sdk/banner/mraid/Consts$Feature;

    .line 43
    new-instance v0, Lcom/pubmatic/sdk/banner/mraid/Consts$Feature;

    const-string v1, "InlineVideo"

    invoke-direct {v0, v1, v6}, Lcom/pubmatic/sdk/banner/mraid/Consts$Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pubmatic/sdk/banner/mraid/Consts$Feature;->InlineVideo:Lcom/pubmatic/sdk/banner/mraid/Consts$Feature;

    .line 37
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/pubmatic/sdk/banner/mraid/Consts$Feature;

    sget-object v1, Lcom/pubmatic/sdk/banner/mraid/Consts$Feature;->SMS:Lcom/pubmatic/sdk/banner/mraid/Consts$Feature;

    aput-object v1, v0, v2

    sget-object v1, Lcom/pubmatic/sdk/banner/mraid/Consts$Feature;->Tel:Lcom/pubmatic/sdk/banner/mraid/Consts$Feature;

    aput-object v1, v0, v3

    sget-object v1, Lcom/pubmatic/sdk/banner/mraid/Consts$Feature;->Calendar:Lcom/pubmatic/sdk/banner/mraid/Consts$Feature;

    aput-object v1, v0, v4

    sget-object v1, Lcom/pubmatic/sdk/banner/mraid/Consts$Feature;->StorePicture:Lcom/pubmatic/sdk/banner/mraid/Consts$Feature;

    aput-object v1, v0, v5

    sget-object v1, Lcom/pubmatic/sdk/banner/mraid/Consts$Feature;->InlineVideo:Lcom/pubmatic/sdk/banner/mraid/Consts$Feature;

    aput-object v1, v0, v6

    sput-object v0, Lcom/pubmatic/sdk/banner/mraid/Consts$Feature;->$VALUES:[Lcom/pubmatic/sdk/banner/mraid/Consts$Feature;

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
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pubmatic/sdk/banner/mraid/Consts$Feature;
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/pubmatic/sdk/banner/mraid/Consts$Feature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pubmatic/sdk/banner/mraid/Consts$Feature;

    return-object v0
.end method

.method public static values()[Lcom/pubmatic/sdk/banner/mraid/Consts$Feature;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/pubmatic/sdk/banner/mraid/Consts$Feature;->$VALUES:[Lcom/pubmatic/sdk/banner/mraid/Consts$Feature;

    invoke-virtual {v0}, [Lcom/pubmatic/sdk/banner/mraid/Consts$Feature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pubmatic/sdk/banner/mraid/Consts$Feature;

    return-object v0
.end method
