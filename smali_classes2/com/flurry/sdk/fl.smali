.class public final Lcom/flurry/sdk/fl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 29
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "vm"

    aput-object v1, v0, v3

    const-string v1, "vsa"

    aput-object v1, v0, v4

    const-string v1, "va"

    aput-object v1, v0, v5

    const-string v1, "vpw"

    aput-object v1, v0, v6

    const-string v1, "vph"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "ve"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "vt"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "vpi"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "api"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "atv"

    aput-object v2, v0, v1

    sput-object v0, Lcom/flurry/sdk/fl;->a:[Ljava/lang/String;

    .line 42
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "$(V_MUTED)"

    aput-object v1, v0, v3

    const-string v1, "$(V_SKIP_AVAIL)"

    aput-object v1, v0, v4

    const-string v1, "$(V_AUTOPLAYED)"

    aput-object v1, v0, v5

    const-string v1, "$(V_PLAYER_WIDTH)"

    aput-object v1, v0, v6

    const-string v1, "$(V_PLAYER_HEIGHT)"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "$(V_EXPANDED)"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "$(V_VIEW_TYPE)"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "$(V_VIEW_INFO)"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "$(V_AUD_INFO)"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "$(V_AUD_TIME_INVIEW_100)"

    aput-object v2, v0, v1

    sput-object v0, Lcom/flurry/sdk/fl;->b:[Ljava/lang/String;

    return-void
.end method
