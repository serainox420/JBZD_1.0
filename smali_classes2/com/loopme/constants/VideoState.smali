.class public Lcom/loopme/constants/VideoState;
.super Ljava/lang/Object;
.source "VideoState.java"


# static fields
.field public static final BROKEN:I = 0x5

.field public static final BUFFERING:I = 0x6

.field public static final COMPLETE:I = 0x4

.field public static final IDLE:I = 0x0

.field public static final PAUSED:I = 0x3

.field public static final PLAYING:I = 0x2

.field public static final READY:I = 0x1


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    packed-switch p0, :pswitch_data_0

    .line 37
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 16
    :pswitch_0
    const-string v0, "IDLE"

    goto :goto_0

    .line 19
    :pswitch_1
    const-string v0, "BROKEN"

    goto :goto_0

    .line 22
    :pswitch_2
    const-string v0, "READY"

    goto :goto_0

    .line 25
    :pswitch_3
    const-string v0, "PLAYING"

    goto :goto_0

    .line 28
    :pswitch_4
    const-string v0, "PAUSED"

    goto :goto_0

    .line 31
    :pswitch_5
    const-string v0, "COMPLETE"

    goto :goto_0

    .line 34
    :pswitch_6
    const-string v0, "BUFFERING"

    goto :goto_0

    .line 14
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_6
    .end packed-switch
.end method
