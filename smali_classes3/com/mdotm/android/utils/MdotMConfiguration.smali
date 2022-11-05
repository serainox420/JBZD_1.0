.class public Lcom/mdotm/android/utils/MdotMConfiguration;
.super Ljava/lang/Object;
.source "MdotMConfiguration.java"


# static fields
.field public static final APP_VERSION:Ljava/lang/String; = "3.6.2"

.field public static final DEV_MODE:Z = false

.field public static LOG_LEVEL:I = 0x0

.field public static final MDOTM_BASE_URL:Ljava/lang/String; = "https://secure.mdotm.com/ads/feed.php"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x4

    sput v0, Lcom/mdotm/android/utils/MdotMConfiguration;->LOG_LEVEL:I

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
