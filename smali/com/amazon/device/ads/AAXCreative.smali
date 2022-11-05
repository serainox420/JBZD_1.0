.class final enum Lcom/amazon/device/ads/AAXCreative;
.super Ljava/lang/Enum;
.source "AAXCreative.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/amazon/device/ads/AAXCreative;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/device/ads/AAXCreative;

.field public static final enum CAN_EXPAND1:Lcom/amazon/device/ads/AAXCreative;

.field public static final enum CAN_EXPAND2:Lcom/amazon/device/ads/AAXCreative;

.field public static final enum CAN_PLAY_AUDIO1:Lcom/amazon/device/ads/AAXCreative;

.field public static final enum CAN_PLAY_AUDIO2:Lcom/amazon/device/ads/AAXCreative;

.field public static final enum CAN_PLAY_VIDEO:Lcom/amazon/device/ads/AAXCreative;

.field public static final enum HTML:Lcom/amazon/device/ads/AAXCreative;

.field public static final enum INTERSTITIAL:Lcom/amazon/device/ads/AAXCreative;

.field public static final enum MRAID1:Lcom/amazon/device/ads/AAXCreative;

.field public static final enum MRAID2:Lcom/amazon/device/ads/AAXCreative;

.field public static final enum REQUIRES_TRANSPARENCY:Lcom/amazon/device/ads/AAXCreative;

.field public static final enum VIDEO_INTERSTITIAL:Lcom/amazon/device/ads/AAXCreative;

