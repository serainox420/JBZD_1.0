.class public final Lcom/google/android/gms/cast/framework/CastState;
.super Ljava/lang/Object;


# static fields
.field public static final CONNECTED:I = 0x4

.field public static final CONNECTING:I = 0x3

.field public static final NOT_CONNECTED:I = 0x2

.field public static final NO_DEVICES_AVAILABLE:I = 0x1


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 5

    packed-switch p0, :pswitch_data_0

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v1, "UNKNOWN_STATE(%d)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "NO_DEVICES_AVAILABLE"

    goto :goto_0

    :pswitch_1
    const-string v0, "NOT_CONNECTED"

    goto :goto_0

    :pswitch_2
    const-string v0, "CONNECTING"

    goto :goto_0

    :pswitch_3
    const-string v0, "CONNECTED"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
