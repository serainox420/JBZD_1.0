.class public final enum Lcom/openx/view/mraid/MRAIDAction;
.super Ljava/lang/Enum;
.source "MRAIDAction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/openx/view/mraid/MRAIDAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/openx/view/mraid/MRAIDAction;

.field public static final enum CALENDAR_EVENT:Lcom/openx/view/mraid/MRAIDAction;

.field public static final enum CLOSE:Lcom/openx/view/mraid/MRAIDAction;

.field public static final enum EXPAND:Lcom/openx/view/mraid/MRAIDAction;

.field public static final enum OPEN:Lcom/openx/view/mraid/MRAIDAction;

.field public static final enum PLAY_VIDEO:Lcom/openx/view/mraid/MRAIDAction;

.field public static final enum RESIZE:Lcom/openx/view/mraid/MRAIDAction;

.field public static final enum STORE_PICTURE:Lcom/openx/view/mraid/MRAIDAction;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 6
    new-instance v0, Lcom/openx/view/mraid/MRAIDAction;

    const-string v1, "CLOSE"

    invoke-direct {v0, v1, v3}, Lcom/openx/view/mraid/MRAIDAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/openx/view/mraid/MRAIDAction;->CLOSE:Lcom/openx/view/mraid/MRAIDAction;

    .line 7
    new-instance v0, Lcom/openx/view/mraid/MRAIDAction;

    const-string v1, "OPEN"

    invoke-direct {v0, v1, v4}, Lcom/openx/view/mraid/MRAIDAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/openx/view/mraid/MRAIDAction;->OPEN:Lcom/openx/view/mraid/MRAIDAction;

    .line 8
    new-instance v0, Lcom/openx/view/mraid/MRAIDAction;

    const-string v1, "EXPAND"

    invoke-direct {v0, v1, v5}, Lcom/openx/view/mraid/MRAIDAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/openx/view/mraid/MRAIDAction;->EXPAND:Lcom/openx/view/mraid/MRAIDAction;

    .line 9
    new-instance v0, Lcom/openx/view/mraid/MRAIDAction;

    const-string v1, "RESIZE"

    invoke-direct {v0, v1, v6}, Lcom/openx/view/mraid/MRAIDAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/openx/view/mraid/MRAIDAction;->RESIZE:Lcom/openx/view/mraid/MRAIDAction;

    .line 10
    new-instance v0, Lcom/openx/view/mraid/MRAIDAction;

    const-string v1, "CALENDAR_EVENT"

    invoke-direct {v0, v1, v7}, Lcom/openx/view/mraid/MRAIDAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/openx/view/mraid/MRAIDAction;->CALENDAR_EVENT:Lcom/openx/view/mraid/MRAIDAction;

    .line 11
    new-instance v0, Lcom/openx/view/mraid/MRAIDAction;

    const-string v1, "PLAY_VIDEO"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/openx/view/mraid/MRAIDAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/openx/view/mraid/MRAIDAction;->PLAY_VIDEO:Lcom/openx/view/mraid/MRAIDAction;

    .line 12
    new-instance v0, Lcom/openx/view/mraid/MRAIDAction;

    const-string v1, "STORE_PICTURE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/openx/view/mraid/MRAIDAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/openx/view/mraid/MRAIDAction;->STORE_PICTURE:Lcom/openx/view/mraid/MRAIDAction;

    .line 3
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/openx/view/mraid/MRAIDAction;

    sget-object v1, Lcom/openx/view/mraid/MRAIDAction;->CLOSE:Lcom/openx/view/mraid/MRAIDAction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/openx/view/mraid/MRAIDAction;->OPEN:Lcom/openx/view/mraid/MRAIDAction;

    aput-object v1, v0, v4

    sget-object v1, Lcom/openx/view/mraid/MRAIDAction;->EXPAND:Lcom/openx/view/mraid/MRAIDAction;

    aput-object v1, v0, v5

    sget-object v1, Lcom/openx/view/mraid/MRAIDAction;->RESIZE:Lcom/openx/view/mraid/MRAIDAction;

    aput-object v1, v0, v6

    sget-object v1, Lcom/openx/view/mraid/MRAIDAction;->CALENDAR_EVENT:Lcom/openx/view/mraid/MRAIDAction;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/openx/view/mraid/MRAIDAction;->PLAY_VIDEO:Lcom/openx/view/mraid/MRAIDAction;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/openx/view/mraid/MRAIDAction;->STORE_PICTURE:Lcom/openx/view/mraid/MRAIDAction;

    aput-object v2, v0, v1

    sput-object v0, Lcom/openx/view/mraid/MRAIDAction;->$VALUES:[Lcom/openx/view/mraid/MRAIDAction;

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
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/openx/view/mraid/MRAIDAction;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/openx/view/mraid/MRAIDAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/openx/view/mraid/MRAIDAction;

    return-object v0
.end method

.method public static values()[Lcom/openx/view/mraid/MRAIDAction;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/openx/view/mraid/MRAIDAction;->$VALUES:[Lcom/openx/view/mraid/MRAIDAction;

    invoke-virtual {v0}, [Lcom/openx/view/mraid/MRAIDAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/openx/view/mraid/MRAIDAction;

    return-object v0
.end method
