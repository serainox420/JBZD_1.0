.class public final enum Lcom/mopub/common/event/BaseEvent$Name;
.super Ljava/lang/Enum;
.source "BaseEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/common/event/BaseEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Name"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mopub/common/event/BaseEvent$Name;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AD_DWELL_TIME:Lcom/mopub/common/event/BaseEvent$Name;

.field public static final enum AD_REQUEST:Lcom/mopub/common/event/BaseEvent$Name;

.field public static final enum CLICK_REQUEST:Lcom/mopub/common/event/BaseEvent$Name;

.field public static final enum DOWNLOAD_BUFFERING:Lcom/mopub/common/event/BaseEvent$Name;

.field public static final enum DOWNLOAD_FINISHED:Lcom/mopub/common/event/BaseEvent$Name;

.field public static final enum DOWNLOAD_START:Lcom/mopub/common/event/BaseEvent$Name;

.field public static final enum DOWNLOAD_VIDEO_READY:Lcom/mopub/common/event/BaseEvent$Name;

.field public static final enum ERROR_DURING_PLAYBACK:Lcom/mopub/common/event/BaseEvent$Name;

.field public static final enum ERROR_FAILED_TO_PLAY:Lcom/mopub/common/event/BaseEvent$Name;

.field public static final enum IMPRESSION_REQUEST:Lcom/mopub/common/event/BaseEvent$Name;

