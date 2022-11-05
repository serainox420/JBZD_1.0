.class public final enum Lcom/mopub/common/LocationService$ValidLocationProvider;
.super Ljava/lang/Enum;
.source "LocationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/common/LocationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ValidLocationProvider"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mopub/common/LocationService$ValidLocationProvider;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum GPS:Lcom/mopub/common/LocationService$ValidLocationProvider;

.field public static final enum NETWORK:Lcom/mopub/common/LocationService$ValidLocationProvider;

.field private static final synthetic b:[Lcom/mopub/common/LocationService$ValidLocationProvider;


# instance fields
.field final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 51
    new-instance v0, Lcom/mopub/common/LocationService$ValidLocationProvider;

    const-string v1, "NETWORK"

    const-string v2, "network"

    invoke-direct {v0, v1, v3, v2}, Lcom/mopub/common/LocationService$ValidLocationProvider;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/LocationService$ValidLocationProvider;->NETWORK:Lcom/mopub/common/LocationService$ValidLocationProvider;

    .line 52
    new-instance v0, Lcom/mopub/common/LocationService$ValidLocationProvider;

    const-string v1, "GPS"

    const-string v2, "gps"

    invoke-direct {v0, v1, v4, v2}, Lcom/mopub/common/LocationService$ValidLocationProvider;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/LocationService$ValidLocationProvider;->GPS:Lcom/mopub/common/LocationService$ValidLocationProvider;

    .line 50
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/mopub/common/LocationService$ValidLocationProvider;

    sget-object v1, Lcom/mopub/common/LocationService$ValidLocationProvider;->NETWORK:Lcom/mopub/common/LocationService$ValidLocationProvider;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mopub/common/LocationService$ValidLocationProvider;->GPS:Lcom/mopub/common/LocationService$ValidLocationProvider;

    aput-object v1, v0, v4

    sput-object v0, Lcom/mopub/common/LocationService$ValidLocationProvider;->b:[Lcom/mopub/common/LocationService$ValidLocationProvider;

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
    .line 56
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 57
    iput-object p3, p0, Lcom/mopub/common/LocationService$ValidLocationProvider;->a:Ljava/lang/String;

    .line 58
    return-void
.end method

.method private a(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 66
    sget-object v1, Lcom/mopub/common/LocationService$1;->a:[I

    invoke-virtual {p0}, Lcom/mopub/common/LocationService$ValidLocationProvider;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 73
    :cond_0
    :goto_0
    return v0

    .line 68
    :pswitch_0
    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p1, v1}, Lcom/mopub/common/util/DeviceUtils;->isPermissionGranted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {p1, v1}, Lcom/mopub/common/util/DeviceUtils;->isPermissionGranted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 71
    :pswitch_1
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p1, v0}, Lcom/mopub/common/util/DeviceUtils;->isPermissionGranted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 66
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Lcom/mopub/common/LocationService$ValidLocationProvider;Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/mopub/common/LocationService$ValidLocationProvider;->a(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mopub/common/LocationService$ValidLocationProvider;
    .locals 1

    .prologue
    .line 50
    const-class v0, Lcom/mopub/common/LocationService$ValidLocationProvider;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mopub/common/LocationService$ValidLocationProvider;

    return-object v0
.end method

.method public static values()[Lcom/mopub/common/LocationService$ValidLocationProvider;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/mopub/common/LocationService$ValidLocationProvider;->b:[Lcom/mopub/common/LocationService$ValidLocationProvider;

    invoke-virtual {v0}, [Lcom/mopub/common/LocationService$ValidLocationProvider;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mopub/common/LocationService$ValidLocationProvider;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/mopub/common/LocationService$ValidLocationProvider;->a:Ljava/lang/String;

    return-object v0
.end method
