.class public final enum Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;
.super Ljava/lang/Enum;
.source "PubMaticConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AD_REQUEST_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;

.field public static final enum MOCEAN_BANNER:Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;

.field public static final enum MOCEAN_INTERSTITIAL:Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;

.field public static final enum MOCEAN_NATIVE:Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;

.field public static final enum MOCEAN_PASSBACK_VIDEO:Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;

.field public static final enum MOCEAN_PRIMARY_VIDEO:Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;

.field public static final enum MOCEAN_RICH_MEDIA:Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;

.field public static final enum MOCEAN_TRACKER:Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;

.field public static final enum MOCEAN_WRAPPER_VIDEO:Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;

.field public static final enum PHOENIX_BANNER:Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;

.field public static final enum PHOENIX_INTERSTITIAL:Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;

.field public static final enum PHOENIX_NATIVE:Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;

.field public static final enum PHOENIX_PASSBACK_VIDEO:Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;

.field public static final enum PHOENIX_PRIMARY_VIDEO:Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;

.field public static final enum PHOENIX_RICH_MEDIA:Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;

.field public static final enum PHOENIX_TRACKER:Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;

.field public static final enum PHOENIX_WRAPPER_VIDEO:Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;

.field public static final enum PUB_BANNER:Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;

.field public static final enum PUB_INTERSTITIAL:Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;

.field public static final enum PUB_NATIVE:Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;

.field public static final enum PUB_PASSBACK_VIDEO:Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;

.field public static final enum PUB_PRIMARY_VIDEO:Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;

.field public static final enum PUB_RICH_MEDIA:Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;

.field public static final enum PUB_TRACKER:Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;

.field public static final enum PUB_WRAPPER_VIDEO:Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 17
    new-instance v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;

    const-string v1, "PUB_BANNER"

    invoke-direct {v0, v1, v3}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;->PUB_BANNER:Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;

    .line 18
    new-instance v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;

    const-string v1, "PUB_NATIVE"

    invoke-direct {v0, v1, v4}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;->PUB_NATIVE:Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;

    .line 19
    new-instance v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;

    const-string v1, "PUB_INTERSTITIAL"

    invoke-direct {v0, v1, v5}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;->PUB_INTERSTITIAL:Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;

    .line 20
    new-instance v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;

    const-string v1, "PUB_RICH_MEDIA"

    invoke-direct {v0, v1, v6}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;->PUB_RICH_MEDIA:Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;

    .line 21
    new-instance v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;

    const-string v1, "PUB_PRIMARY_VIDEO"

    invoke-direct {v0, v1, v7}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;->PUB_PRIMARY_VIDEO:Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;

    .line 22
    new-instance v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;

    const-string v1, "PUB_WRAPPER_VIDEO"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;->PUB_WRAPPER_VIDEO:Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;

    .line 23
    new-instance v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;

    const-string v1, "PUB_PASSBACK_VIDEO"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;->PUB_PASSBACK_VIDEO:Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;

    .line 24
    new-instance v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;

    const-string v1, "PUB_TRACKER"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;->PUB_TRACKER:Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;

    .line 26
    new-instance v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;

    const-string v1, "MOCEAN_BANNER"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;->MOCEAN_BANNER:Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;

    .line 27
    new-instance v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;

    const-string v1, "MOCEAN_NATIVE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;->MOCEAN_NATIVE:Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;

    .line 28
    new-instance v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;

    const-string v1, "MOCEAN_INTERSTITIAL"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;->MOCEAN_INTERSTITIAL:Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;

    .line 29
    new-instance v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;

    const-string v1, "MOCEAN_RICH_MEDIA"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;->MOCEAN_RICH_MEDIA:Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;

    .line 30
    new-instance v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;

    const-string v1, "MOCEAN_PRIMARY_VIDEO"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;->MOCEAN_PRIMARY_VIDEO:Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;

    .line 31
    new-instance v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;

    const-string v1, "MOCEAN_WRAPPER_VIDEO"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;->MOCEAN_WRAPPER_VIDEO:Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;

    .line 32
    new-instance v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;

    const-string v1, "MOCEAN_PASSBACK_VIDEO"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;->MOCEAN_PASSBACK_VIDEO:Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;

    .line 33
    new-instance v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;

    const-string v1, "MOCEAN_TRACKER"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;->MOCEAN_TRACKER:Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;

    .line 35
    new-instance v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;

    const-string v1, "PHOENIX_BANNER"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;->PHOENIX_BANNER:Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;

    .line 36
    new-instance v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;

    const-string v1, "PHOENIX_NATIVE"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;->PHOENIX_NATIVE:Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;

    .line 37
    new-instance v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;

    const-string v1, "PHOENIX_INTERSTITIAL"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;->PHOENIX_INTERSTITIAL:Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;

    .line 38
    new-instance v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;

    const-string v1, "PHOENIX_RICH_MEDIA"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;->PHOENIX_RICH_MEDIA:Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;

    .line 39
    new-instance v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;

    const-string v1, "PHOENIX_PRIMARY_VIDEO"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;->PHOENIX_PRIMARY_VIDEO:Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;

    .line 40
    new-instance v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;

    const-string v1, "PHOENIX_WRAPPER_VIDEO"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;->PHOENIX_WRAPPER_VIDEO:Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;

    .line 41
    new-instance v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;

    const-string v1, "PHOENIX_PASSBACK_VIDEO"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;->PHOENIX_PASSBACK_VIDEO:Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;

    .line 42
    new-instance v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;

    const-string v1, "PHOENIX_TRACKER"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;->PHOENIX_TRACKER:Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;

    .line 15
    const/16 v0, 0x18

    new-array v0, v0, [Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;

    sget-object v1, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;->PUB_BANNER:Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;->PUB_NATIVE:Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;->PUB_INTERSTITIAL:Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;->PUB_RICH_MEDIA:Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;

    aput-object v1, v0, v6

    sget-object v1, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;->PUB_PRIMARY_VIDEO:Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;->PUB_WRAPPER_VIDEO:Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;->PUB_PASSBACK_VIDEO:Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;->PUB_TRACKER:Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;->MOCEAN_BANNER:Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;->MOCEAN_NATIVE:Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;->MOCEAN_INTERSTITIAL:Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;->MOCEAN_RICH_MEDIA:Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;->MOCEAN_PRIMARY_VIDEO:Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;->MOCEAN_WRAPPER_VIDEO:Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;->MOCEAN_PASSBACK_VIDEO:Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;->MOCEAN_TRACKER:Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;->PHOENIX_BANNER:Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;->PHOENIX_NATIVE:Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;->PHOENIX_INTERSTITIAL:Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;->PHOENIX_RICH_MEDIA:Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;->PHOENIX_PRIMARY_VIDEO:Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;->PHOENIX_WRAPPER_VIDEO:Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;->PHOENIX_PASSBACK_VIDEO:Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;->PHOENIX_TRACKER:Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;

    aput-object v2, v0, v1

    sput-object v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;->$VALUES:[Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;

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
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;->$VALUES:[Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;

    invoke-virtual {v0}, [Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pubmatic/sdk/common/pubmatic/PubMaticConstants$AD_REQUEST_TYPE;

    return-object v0
.end method