.field private static final primaryCreativeTypes:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/amazon/device/ads/AAXCreative;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final id:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 17
    new-instance v0, Lcom/amazon/device/ads/AAXCreative;

    const-string v1, "HTML"

    const/16 v2, 0x3ef

    invoke-direct {v0, v1, v4, v2}, Lcom/amazon/device/ads/AAXCreative;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/device/ads/AAXCreative;->HTML:Lcom/amazon/device/ads/AAXCreative;

    .line 18
    new-instance v0, Lcom/amazon/device/ads/AAXCreative;

    const-string v1, "MRAID1"

    const/16 v2, 0x3f8

    invoke-direct {v0, v1, v5, v2}, Lcom/amazon/device/ads/AAXCreative;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/device/ads/AAXCreative;->MRAID1:Lcom/amazon/device/ads/AAXCreative;

    .line 19
    new-instance v0, Lcom/amazon/device/ads/AAXCreative;

    const-string v1, "MRAID2"

    const/16 v2, 0x3f9

    invoke-direct {v0, v1, v6, v2}, Lcom/amazon/device/ads/AAXCreative;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/device/ads/AAXCreative;->MRAID2:Lcom/amazon/device/ads/AAXCreative;

    .line 20
    new-instance v0, Lcom/amazon/device/ads/AAXCreative;

    const-string v1, "INTERSTITIAL"

    const/16 v2, 0x3f0

    invoke-direct {v0, v1, v7, v2}, Lcom/amazon/device/ads/AAXCreative;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/device/ads/AAXCreative;->INTERSTITIAL:Lcom/amazon/device/ads/AAXCreative;

    .line 21
    new-instance v0, Lcom/amazon/device/ads/AAXCreative;

    const-string v1, "CAN_PLAY_AUDIO1"

    const/16 v2, 0x3e9

    invoke-direct {v0, v1, v8, v2}, Lcom/amazon/device/ads/AAXCreative;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/device/ads/AAXCreative;->CAN_PLAY_AUDIO1:Lcom/amazon/device/ads/AAXCreative;

    .line 22
    new-instance v0, Lcom/amazon/device/ads/AAXCreative;

    const-string v1, "CAN_PLAY_AUDIO2"

    const/4 v2, 0x5

    const/16 v3, 0x3ea

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/device/ads/AAXCreative;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/device/ads/AAXCreative;->CAN_PLAY_AUDIO2:Lcom/amazon/device/ads/AAXCreative;

    .line 23
    new-instance v0, Lcom/amazon/device/ads/AAXCreative;

    const-string v1, "CAN_EXPAND1"

    const/4 v2, 0x6

    const/16 v3, 0x3eb

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/device/ads/AAXCreative;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/device/ads/AAXCreative;->CAN_EXPAND1:Lcom/amazon/device/ads/AAXCreative;

    .line 24
    new-instance v0, Lcom/amazon/device/ads/AAXCreative;

    const-string v1, "CAN_EXPAND2"

    const/4 v2, 0x7

    const/16 v3, 0x3ec

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/device/ads/AAXCreative;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/device/ads/AAXCreative;->CAN_EXPAND2:Lcom/amazon/device/ads/AAXCreative;

    .line 25
    new-instance v0, Lcom/amazon/device/ads/AAXCreative;

    const-string v1, "CAN_PLAY_VIDEO"

    const/16 v2, 0x8

    const/16 v3, 0x3f6

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/device/ads/AAXCreative;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/device/ads/AAXCreative;->CAN_PLAY_VIDEO:Lcom/amazon/device/ads/AAXCreative;

    .line 26
    new-instance v0, Lcom/amazon/device/ads/AAXCreative;

    const-string v1, "VIDEO_INTERSTITIAL"

    const/16 v2, 0x9

    const/16 v3, 0x406

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/device/ads/AAXCreative;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/device/ads/AAXCreative;->VIDEO_INTERSTITIAL:Lcom/amazon/device/ads/AAXCreative;

    .line 27
    new-instance v0, Lcom/amazon/device/ads/AAXCreative;

    const-string v1, "REQUIRES_TRANSPARENCY"

    const/16 v2, 0xa

    const/16 v3, 0x407

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/device/ads/AAXCreative;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/device/ads/AAXCreative;->REQUIRES_TRANSPARENCY:Lcom/amazon/device/ads/AAXCreative;

    .line 15
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/amazon/device/ads/AAXCreative;

    sget-object v1, Lcom/amazon/device/ads/AAXCreative;->HTML:Lcom/amazon/device/ads/AAXCreative;

    aput-object v1, v0, v4

    sget-object v1, Lcom/amazon/device/ads/AAXCreative;->MRAID1:Lcom/amazon/device/ads/AAXCreative;

    aput-object v1, v0, v5

    sget-object v1, Lcom/amazon/device/ads/AAXCreative;->MRAID2:Lcom/amazon/device/ads/AAXCreative;

    aput-object v1, v0, v6

    sget-object v1, Lcom/amazon/device/ads/AAXCreative;->INTERSTITIAL:Lcom/amazon/device/ads/AAXCreative;

    aput-object v1, v0, v7

    sget-object v1, Lcom/amazon/device/ads/AAXCreative;->CAN_PLAY_AUDIO1:Lcom/amazon/device/ads/AAXCreative;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/amazon/device/ads/AAXCreative;->CAN_PLAY_AUDIO2:Lcom/amazon/device/ads/AAXCreative;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/amazon/device/ads/AAXCreative;->CAN_EXPAND1:Lcom/amazon/device/ads/AAXCreative;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/amazon/device/ads/AAXCreative;->CAN_EXPAND2:Lcom/amazon/device/ads/AAXCreative;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/amazon/device/ads/AAXCreative;->CAN_PLAY_VIDEO:Lcom/amazon/device/ads/AAXCreative;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/amazon/device/ads/AAXCreative;->VIDEO_INTERSTITIAL:Lcom/amazon/device/ads/AAXCreative;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/amazon/device/ads/AAXCreative;->REQUIRES_TRANSPARENCY:Lcom/amazon/device/ads/AAXCreative;

    aput-object v2, v0, v1

    sput-object v0, Lcom/amazon/device/ads/AAXCreative;->$VALUES:[Lcom/amazon/device/ads/AAXCreative;

    .line 31
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/amazon/device/ads/AAXCreative;->primaryCreativeTypes:Ljava/util/HashSet;

    .line 36
    sget-object v0, Lcom/amazon/device/ads/AAXCreative;->primaryCreativeTypes:Ljava/util/HashSet;

    sget-object v1, Lcom/amazon/device/ads/AAXCreative;->HTML:Lcom/amazon/device/ads/AAXCreative;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 37
    sget-object v0, Lcom/amazon/device/ads/AAXCreative;->primaryCreativeTypes:Ljava/util/HashSet;

    sget-object v1, Lcom/amazon/device/ads/AAXCreative;->MRAID1:Lcom/amazon/device/ads/AAXCreative;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 38
    sget-object v0, Lcom/amazon/device/ads/AAXCreative;->primaryCreativeTypes:Ljava/util/HashSet;

    sget-object v1, Lcom/amazon/device/ads/AAXCreative;->MRAID2:Lcom/amazon/device/ads/AAXCreative;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 39
    sget-object v0, Lcom/amazon/device/ads/AAXCreative;->primaryCreativeTypes:Ljava/util/HashSet;

    sget-object v1, Lcom/amazon/device/ads/AAXCreative;->INTERSTITIAL:Lcom/amazon/device/ads/AAXCreative;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 40
    sget-object v0, Lcom/amazon/device/ads/AAXCreative;->primaryCreativeTypes:Ljava/util/HashSet;

    sget-object v1, Lcom/amazon/device/ads/AAXCreative;->VIDEO_INTERSTITIAL:Lcom/amazon/device/ads/AAXCreative;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 41
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 45
    iput p3, p0, Lcom/amazon/device/ads/AAXCreative;->id:I

    .line 46
    return-void
.end method

.method public static containsPrimaryCreativeType(Ljava/util/Set;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/amazon/device/ads/AAXCreative;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 60
    sget-object v0, Lcom/amazon/device/ads/AAXCreative;->primaryCreativeTypes:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/ads/AAXCreative;

    .line 62
    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    const/4 v0, 0x1

    .line 67
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getCreativeType(I)Lcom/amazon/device/ads/AAXCreative;
    .locals 1

    .prologue
    .line 77
    sparse-switch p0, :sswitch_data_0

    .line 102
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 80
    :sswitch_0
    sget-object v0, Lcom/amazon/device/ads/AAXCreative;->HTML:Lcom/amazon/device/ads/AAXCreative;

    goto :goto_0

    .line 82
    :sswitch_1
    sget-object v0, Lcom/amazon/device/ads/AAXCreative;->MRAID1:Lcom/amazon/device/ads/AAXCreative;

    goto :goto_0

    .line 84
    :sswitch_2
    sget-object v0, Lcom/amazon/device/ads/AAXCreative;->MRAID2:Lcom/amazon/device/ads/AAXCreative;

    goto :goto_0

    .line 86
    :sswitch_3
    sget-object v0, Lcom/amazon/device/ads/AAXCreative;->INTERSTITIAL:Lcom/amazon/device/ads/AAXCreative;

    goto :goto_0

    .line 88
    :sswitch_4
    sget-object v0, Lcom/amazon/device/ads/AAXCreative;->VIDEO_INTERSTITIAL:Lcom/amazon/device/ads/AAXCreative;

    goto :goto_0

    .line 90
    :sswitch_5
    sget-object v0, Lcom/amazon/device/ads/AAXCreative;->CAN_EXPAND1:Lcom/amazon/device/ads/AAXCreative;

    goto :goto_0

    .line 92
    :sswitch_6
    sget-object v0, Lcom/amazon/device/ads/AAXCreative;->CAN_EXPAND2:Lcom/amazon/device/ads/AAXCreative;

    goto :goto_0

    .line 94
    :sswitch_7
    sget-object v0, Lcom/amazon/device/ads/AAXCreative;->CAN_PLAY_AUDIO1:Lcom/amazon/device/ads/AAXCreative;

    goto :goto_0

    .line 96
    :sswitch_8
    sget-object v0, Lcom/amazon/device/ads/AAXCreative;->CAN_PLAY_AUDIO2:Lcom/amazon/device/ads/AAXCreative;

    goto :goto_0

    .line 98
    :sswitch_9
    sget-object v0, Lcom/amazon/device/ads/AAXCreative;->CAN_PLAY_VIDEO:Lcom/amazon/device/ads/AAXCreative;

    goto :goto_0

    .line 100
    :sswitch_a
    sget-object v0, Lcom/amazon/device/ads/AAXCreative;->REQUIRES_TRANSPARENCY:Lcom/amazon/device/ads/AAXCreative;

    goto :goto_0

    .line 77
    :sswitch_data_0
    .sparse-switch
        0x3e9 -> :sswitch_7
        0x3ea -> :sswitch_8
        0x3eb -> :sswitch_5
        0x3ec -> :sswitch_6
        0x3ef -> :sswitch_0
        0x3f0 -> :sswitch_3
        0x3f6 -> :sswitch_9
        0x3f8 -> :sswitch_1
        0x3f9 -> :sswitch_2
        0x406 -> :sswitch_4
        0x407 -> :sswitch_a
    .end sparse-switch
.end method

.method static getTopCreative(Ljava/util/Set;)Lcom/amazon/device/ads/AAXCreative;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/amazon/device/ads/AAXCreative;",
            ">;)",
            "Lcom/amazon/device/ads/AAXCreative;"
        }
    .end annotation

    .prologue
    .line 113
    sget-object v0, Lcom/amazon/device/ads/AAXCreative;->MRAID2:Lcom/amazon/device/ads/AAXCreative;

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    sget-object v0, Lcom/amazon/device/ads/AAXCreative;->MRAID2:Lcom/amazon/device/ads/AAXCreative;

    .line 125
    :goto_0
    return-object v0

    .line 117
    :cond_0
    sget-object v0, Lcom/amazon/device/ads/AAXCreative;->MRAID1:Lcom/amazon/device/ads/AAXCreative;

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    sget-object v0, Lcom/amazon/device/ads/AAXCreative;->MRAID1:Lcom/amazon/device/ads/AAXCreative;

    goto :goto_0

    .line 121
    :cond_1
    sget-object v0, Lcom/amazon/device/ads/AAXCreative;->HTML:Lcom/amazon/device/ads/AAXCreative;

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 123
    sget-object v0, Lcom/amazon/device/ads/AAXCreative;->HTML:Lcom/amazon/device/ads/AAXCreative;

    goto :goto_0

    .line 125
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/device/ads/AAXCreative;
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/amazon/device/ads/AAXCreative;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/ads/AAXCreative;

    return-object v0
.end method

.method public static values()[Lcom/amazon/device/ads/AAXCreative;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/amazon/device/ads/AAXCreative;->$VALUES:[Lcom/amazon/device/ads/AAXCreative;

    invoke-virtual {v0}, [Lcom/amazon/device/ads/AAXCreative;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/device/ads/AAXCreative;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/amazon/device/ads/AAXCreative;->id:I

    return v0
.end method
