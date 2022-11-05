.class public Lcom/openx/model/vast/VASTParser$Tracking;
.super Ljava/lang/Object;
.source "VASTParser.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openx/model/vast/VASTParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Tracking"
.end annotation


# static fields
.field public static final EVENT_ACCEPTINVITATION:I = 0x10

.field public static final EVENT_ACCEPTINVITATIONLINEAR:I = 0x11

.field public static final EVENT_CLOSE:I = 0x13

.field public static final EVENT_CLOSELINEAR:I = 0x12

.field public static final EVENT_COLLAPSE:I = 0xf

.field public static final EVENT_COMPLETE:I = 0x6

.field public static final EVENT_CREATIVEVIEW:I = 0x1

.field public static final EVENT_EXITFULLSCREEN:I = 0xd

.field public static final EVENT_EXPAND:I = 0xe

.field public static final EVENT_FIRSTQUARTILE:I = 0x3

.field public static final EVENT_FULLSCREEN:I = 0xc

.field public static final EVENT_IMPRESSION:I = 0x0

.field public static final EVENT_MAPPING:[Ljava/lang/String;

.field public static final EVENT_MIDPOINT:I = 0x4

.field public static final EVENT_MUTE:I = 0x7

.field public static final EVENT_PAUSE:I = 0x9

.field public static final EVENT_PROGRESS:I = 0x15

.field public static final EVENT_RESUME:I = 0xb

.field public static final EVENT_REWIND:I = 0xa

.field public static final EVENT_SKIP:I = 0x14

.field public static final EVENT_START:I = 0x2

.field public static final EVENT_THIRDQUARTILE:I = 0x5

.field public static final EVENT_UNMUTE:I = 0x8

.field private static final serialVersionUID:J = 0x7211887cafafd2fcL


# instance fields
.field private event:I

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 315
    const/16 v0, 0x16

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "impression"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "creativeView"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "start"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "firstQuartile"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "midpoint"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "thirdQuartile"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "complete"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "mute"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "unmute"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "pause"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "rewind"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "resume"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "fullscreen"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "exitFullscreen"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "expand"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "collapse"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "acceptInvitation"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "acceptInvitationLinear"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "closeLinear"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "close"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "skip"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "progress"

    aput-object v2, v0, v1

    sput-object v0, Lcom/openx/model/vast/VASTParser$Tracking;->EVENT_MAPPING:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 323
    invoke-direct {p0, p1}, Lcom/openx/model/vast/VASTParser$Tracking;->findEvent(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/openx/model/vast/VASTParser$Tracking;->event:I

    .line 324
    iput-object p2, p0, Lcom/openx/model/vast/VASTParser$Tracking;->url:Ljava/lang/String;

    .line 327
    return-void
.end method

.method private findEvent(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 331
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/openx/model/vast/VASTParser$Tracking;->EVENT_MAPPING:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 333
    sget-object v1, Lcom/openx/model/vast/VASTParser$Tracking;->EVENT_MAPPING:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 338
    :goto_1
    return v0

    .line 331
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 338
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method


# virtual methods
.method public getEvent()I
    .locals 1

    .prologue
    .line 343
    iget v0, p0, Lcom/openx/model/vast/VASTParser$Tracking;->event:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/openx/model/vast/VASTParser$Tracking;->url:Ljava/lang/String;

    return-object v0
.end method
