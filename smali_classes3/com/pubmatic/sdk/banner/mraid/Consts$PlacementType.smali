.class public final enum Lcom/pubmatic/sdk/banner/mraid/Consts$PlacementType;
.super Ljava/lang/Enum;
.source "Consts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubmatic/sdk/banner/mraid/Consts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PlacementType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/pubmatic/sdk/banner/mraid/Consts$PlacementType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/pubmatic/sdk/banner/mraid/Consts$PlacementType;

.field public static final enum Inline:Lcom/pubmatic/sdk/banner/mraid/Consts$PlacementType;

.field public static final enum Interstitial:Lcom/pubmatic/sdk/banner/mraid/Consts$PlacementType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 33
    new-instance v0, Lcom/pubmatic/sdk/banner/mraid/Consts$PlacementType;

    const-string v1, "Inline"

    invoke-direct {v0, v1, v2}, Lcom/pubmatic/sdk/banner/mraid/Consts$PlacementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pubmatic/sdk/banner/mraid/Consts$PlacementType;->Inline:Lcom/pubmatic/sdk/banner/mraid/Consts$PlacementType;

    .line 34
    new-instance v0, Lcom/pubmatic/sdk/banner/mraid/Consts$PlacementType;

    const-string v1, "Interstitial"

    invoke-direct {v0, v1, v3}, Lcom/pubmatic/sdk/banner/mraid/Consts$PlacementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pubmatic/sdk/banner/mraid/Consts$PlacementType;->Interstitial:Lcom/pubmatic/sdk/banner/mraid/Consts$PlacementType;

    .line 31
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/pubmatic/sdk/banner/mraid/Consts$PlacementType;

    sget-object v1, Lcom/pubmatic/sdk/banner/mraid/Consts$PlacementType;->Inline:Lcom/pubmatic/sdk/banner/mraid/Consts$PlacementType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/pubmatic/sdk/banner/mraid/Consts$PlacementType;->Interstitial:Lcom/pubmatic/sdk/banner/mraid/Consts$PlacementType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/pubmatic/sdk/banner/mraid/Consts$PlacementType;->$VALUES:[Lcom/pubmatic/sdk/banner/mraid/Consts$PlacementType;

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
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pubmatic/sdk/banner/mraid/Consts$PlacementType;
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/pubmatic/sdk/banner/mraid/Consts$PlacementType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pubmatic/sdk/banner/mraid/Consts$PlacementType;

    return-object v0
.end method

.method public static values()[Lcom/pubmatic/sdk/banner/mraid/Consts$PlacementType;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/pubmatic/sdk/banner/mraid/Consts$PlacementType;->$VALUES:[Lcom/pubmatic/sdk/banner/mraid/Consts$PlacementType;

    invoke-virtual {v0}, [Lcom/pubmatic/sdk/banner/mraid/Consts$PlacementType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pubmatic/sdk/banner/mraid/Consts$PlacementType;

    return-object v0
.end method