.field private static final synthetic b:[Lcom/mopub/common/event/BaseEvent$Name;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 64
    new-instance v0, Lcom/mopub/common/event/BaseEvent$Name;

    const-string v1, "AD_REQUEST"

    const-string v2, "ad_request"

    invoke-direct {v0, v1, v4, v2}, Lcom/mopub/common/event/BaseEvent$Name;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/event/BaseEvent$Name;->AD_REQUEST:Lcom/mopub/common/event/BaseEvent$Name;

    .line 65
    new-instance v0, Lcom/mopub/common/event/BaseEvent$Name;

    const-string v1, "IMPRESSION_REQUEST"

    const-string v2, "impression_request"

    invoke-direct {v0, v1, v5, v2}, Lcom/mopub/common/event/BaseEvent$Name;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/event/BaseEvent$Name;->IMPRESSION_REQUEST:Lcom/mopub/common/event/BaseEvent$Name;

    .line 66
    new-instance v0, Lcom/mopub/common/event/BaseEvent$Name;

    const-string v1, "CLICK_REQUEST"

    const-string v2, "click_request"

    invoke-direct {v0, v1, v6, v2}, Lcom/mopub/common/event/BaseEvent$Name;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/event/BaseEvent$Name;->CLICK_REQUEST:Lcom/mopub/common/event/BaseEvent$Name;

    .line 69
    new-instance v0, Lcom/mopub/common/event/BaseEvent$Name;

    const-string v1, "DOWNLOAD_START"

    const-string v2, "download_start"

    invoke-direct {v0, v1, v7, v2}, Lcom/mopub/common/event/BaseEvent$Name;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/event/BaseEvent$Name;->DOWNLOAD_START:Lcom/mopub/common/event/BaseEvent$Name;

    .line 70
    new-instance v0, Lcom/mopub/common/event/BaseEvent$Name;

    const-string v1, "DOWNLOAD_VIDEO_READY"

    const-string v2, "download_video_ready"

    invoke-direct {v0, v1, v8, v2}, Lcom/mopub/common/event/BaseEvent$Name;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/event/BaseEvent$Name;->DOWNLOAD_VIDEO_READY:Lcom/mopub/common/event/BaseEvent$Name;

    .line 71
    new-instance v0, Lcom/mopub/common/event/BaseEvent$Name;

    const-string v1, "DOWNLOAD_BUFFERING"

    const/4 v2, 0x5

    const-string v3, "download_video_buffering"

    invoke-direct {v0, v1, v2, v3}, Lcom/mopub/common/event/BaseEvent$Name;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/event/BaseEvent$Name;->DOWNLOAD_BUFFERING:Lcom/mopub/common/event/BaseEvent$Name;

    .line 72
    new-instance v0, Lcom/mopub/common/event/BaseEvent$Name;

    const-string v1, "DOWNLOAD_FINISHED"

    const/4 v2, 0x6

    const-string v3, "download_finished"

    invoke-direct {v0, v1, v2, v3}, Lcom/mopub/common/event/BaseEvent$Name;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/event/BaseEvent$Name;->DOWNLOAD_FINISHED:Lcom/mopub/common/event/BaseEvent$Name;

    .line 73
    new-instance v0, Lcom/mopub/common/event/BaseEvent$Name;

    const-string v1, "ERROR_DURING_PLAYBACK"

    const/4 v2, 0x7

    const-string v3, "error_during_playback"

    invoke-direct {v0, v1, v2, v3}, Lcom/mopub/common/event/BaseEvent$Name;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/event/BaseEvent$Name;->ERROR_DURING_PLAYBACK:Lcom/mopub/common/event/BaseEvent$Name;

    .line 74
    new-instance v0, Lcom/mopub/common/event/BaseEvent$Name;

    const-string v1, "ERROR_FAILED_TO_PLAY"

    const/16 v2, 0x8

    const-string v3, "error_failed_to_play"

    invoke-direct {v0, v1, v2, v3}, Lcom/mopub/common/event/BaseEvent$Name;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/event/BaseEvent$Name;->ERROR_FAILED_TO_PLAY:Lcom/mopub/common/event/BaseEvent$Name;

    .line 77
    new-instance v0, Lcom/mopub/common/event/BaseEvent$Name;

    const-string v1, "AD_DWELL_TIME"

    const/16 v2, 0x9

    const-string v3, "clickthrough_dwell_time"

    invoke-direct {v0, v1, v2, v3}, Lcom/mopub/common/event/BaseEvent$Name;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/event/BaseEvent$Name;->AD_DWELL_TIME:Lcom/mopub/common/event/BaseEvent$Name;

    .line 62
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/mopub/common/event/BaseEvent$Name;

    sget-object v1, Lcom/mopub/common/event/BaseEvent$Name;->AD_REQUEST:Lcom/mopub/common/event/BaseEvent$Name;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mopub/common/event/BaseEvent$Name;->IMPRESSION_REQUEST:Lcom/mopub/common/event/BaseEvent$Name;

    aput-object v1, v0, v5

    sget-object v1, Lcom/mopub/common/event/BaseEvent$Name;->CLICK_REQUEST:Lcom/mopub/common/event/BaseEvent$Name;

    aput-object v1, v0, v6

    sget-object v1, Lcom/mopub/common/event/BaseEvent$Name;->DOWNLOAD_START:Lcom/mopub/common/event/BaseEvent$Name;

    aput-object v1, v0, v7

    sget-object v1, Lcom/mopub/common/event/BaseEvent$Name;->DOWNLOAD_VIDEO_READY:Lcom/mopub/common/event/BaseEvent$Name;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/mopub/common/event/BaseEvent$Name;->DOWNLOAD_BUFFERING:Lcom/mopub/common/event/BaseEvent$Name;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/mopub/common/event/BaseEvent$Name;->DOWNLOAD_FINISHED:Lcom/mopub/common/event/BaseEvent$Name;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/mopub/common/event/BaseEvent$Name;->ERROR_DURING_PLAYBACK:Lcom/mopub/common/event/BaseEvent$Name;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/mopub/common/event/BaseEvent$Name;->ERROR_FAILED_TO_PLAY:Lcom/mopub/common/event/BaseEvent$Name;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/mopub/common/event/BaseEvent$Name;->AD_DWELL_TIME:Lcom/mopub/common/event/BaseEvent$Name;

    aput-object v2, v0, v1

    sput-object v0, Lcom/mopub/common/event/BaseEvent$Name;->b:[Lcom/mopub/common/event/BaseEvent$Name;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 82
    iput-object p3, p0, Lcom/mopub/common/event/BaseEvent$Name;->a:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mopub/common/event/BaseEvent$Name;
    .locals 1

    .prologue
    .line 62
    const-class v0, Lcom/mopub/common/event/BaseEvent$Name;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mopub/common/event/BaseEvent$Name;

    return-object v0
.end method

.method public static values()[Lcom/mopub/common/event/BaseEvent$Name;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/mopub/common/event/BaseEvent$Name;->b:[Lcom/mopub/common/event/BaseEvent$Name;

    invoke-virtual {v0}, [Lcom/mopub/common/event/BaseEvent$Name;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mopub/common/event/BaseEvent$Name;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent$Name;->a:Ljava/lang/String;

    return-object v0
.end method
