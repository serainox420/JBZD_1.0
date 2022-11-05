.class public final enum Lcom/openx/model/video/VideoAdEvent$Event;
.super Ljava/lang/Enum;
.source "VideoAdEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openx/model/video/VideoAdEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Event"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/openx/model/video/VideoAdEvent$Event;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/openx/model/video/VideoAdEvent$Event;

.field public static final enum AD_ACCEPTINVITATION:Lcom/openx/model/video/VideoAdEvent$Event;

.field public static final enum AD_ACCEPTINVITATIONLINEAR:Lcom/openx/model/video/VideoAdEvent$Event;

.field public static final enum AD_CLOSE:Lcom/openx/model/video/VideoAdEvent$Event;

.field public static final enum AD_CLOSELINEAR:Lcom/openx/model/video/VideoAdEvent$Event;

.field public static final enum AD_COLLAPSE:Lcom/openx/model/video/VideoAdEvent$Event;

.field public static final enum AD_COMPLETE:Lcom/openx/model/video/VideoAdEvent$Event;

.field public static final enum AD_CREATIVEVIEW:Lcom/openx/model/video/VideoAdEvent$Event;

.field public static final enum AD_EXITFULLSCREEN:Lcom/openx/model/video/VideoAdEvent$Event;

.field public static final enum AD_EXPAND:Lcom/openx/model/video/VideoAdEvent$Event;

.field public static final enum AD_FIRSTQUARTILE:Lcom/openx/model/video/VideoAdEvent$Event;

.field public static final enum AD_FULLSCREEN:Lcom/openx/model/video/VideoAdEvent$Event;

.field public static final enum AD_IMPRESSION:Lcom/openx/model/video/VideoAdEvent$Event;

.field public static final enum AD_MIDPOINT:Lcom/openx/model/video/VideoAdEvent$Event;

.field public static final enum AD_MUTE:Lcom/openx/model/video/VideoAdEvent$Event;

.field public static final enum AD_PAUSE:Lcom/openx/model/video/VideoAdEvent$Event;

.field public static final enum AD_PREPARED:Lcom/openx/model/video/VideoAdEvent$Event;

.field public static final enum AD_PREPARING:Lcom/openx/model/video/VideoAdEvent$Event;

.field public static final enum AD_PROGRESS:Lcom/openx/model/video/VideoAdEvent$Event;

.field public static final enum AD_RESUME:Lcom/openx/model/video/VideoAdEvent$Event;

.field public static final enum AD_REWIND:Lcom/openx/model/video/VideoAdEvent$Event;

.field public static final enum AD_SKIP:Lcom/openx/model/video/VideoAdEvent$Event;

.field public static final enum AD_START:Lcom/openx/model/video/VideoAdEvent$Event;

.field public static final enum AD_THIRDQUARTILE:Lcom/openx/model/video/VideoAdEvent$Event;

.field public static final enum AD_UNMUTE:Lcom/openx/model/video/VideoAdEvent$Event;

.field public static final enum AD_WINDOW_HAS_FOCUS:Lcom/openx/model/video/VideoAdEvent$Event;

.field public static final enum AD_WINDOW_HAS_NO_FOCUS:Lcom/openx/model/video/VideoAdEvent$Event;

.field public static final enum CONTENT_CLOSE:Lcom/openx/model/video/VideoAdEvent$Event;

.field public static final enum CONTENT_COMPLETE:Lcom/openx/model/video/VideoAdEvent$Event;

.field public static final enum CONTENT_EXITFULLSCREEN:Lcom/openx/model/video/VideoAdEvent$Event;

.field public static final enum CONTENT_FULLSCREEN:Lcom/openx/model/video/VideoAdEvent$Event;

.field public static final enum CONTENT_MUTE:Lcom/openx/model/video/VideoAdEvent$Event;

.field public static final enum CONTENT_PAUSE:Lcom/openx/model/video/VideoAdEvent$Event;

.field public static final enum CONTENT_PLAYLIST_COMPLETE:Lcom/openx/model/video/VideoAdEvent$Event;

.field public static final enum CONTENT_PREPARED:Lcom/openx/model/video/VideoAdEvent$Event;

