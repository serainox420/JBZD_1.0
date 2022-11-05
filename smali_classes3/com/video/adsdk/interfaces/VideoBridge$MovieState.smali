.class public final enum Lcom/video/adsdk/interfaces/VideoBridge$MovieState;
.super Ljava/lang/Enum;
.source "VideoBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/video/adsdk/interfaces/VideoBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MovieState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/video/adsdk/interfaces/VideoBridge$MovieState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/video/adsdk/interfaces/VideoBridge$MovieState;

.field public static final enum MOVIESTATE_BUFFERING:Lcom/video/adsdk/interfaces/VideoBridge$MovieState;

.field public static final enum MOVIESTATE_COMPLETED:Lcom/video/adsdk/interfaces/VideoBridge$MovieState;

.field public static final enum MOVIESTATE_INITIALIZED:Lcom/video/adsdk/interfaces/VideoBridge$MovieState;

.field public static final enum MOVIESTATE_PAUSED:Lcom/video/adsdk/interfaces/VideoBridge$MovieState;

.field public static final enum MOVIESTATE_PLAYING_NO_SKIP:Lcom/video/adsdk/interfaces/VideoBridge$MovieState;

.field public static final enum MOVIESTATE_PLAYING_SKIP:Lcom/video/adsdk/interfaces/VideoBridge$MovieState;

.field public static final enum MOVIESTATE_RESUMED:Lcom/video/adsdk/interfaces/VideoBridge$MovieState;

.field public static final enum MOVIESTATE_STARTED:Lcom/video/adsdk/interfaces/VideoBridge$MovieState;

