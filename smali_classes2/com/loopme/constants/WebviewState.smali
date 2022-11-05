.class public Lcom/loopme/constants/WebviewState;
.super Ljava/lang/Object;
.source "WebviewState.java"


# static fields
.field public static final CLOSED:I = 0x3

.field public static final HIDDEN:I = 0x2

.field public static final VISIBLE:I = 0x1


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    packed-switch p0, :pswitch_data_0

    .line 23
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 14
    :pswitch_0
    const-string v0, "VISIBLE"

    goto :goto_0

    .line 17
    :pswitch_1
    const-string v0, "HIDDEN"

    goto :goto_0

    .line 20
    :pswitch_2
    const-string v0, "CLOSED"

    goto :goto_0

    .line 12
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
