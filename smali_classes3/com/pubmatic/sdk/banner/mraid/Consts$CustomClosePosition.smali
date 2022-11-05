.class public final enum Lcom/pubmatic/sdk/banner/mraid/Consts$CustomClosePosition;
.super Ljava/lang/Enum;
.source "Consts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubmatic/sdk/banner/mraid/Consts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CustomClosePosition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/pubmatic/sdk/banner/mraid/Consts$CustomClosePosition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/pubmatic/sdk/banner/mraid/Consts$CustomClosePosition;

.field public static final enum BottomCenter:Lcom/pubmatic/sdk/banner/mraid/Consts$CustomClosePosition;

.field public static final enum BottomLeft:Lcom/pubmatic/sdk/banner/mraid/Consts$CustomClosePosition;

.field public static final enum BottomRight:Lcom/pubmatic/sdk/banner/mraid/Consts$CustomClosePosition;

.field public static final enum Center:Lcom/pubmatic/sdk/banner/mraid/Consts$CustomClosePosition;

.field public static final enum TopCenter:Lcom/pubmatic/sdk/banner/mraid/Consts$CustomClosePosition;

.field public static final enum TopLeft:Lcom/pubmatic/sdk/banner/mraid/Consts$CustomClosePosition;

.field public static final enum TopRight:Lcom/pubmatic/sdk/banner/mraid/Consts$CustomClosePosition;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 55
    new-instance v0, Lcom/pubmatic/sdk/banner/mraid/Consts$CustomClosePosition;

    const-string v1, "TopLeft"

    invoke-direct {v0, v1, v3}, Lcom/pubmatic/sdk/banner/mraid/Consts$CustomClosePosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pubmatic/sdk/banner/mraid/Consts$CustomClosePosition;->TopLeft:Lcom/pubmatic/sdk/banner/mraid/Consts$CustomClosePosition;

    .line 56
    new-instance v0, Lcom/pubmatic/sdk/banner/mraid/Consts$CustomClosePosition;

    const-string v1, "TopCenter"

    invoke-direct {v0, v1, v4}, Lcom/pubmatic/sdk/banner/mraid/Consts$CustomClosePosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pubmatic/sdk/banner/mraid/Consts$CustomClosePosition;->TopCenter:Lcom/pubmatic/sdk/banner/mraid/Consts$CustomClosePosition;

    .line 57
    new-instance v0, Lcom/pubmatic/sdk/banner/mraid/Consts$CustomClosePosition;

    const-string v1, "TopRight"

    invoke-direct {v0, v1, v5}, Lcom/pubmatic/sdk/banner/mraid/Consts$CustomClosePosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pubmatic/sdk/banner/mraid/Consts$CustomClosePosition;->TopRight:Lcom/pubmatic/sdk/banner/mraid/Consts$CustomClosePosition;

    .line 58
    new-instance v0, Lcom/pubmatic/sdk/banner/mraid/Consts$CustomClosePosition;

    const-string v1, "Center"

    invoke-direct {v0, v1, v6}, Lcom/pubmatic/sdk/banner/mraid/Consts$CustomClosePosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pubmatic/sdk/banner/mraid/Consts$CustomClosePosition;->Center:Lcom/pubmatic/sdk/banner/mraid/Consts$CustomClosePosition;

    .line 59
    new-instance v0, Lcom/pubmatic/sdk/banner/mraid/Consts$CustomClosePosition;

    const-string v1, "BottomLeft"

    invoke-direct {v0, v1, v7}, Lcom/pubmatic/sdk/banner/mraid/Consts$CustomClosePosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pubmatic/sdk/banner/mraid/Consts$CustomClosePosition;->BottomLeft:Lcom/pubmatic/sdk/banner/mraid/Consts$CustomClosePosition;

    .line 60
    new-instance v0, Lcom/pubmatic/sdk/banner/mraid/Consts$CustomClosePosition;

    const-string v1, "BottomCenter"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/pubmatic/sdk/banner/mraid/Consts$CustomClosePosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pubmatic/sdk/banner/mraid/Consts$CustomClosePosition;->BottomCenter:Lcom/pubmatic/sdk/banner/mraid/Consts$CustomClosePosition;

    .line 61
    new-instance v0, Lcom/pubmatic/sdk/banner/mraid/Consts$CustomClosePosition;

    const-string v1, "BottomRight"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/pubmatic/sdk/banner/mraid/Consts$CustomClosePosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pubmatic/sdk/banner/mraid/Consts$CustomClosePosition;->BottomRight:Lcom/pubmatic/sdk/banner/mraid/Consts$CustomClosePosition;

    .line 53
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/pubmatic/sdk/banner/mraid/Consts$CustomClosePosition;

    sget-object v1, Lcom/pubmatic/sdk/banner/mraid/Consts$CustomClosePosition;->TopLeft:Lcom/pubmatic/sdk/banner/mraid/Consts$CustomClosePosition;

    aput-object v1, v0, v3

    sget-object v1, Lcom/pubmatic/sdk/banner/mraid/Consts$CustomClosePosition;->TopCenter:Lcom/pubmatic/sdk/banner/mraid/Consts$CustomClosePosition;

    aput-object v1, v0, v4

    sget-object v1, Lcom/pubmatic/sdk/banner/mraid/Consts$CustomClosePosition;->TopRight:Lcom/pubmatic/sdk/banner/mraid/Consts$CustomClosePosition;

    aput-object v1, v0, v5

    sget-object v1, Lcom/pubmatic/sdk/banner/mraid/Consts$CustomClosePosition;->Center:Lcom/pubmatic/sdk/banner/mraid/Consts$CustomClosePosition;

    aput-object v1, v0, v6

    sget-object v1, Lcom/pubmatic/sdk/banner/mraid/Consts$CustomClosePosition;->BottomLeft:Lcom/pubmatic/sdk/banner/mraid/Consts$CustomClosePosition;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/pubmatic/sdk/banner/mraid/Consts$CustomClosePosition;->BottomCenter:Lcom/pubmatic/sdk/banner/mraid/Consts$CustomClosePosition;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/pubmatic/sdk/banner/mraid/Consts$CustomClosePosition;->BottomRight:Lcom/pubmatic/sdk/banner/mraid/Consts$CustomClosePosition;

    aput-object v2, v0, v1

    sput-object v0, Lcom/pubmatic/sdk/banner/mraid/Consts$CustomClosePosition;->$VALUES:[Lcom/pubmatic/sdk/banner/mraid/Consts$CustomClosePosition;

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
    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pubmatic/sdk/banner/mraid/Consts$CustomClosePosition;
    .locals 1

    .prologue
    .line 53
    const-class v0, Lcom/pubmatic/sdk/banner/mraid/Consts$CustomClosePosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pubmatic/sdk/banner/mraid/Consts$CustomClosePosition;

    return-object v0
.end method

.method public static values()[Lcom/pubmatic/sdk/banner/mraid/Consts$CustomClosePosition;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/pubmatic/sdk/banner/mraid/Consts$CustomClosePosition;->$VALUES:[Lcom/pubmatic/sdk/banner/mraid/Consts$CustomClosePosition;

    invoke-virtual {v0}, [Lcom/pubmatic/sdk/banner/mraid/Consts$CustomClosePosition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pubmatic/sdk/banner/mraid/Consts$CustomClosePosition;

    return-object v0
.end method