.field public static final enum MOVIESTATE_STOPPED_BY_USER:Lcom/video/adsdk/interfaces/VideoBridge$MovieState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 8
    new-instance v0, Lcom/video/adsdk/interfaces/VideoBridge$MovieState;

    const-string v1, "MOVIESTATE_INITIALIZED"

    invoke-direct {v0, v1, v3}, Lcom/video/adsdk/interfaces/VideoBridge$MovieState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/video/adsdk/interfaces/VideoBridge$MovieState;->MOVIESTATE_INITIALIZED:Lcom/video/adsdk/interfaces/VideoBridge$MovieState;

    new-instance v0, Lcom/video/adsdk/interfaces/VideoBridge$MovieState;

    const-string v1, "MOVIESTATE_BUFFERING"

    invoke-direct {v0, v1, v4}, Lcom/video/adsdk/interfaces/VideoBridge$MovieState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/video/adsdk/interfaces/VideoBridge$MovieState;->MOVIESTATE_BUFFERING:Lcom/video/adsdk/interfaces/VideoBridge$MovieState;

    new-instance v0, Lcom/video/adsdk/interfaces/VideoBridge$MovieState;

    const-string v1, "MOVIESTATE_PLAYING_NO_SKIP"

    invoke-direct {v0, v1, v5}, Lcom/video/adsdk/interfaces/VideoBridge$MovieState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/video/adsdk/interfaces/VideoBridge$MovieState;->MOVIESTATE_PLAYING_NO_SKIP:Lcom/video/adsdk/interfaces/VideoBridge$MovieState;

    .line 9
    new-instance v0, Lcom/video/adsdk/interfaces/VideoBridge$MovieState;

    const-string v1, "MOVIESTATE_PLAYING_SKIP"

    invoke-direct {v0, v1, v6}, Lcom/video/adsdk/interfaces/VideoBridge$MovieState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/video/adsdk/interfaces/VideoBridge$MovieState;->MOVIESTATE_PLAYING_SKIP:Lcom/video/adsdk/interfaces/VideoBridge$MovieState;

    new-instance v0, Lcom/video/adsdk/interfaces/VideoBridge$MovieState;

    const-string v1, "MOVIESTATE_PAUSED"

    invoke-direct {v0, v1, v7}, Lcom/video/adsdk/interfaces/VideoBridge$MovieState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/video/adsdk/interfaces/VideoBridge$MovieState;->MOVIESTATE_PAUSED:Lcom/video/adsdk/interfaces/VideoBridge$MovieState;

    new-instance v0, Lcom/video/adsdk/interfaces/VideoBridge$MovieState;

    const-string v1, "MOVIESTATE_COMPLETED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/video/adsdk/interfaces/VideoBridge$MovieState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/video/adsdk/interfaces/VideoBridge$MovieState;->MOVIESTATE_COMPLETED:Lcom/video/adsdk/interfaces/VideoBridge$MovieState;

    new-instance v0, Lcom/video/adsdk/interfaces/VideoBridge$MovieState;

    const-string v1, "MOVIESTATE_STARTED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/video/adsdk/interfaces/VideoBridge$MovieState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/video/adsdk/interfaces/VideoBridge$MovieState;->MOVIESTATE_STARTED:Lcom/video/adsdk/interfaces/VideoBridge$MovieState;

    new-instance v0, Lcom/video/adsdk/interfaces/VideoBridge$MovieState;

    const-string v1, "MOVIESTATE_RESUMED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/video/adsdk/interfaces/VideoBridge$MovieState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/video/adsdk/interfaces/VideoBridge$MovieState;->MOVIESTATE_RESUMED:Lcom/video/adsdk/interfaces/VideoBridge$MovieState;

    new-instance v0, Lcom/video/adsdk/interfaces/VideoBridge$MovieState;

    const-string v1, "MOVIESTATE_STOPPED_BY_USER"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/video/adsdk/interfaces/VideoBridge$MovieState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/video/adsdk/interfaces/VideoBridge$MovieState;->MOVIESTATE_STOPPED_BY_USER:Lcom/video/adsdk/interfaces/VideoBridge$MovieState;

    .line 7
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/video/adsdk/interfaces/VideoBridge$MovieState;

    sget-object v1, Lcom/video/adsdk/interfaces/VideoBridge$MovieState;->MOVIESTATE_INITIALIZED:Lcom/video/adsdk/interfaces/VideoBridge$MovieState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/video/adsdk/interfaces/VideoBridge$MovieState;->MOVIESTATE_BUFFERING:Lcom/video/adsdk/interfaces/VideoBridge$MovieState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/video/adsdk/interfaces/VideoBridge$MovieState;->MOVIESTATE_PLAYING_NO_SKIP:Lcom/video/adsdk/interfaces/VideoBridge$MovieState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/video/adsdk/interfaces/VideoBridge$MovieState;->MOVIESTATE_PLAYING_SKIP:Lcom/video/adsdk/interfaces/VideoBridge$MovieState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/video/adsdk/interfaces/VideoBridge$MovieState;->MOVIESTATE_PAUSED:Lcom/video/adsdk/interfaces/VideoBridge$MovieState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/video/adsdk/interfaces/VideoBridge$MovieState;->MOVIESTATE_COMPLETED:Lcom/video/adsdk/interfaces/VideoBridge$MovieState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/video/adsdk/interfaces/VideoBridge$MovieState;->MOVIESTATE_STARTED:Lcom/video/adsdk/interfaces/VideoBridge$MovieState;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/video/adsdk/interfaces/VideoBridge$MovieState;->MOVIESTATE_RESUMED:Lcom/video/adsdk/interfaces/VideoBridge$MovieState;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/video/adsdk/interfaces/VideoBridge$MovieState;->MOVIESTATE_STOPPED_BY_USER:Lcom/video/adsdk/interfaces/VideoBridge$MovieState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/video/adsdk/interfaces/VideoBridge$MovieState;->$VALUES:[Lcom/video/adsdk/interfaces/VideoBridge$MovieState;

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
    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/video/adsdk/interfaces/VideoBridge$MovieState;
    .locals 1

    .prologue
    .line 7
    const-class v0, Lcom/video/adsdk/interfaces/VideoBridge$MovieState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/video/adsdk/interfaces/VideoBridge$MovieState;

    return-object v0
.end method

.method public static values()[Lcom/video/adsdk/interfaces/VideoBridge$MovieState;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/video/adsdk/interfaces/VideoBridge$MovieState;->$VALUES:[Lcom/video/adsdk/interfaces/VideoBridge$MovieState;

    invoke-virtual {v0}, [Lcom/video/adsdk/interfaces/VideoBridge$MovieState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/video/adsdk/interfaces/VideoBridge$MovieState;

    return-object v0
.end method