.field public static final enum CONTENT_PREPARING:Lcom/openx/model/video/VideoAdEvent$Event;

.field public static final enum CONTENT_RESUME:Lcom/openx/model/video/VideoAdEvent$Event;

.field public static final enum CONTENT_REWIND:Lcom/openx/model/video/VideoAdEvent$Event;

.field public static final enum CONTENT_START:Lcom/openx/model/video/VideoAdEvent$Event;

.field public static final enum CONTENT_UNMUTE:Lcom/openx/model/video/VideoAdEvent$Event;

.field public static final enum CONTENT_WINDOW_HAS_FOCUS:Lcom/openx/model/video/VideoAdEvent$Event;

.field public static final enum CONTENT_WINDOW_HAS_NO_FOCUS:Lcom/openx/model/video/VideoAdEvent$Event;

.field public static final enum TOUCH:Lcom/openx/model/video/VideoAdEvent$Event;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 15
    new-instance v0, Lcom/openx/model/video/VideoAdEvent$Event;

    const-string v1, "AD_IMPRESSION"

    invoke-direct {v0, v1, v3}, Lcom/openx/model/video/VideoAdEvent$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/openx/model/video/VideoAdEvent$Event;->AD_IMPRESSION:Lcom/openx/model/video/VideoAdEvent$Event;

    .line 16
    new-instance v0, Lcom/openx/model/video/VideoAdEvent$Event;

    const-string v1, "AD_CREATIVEVIEW"

    invoke-direct {v0, v1, v4}, Lcom/openx/model/video/VideoAdEvent$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/openx/model/video/VideoAdEvent$Event;->AD_CREATIVEVIEW:Lcom/openx/model/video/VideoAdEvent$Event;

    .line 17
    new-instance v0, Lcom/openx/model/video/VideoAdEvent$Event;

    const-string v1, "AD_START"

    invoke-direct {v0, v1, v5}, Lcom/openx/model/video/VideoAdEvent$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/openx/model/video/VideoAdEvent$Event;->AD_START:Lcom/openx/model/video/VideoAdEvent$Event;

    .line 18
    new-instance v0, Lcom/openx/model/video/VideoAdEvent$Event;

    const-string v1, "AD_FIRSTQUARTILE"

    invoke-direct {v0, v1, v6}, Lcom/openx/model/video/VideoAdEvent$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/openx/model/video/VideoAdEvent$Event;->AD_FIRSTQUARTILE:Lcom/openx/model/video/VideoAdEvent$Event;

    .line 19
    new-instance v0, Lcom/openx/model/video/VideoAdEvent$Event;

    const-string v1, "AD_MIDPOINT"

    invoke-direct {v0, v1, v7}, Lcom/openx/model/video/VideoAdEvent$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/openx/model/video/VideoAdEvent$Event;->AD_MIDPOINT:Lcom/openx/model/video/VideoAdEvent$Event;

    .line 20
    new-instance v0, Lcom/openx/model/video/VideoAdEvent$Event;

    const-string v1, "AD_THIRDQUARTILE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/openx/model/video/VideoAdEvent$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/openx/model/video/VideoAdEvent$Event;->AD_THIRDQUARTILE:Lcom/openx/model/video/VideoAdEvent$Event;

    .line 21
    new-instance v0, Lcom/openx/model/video/VideoAdEvent$Event;

    const-string v1, "AD_COMPLETE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/openx/model/video/VideoAdEvent$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/openx/model/video/VideoAdEvent$Event;->AD_COMPLETE:Lcom/openx/model/video/VideoAdEvent$Event;

    .line 22
    new-instance v0, Lcom/openx/model/video/VideoAdEvent$Event;

    const-string v1, "AD_MUTE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/openx/model/video/VideoAdEvent$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/openx/model/video/VideoAdEvent$Event;->AD_MUTE:Lcom/openx/model/video/VideoAdEvent$Event;

    .line 23
    new-instance v0, Lcom/openx/model/video/VideoAdEvent$Event;

    const-string v1, "AD_UNMUTE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/openx/model/video/VideoAdEvent$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/openx/model/video/VideoAdEvent$Event;->AD_UNMUTE:Lcom/openx/model/video/VideoAdEvent$Event;

    .line 24
    new-instance v0, Lcom/openx/model/video/VideoAdEvent$Event;

    const-string v1, "AD_PAUSE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/openx/model/video/VideoAdEvent$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/openx/model/video/VideoAdEvent$Event;->AD_PAUSE:Lcom/openx/model/video/VideoAdEvent$Event;

    .line 25
    new-instance v0, Lcom/openx/model/video/VideoAdEvent$Event;

    const-string v1, "AD_REWIND"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/openx/model/video/VideoAdEvent$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/openx/model/video/VideoAdEvent$Event;->AD_REWIND:Lcom/openx/model/video/VideoAdEvent$Event;

    .line 26
    new-instance v0, Lcom/openx/model/video/VideoAdEvent$Event;

    const-string v1, "AD_RESUME"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/openx/model/video/VideoAdEvent$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/openx/model/video/VideoAdEvent$Event;->AD_RESUME:Lcom/openx/model/video/VideoAdEvent$Event;

    .line 27
    new-instance v0, Lcom/openx/model/video/VideoAdEvent$Event;

    const-string v1, "AD_FULLSCREEN"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/openx/model/video/VideoAdEvent$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/openx/model/video/VideoAdEvent$Event;->AD_FULLSCREEN:Lcom/openx/model/video/VideoAdEvent$Event;

    .line 28
    new-instance v0, Lcom/openx/model/video/VideoAdEvent$Event;

    const-string v1, "AD_EXITFULLSCREEN"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/openx/model/video/VideoAdEvent$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/openx/model/video/VideoAdEvent$Event;->AD_EXITFULLSCREEN:Lcom/openx/model/video/VideoAdEvent$Event;

    .line 29
    new-instance v0, Lcom/openx/model/video/VideoAdEvent$Event;

    const-string v1, "AD_EXPAND"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/openx/model/video/VideoAdEvent$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/openx/model/video/VideoAdEvent$Event;->AD_EXPAND:Lcom/openx/model/video/VideoAdEvent$Event;

    .line 30
    new-instance v0, Lcom/openx/model/video/VideoAdEvent$Event;

    const-string v1, "AD_COLLAPSE"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/openx/model/video/VideoAdEvent$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/openx/model/video/VideoAdEvent$Event;->AD_COLLAPSE:Lcom/openx/model/video/VideoAdEvent$Event;

    .line 31
    new-instance v0, Lcom/openx/model/video/VideoAdEvent$Event;

    const-string v1, "AD_ACCEPTINVITATION"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/openx/model/video/VideoAdEvent$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/openx/model/video/VideoAdEvent$Event;->AD_ACCEPTINVITATION:Lcom/openx/model/video/VideoAdEvent$Event;

    .line 32
    new-instance v0, Lcom/openx/model/video/VideoAdEvent$Event;

    const-string v1, "AD_ACCEPTINVITATIONLINEAR"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/openx/model/video/VideoAdEvent$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/openx/model/video/VideoAdEvent$Event;->AD_ACCEPTINVITATIONLINEAR:Lcom/openx/model/video/VideoAdEvent$Event;

    .line 33
    new-instance v0, Lcom/openx/model/video/VideoAdEvent$Event;

    const-string v1, "AD_CLOSELINEAR"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/openx/model/video/VideoAdEvent$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/openx/model/video/VideoAdEvent$Event;->AD_CLOSELINEAR:Lcom/openx/model/video/VideoAdEvent$Event;

    .line 34
    new-instance v0, Lcom/openx/model/video/VideoAdEvent$Event;

    const-string v1, "AD_CLOSE"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/openx/model/video/VideoAdEvent$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/openx/model/video/VideoAdEvent$Event;->AD_CLOSE:Lcom/openx/model/video/VideoAdEvent$Event;

    .line 35
    new-instance v0, Lcom/openx/model/video/VideoAdEvent$Event;

    const-string v1, "AD_SKIP"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/openx/model/video/VideoAdEvent$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/openx/model/video/VideoAdEvent$Event;->AD_SKIP:Lcom/openx/model/video/VideoAdEvent$Event;

    .line 36
    new-instance v0, Lcom/openx/model/video/VideoAdEvent$Event;

    const-string v1, "AD_PROGRESS"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/openx/model/video/VideoAdEvent$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/openx/model/video/VideoAdEvent$Event;->AD_PROGRESS:Lcom/openx/model/video/VideoAdEvent$Event;

    .line 41
    new-instance v0, Lcom/openx/model/video/VideoAdEvent$Event;

    const-string v1, "AD_PREPARING"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/openx/model/video/VideoAdEvent$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/openx/model/video/VideoAdEvent$Event;->AD_PREPARING:Lcom/openx/model/video/VideoAdEvent$Event;

    .line 42
    new-instance v0, Lcom/openx/model/video/VideoAdEvent$Event;

    const-string v1, "AD_PREPARED"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/openx/model/video/VideoAdEvent$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/openx/model/video/VideoAdEvent$Event;->AD_PREPARED:Lcom/openx/model/video/VideoAdEvent$Event;

    .line 43
    new-instance v0, Lcom/openx/model/video/VideoAdEvent$Event;

    const-string v1, "CONTENT_PREPARING"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lcom/openx/model/video/VideoAdEvent$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/openx/model/video/VideoAdEvent$Event;->CONTENT_PREPARING:Lcom/openx/model/video/VideoAdEvent$Event;

    .line 44
    new-instance v0, Lcom/openx/model/video/VideoAdEvent$Event;

    const-string v1, "CONTENT_PREPARED"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lcom/openx/model/video/VideoAdEvent$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/openx/model/video/VideoAdEvent$Event;->CONTENT_PREPARED:Lcom/openx/model/video/VideoAdEvent$Event;

    .line 45
    new-instance v0, Lcom/openx/model/video/VideoAdEvent$Event;

    const-string v1, "CONTENT_START"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Lcom/openx/model/video/VideoAdEvent$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/openx/model/video/VideoAdEvent$Event;->CONTENT_START:Lcom/openx/model/video/VideoAdEvent$Event;

    .line 46
    new-instance v0, Lcom/openx/model/video/VideoAdEvent$Event;

    const-string v1, "CONTENT_COMPLETE"

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v2}, Lcom/openx/model/video/VideoAdEvent$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/openx/model/video/VideoAdEvent$Event;->CONTENT_COMPLETE:Lcom/openx/model/video/VideoAdEvent$Event;

    .line 47
    new-instance v0, Lcom/openx/model/video/VideoAdEvent$Event;

    const-string v1, "CONTENT_MUTE"

    const/16 v2, 0x1c

    invoke-direct {v0, v1, v2}, Lcom/openx/model/video/VideoAdEvent$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/openx/model/video/VideoAdEvent$Event;->CONTENT_MUTE:Lcom/openx/model/video/VideoAdEvent$Event;

    .line 48
    new-instance v0, Lcom/openx/model/video/VideoAdEvent$Event;

    const-string v1, "CONTENT_UNMUTE"

    const/16 v2, 0x1d

    invoke-direct {v0, v1, v2}, Lcom/openx/model/video/VideoAdEvent$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/openx/model/video/VideoAdEvent$Event;->CONTENT_UNMUTE:Lcom/openx/model/video/VideoAdEvent$Event;

    .line 49
    new-instance v0, Lcom/openx/model/video/VideoAdEvent$Event;

    const-string v1, "CONTENT_PAUSE"

    const/16 v2, 0x1e

    invoke-direct {v0, v1, v2}, Lcom/openx/model/video/VideoAdEvent$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/openx/model/video/VideoAdEvent$Event;->CONTENT_PAUSE:Lcom/openx/model/video/VideoAdEvent$Event;

    .line 50
    new-instance v0, Lcom/openx/model/video/VideoAdEvent$Event;

    const-string v1, "CONTENT_REWIND"

    const/16 v2, 0x1f

    invoke-direct {v0, v1, v2}, Lcom/openx/model/video/VideoAdEvent$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/openx/model/video/VideoAdEvent$Event;->CONTENT_REWIND:Lcom/openx/model/video/VideoAdEvent$Event;

    .line 51
    new-instance v0, Lcom/openx/model/video/VideoAdEvent$Event;

    const-string v1, "CONTENT_RESUME"

    const/16 v2, 0x20

    invoke-direct {v0, v1, v2}, Lcom/openx/model/video/VideoAdEvent$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/openx/model/video/VideoAdEvent$Event;->CONTENT_RESUME:Lcom/openx/model/video/VideoAdEvent$Event;

    .line 52
    new-instance v0, Lcom/openx/model/video/VideoAdEvent$Event;

    const-string v1, "CONTENT_FULLSCREEN"

    const/16 v2, 0x21

    invoke-direct {v0, v1, v2}, Lcom/openx/model/video/VideoAdEvent$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/openx/model/video/VideoAdEvent$Event;->CONTENT_FULLSCREEN:Lcom/openx/model/video/VideoAdEvent$Event;

    .line 53
    new-instance v0, Lcom/openx/model/video/VideoAdEvent$Event;

    const-string v1, "CONTENT_EXITFULLSCREEN"

    const/16 v2, 0x22

    invoke-direct {v0, v1, v2}, Lcom/openx/model/video/VideoAdEvent$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/openx/model/video/VideoAdEvent$Event;->CONTENT_EXITFULLSCREEN:Lcom/openx/model/video/VideoAdEvent$Event;

    .line 54
    new-instance v0, Lcom/openx/model/video/VideoAdEvent$Event;

    const-string v1, "CONTENT_PLAYLIST_COMPLETE"

    const/16 v2, 0x23

    invoke-direct {v0, v1, v2}, Lcom/openx/model/video/VideoAdEvent$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/openx/model/video/VideoAdEvent$Event;->CONTENT_PLAYLIST_COMPLETE:Lcom/openx/model/video/VideoAdEvent$Event;

    .line 55
    new-instance v0, Lcom/openx/model/video/VideoAdEvent$Event;

    const-string v1, "CONTENT_CLOSE"

    const/16 v2, 0x24

    invoke-direct {v0, v1, v2}, Lcom/openx/model/video/VideoAdEvent$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/openx/model/video/VideoAdEvent$Event;->CONTENT_CLOSE:Lcom/openx/model/video/VideoAdEvent$Event;

    .line 56
    new-instance v0, Lcom/openx/model/video/VideoAdEvent$Event;

    const-string v1, "AD_WINDOW_HAS_FOCUS"

    const/16 v2, 0x25

    invoke-direct {v0, v1, v2}, Lcom/openx/model/video/VideoAdEvent$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/openx/model/video/VideoAdEvent$Event;->AD_WINDOW_HAS_FOCUS:Lcom/openx/model/video/VideoAdEvent$Event;

    .line 57
    new-instance v0, Lcom/openx/model/video/VideoAdEvent$Event;

    const-string v1, "AD_WINDOW_HAS_NO_FOCUS"

    const/16 v2, 0x26

    invoke-direct {v0, v1, v2}, Lcom/openx/model/video/VideoAdEvent$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/openx/model/video/VideoAdEvent$Event;->AD_WINDOW_HAS_NO_FOCUS:Lcom/openx/model/video/VideoAdEvent$Event;

    .line 58
    new-instance v0, Lcom/openx/model/video/VideoAdEvent$Event;

    const-string v1, "CONTENT_WINDOW_HAS_FOCUS"

    const/16 v2, 0x27

    invoke-direct {v0, v1, v2}, Lcom/openx/model/video/VideoAdEvent$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/openx/model/video/VideoAdEvent$Event;->CONTENT_WINDOW_HAS_FOCUS:Lcom/openx/model/video/VideoAdEvent$Event;

    .line 59
    new-instance v0, Lcom/openx/model/video/VideoAdEvent$Event;

    const-string v1, "CONTENT_WINDOW_HAS_NO_FOCUS"

    const/16 v2, 0x28

    invoke-direct {v0, v1, v2}, Lcom/openx/model/video/VideoAdEvent$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/openx/model/video/VideoAdEvent$Event;->CONTENT_WINDOW_HAS_NO_FOCUS:Lcom/openx/model/video/VideoAdEvent$Event;

    .line 60
    new-instance v0, Lcom/openx/model/video/VideoAdEvent$Event;

    const-string v1, "TOUCH"

    const/16 v2, 0x29

    invoke-direct {v0, v1, v2}, Lcom/openx/model/video/VideoAdEvent$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/openx/model/video/VideoAdEvent$Event;->TOUCH:Lcom/openx/model/video/VideoAdEvent$Event;

    .line 6
    const/16 v0, 0x2a

    new-array v0, v0, [Lcom/openx/model/video/VideoAdEvent$Event;

    sget-object v1, Lcom/openx/model/video/VideoAdEvent$Event;->AD_IMPRESSION:Lcom/openx/model/video/VideoAdEvent$Event;

    aput-object v1, v0, v3

    sget-object v1, Lcom/openx/model/video/VideoAdEvent$Event;->AD_CREATIVEVIEW:Lcom/openx/model/video/VideoAdEvent$Event;

    aput-object v1, v0, v4

    sget-object v1, Lcom/openx/model/video/VideoAdEvent$Event;->AD_START:Lcom/openx/model/video/VideoAdEvent$Event;

    aput-object v1, v0, v5

    sget-object v1, Lcom/openx/model/video/VideoAdEvent$Event;->AD_FIRSTQUARTILE:Lcom/openx/model/video/VideoAdEvent$Event;

    aput-object v1, v0, v6

    sget-object v1, Lcom/openx/model/video/VideoAdEvent$Event;->AD_MIDPOINT:Lcom/openx/model/video/VideoAdEvent$Event;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/openx/model/video/VideoAdEvent$Event;->AD_THIRDQUARTILE:Lcom/openx/model/video/VideoAdEvent$Event;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/openx/model/video/VideoAdEvent$Event;->AD_COMPLETE:Lcom/openx/model/video/VideoAdEvent$Event;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/openx/model/video/VideoAdEvent$Event;->AD_MUTE:Lcom/openx/model/video/VideoAdEvent$Event;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/openx/model/video/VideoAdEvent$Event;->AD_UNMUTE:Lcom/openx/model/video/VideoAdEvent$Event;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/openx/model/video/VideoAdEvent$Event;->AD_PAUSE:Lcom/openx/model/video/VideoAdEvent$Event;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/openx/model/video/VideoAdEvent$Event;->AD_REWIND:Lcom/openx/model/video/VideoAdEvent$Event;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/openx/model/video/VideoAdEvent$Event;->AD_RESUME:Lcom/openx/model/video/VideoAdEvent$Event;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/openx/model/video/VideoAdEvent$Event;->AD_FULLSCREEN:Lcom/openx/model/video/VideoAdEvent$Event;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/openx/model/video/VideoAdEvent$Event;->AD_EXITFULLSCREEN:Lcom/openx/model/video/VideoAdEvent$Event;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/openx/model/video/VideoAdEvent$Event;->AD_EXPAND:Lcom/openx/model/video/VideoAdEvent$Event;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/openx/model/video/VideoAdEvent$Event;->AD_COLLAPSE:Lcom/openx/model/video/VideoAdEvent$Event;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/openx/model/video/VideoAdEvent$Event;->AD_ACCEPTINVITATION:Lcom/openx/model/video/VideoAdEvent$Event;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/openx/model/video/VideoAdEvent$Event;->AD_ACCEPTINVITATIONLINEAR:Lcom/openx/model/video/VideoAdEvent$Event;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/openx/model/video/VideoAdEvent$Event;->AD_CLOSELINEAR:Lcom/openx/model/video/VideoAdEvent$Event;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/openx/model/video/VideoAdEvent$Event;->AD_CLOSE:Lcom/openx/model/video/VideoAdEvent$Event;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/openx/model/video/VideoAdEvent$Event;->AD_SKIP:Lcom/openx/model/video/VideoAdEvent$Event;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/openx/model/video/VideoAdEvent$Event;->AD_PROGRESS:Lcom/openx/model/video/VideoAdEvent$Event;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/openx/model/video/VideoAdEvent$Event;->AD_PREPARING:Lcom/openx/model/video/VideoAdEvent$Event;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/openx/model/video/VideoAdEvent$Event;->AD_PREPARED:Lcom/openx/model/video/VideoAdEvent$Event;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/openx/model/video/VideoAdEvent$Event;->CONTENT_PREPARING:Lcom/openx/model/video/VideoAdEvent$Event;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/openx/model/video/VideoAdEvent$Event;->CONTENT_PREPARED:Lcom/openx/model/video/VideoAdEvent$Event;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/openx/model/video/VideoAdEvent$Event;->CONTENT_START:Lcom/openx/model/video/VideoAdEvent$Event;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/openx/model/video/VideoAdEvent$Event;->CONTENT_COMPLETE:Lcom/openx/model/video/VideoAdEvent$Event;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/openx/model/video/VideoAdEvent$Event;->CONTENT_MUTE:Lcom/openx/model/video/VideoAdEvent$Event;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/openx/model/video/VideoAdEvent$Event;->CONTENT_UNMUTE:Lcom/openx/model/video/VideoAdEvent$Event;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/openx/model/video/VideoAdEvent$Event;->CONTENT_PAUSE:Lcom/openx/model/video/VideoAdEvent$Event;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/openx/model/video/VideoAdEvent$Event;->CONTENT_REWIND:Lcom/openx/model/video/VideoAdEvent$Event;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/openx/model/video/VideoAdEvent$Event;->CONTENT_RESUME:Lcom/openx/model/video/VideoAdEvent$Event;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lcom/openx/model/video/VideoAdEvent$Event;->CONTENT_FULLSCREEN:Lcom/openx/model/video/VideoAdEvent$Event;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, Lcom/openx/model/video/VideoAdEvent$Event;->CONTENT_EXITFULLSCREEN:Lcom/openx/model/video/VideoAdEvent$Event;

    aput-object v2, v0, v1

    const/16 v1, 0x23

    sget-object v2, Lcom/openx/model/video/VideoAdEvent$Event;->CONTENT_PLAYLIST_COMPLETE:Lcom/openx/model/video/VideoAdEvent$Event;

    aput-object v2, v0, v1

    const/16 v1, 0x24

    sget-object v2, Lcom/openx/model/video/VideoAdEvent$Event;->CONTENT_CLOSE:Lcom/openx/model/video/VideoAdEvent$Event;

    aput-object v2, v0, v1

    const/16 v1, 0x25

    sget-object v2, Lcom/openx/model/video/VideoAdEvent$Event;->AD_WINDOW_HAS_FOCUS:Lcom/openx/model/video/VideoAdEvent$Event;

    aput-object v2, v0, v1

    const/16 v1, 0x26

    sget-object v2, Lcom/openx/model/video/VideoAdEvent$Event;->AD_WINDOW_HAS_NO_FOCUS:Lcom/openx/model/video/VideoAdEvent$Event;

    aput-object v2, v0, v1

    const/16 v1, 0x27

    sget-object v2, Lcom/openx/model/video/VideoAdEvent$Event;->CONTENT_WINDOW_HAS_FOCUS:Lcom/openx/model/video/VideoAdEvent$Event;

    aput-object v2, v0, v1

    const/16 v1, 0x28

    sget-object v2, Lcom/openx/model/video/VideoAdEvent$Event;->CONTENT_WINDOW_HAS_NO_FOCUS:Lcom/openx/model/video/VideoAdEvent$Event;

    aput-object v2, v0, v1

    const/16 v1, 0x29

    sget-object v2, Lcom/openx/model/video/VideoAdEvent$Event;->TOUCH:Lcom/openx/model/video/VideoAdEvent$Event;

    aput-object v2, v0, v1

    sput-object v0, Lcom/openx/model/video/VideoAdEvent$Event;->$VALUES:[Lcom/openx/model/video/VideoAdEvent$Event;

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
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/openx/model/video/VideoAdEvent$Event;
    .locals 1

    .prologue
    .line 6
    const-class v0, Lcom/openx/model/video/VideoAdEvent$Event;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/openx/model/video/VideoAdEvent$Event;

    return-object v0
.end method

.method public static values()[Lcom/openx/model/video/VideoAdEvent$Event;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/openx/model/video/VideoAdEvent$Event;->$VALUES:[Lcom/openx/model/video/VideoAdEvent$Event;

    invoke-virtual {v0}, [Lcom/openx/model/video/VideoAdEvent$Event;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/openx/model/video/VideoAdEvent$Event;

    return-object v0
.end method
