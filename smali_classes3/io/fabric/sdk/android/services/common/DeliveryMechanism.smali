.class public final enum Lio/fabric/sdk/android/services/common/DeliveryMechanism;
.super Ljava/lang/Enum;
.source "DeliveryMechanism.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lio/fabric/sdk/android/services/common/DeliveryMechanism;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum APP_STORE:Lio/fabric/sdk/android/services/common/DeliveryMechanism;

.field public static final BETA_APP_PACKAGE_NAME:Ljava/lang/String; = "io.crash.air"

.field public static final enum DEVELOPER:Lio/fabric/sdk/android/services/common/DeliveryMechanism;

.field public static final enum TEST_DISTRIBUTION:Lio/fabric/sdk/android/services/common/DeliveryMechanism;

.field public static final enum USER_SIDELOAD:Lio/fabric/sdk/android/services/common/DeliveryMechanism;

.field private static final synthetic b:[Lio/fabric/sdk/android/services/common/DeliveryMechanism;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 27
    new-instance v0, Lio/fabric/sdk/android/services/common/DeliveryMechanism;

    const-string v1, "DEVELOPER"

    invoke-direct {v0, v1, v5, v2}, Lio/fabric/sdk/android/services/common/DeliveryMechanism;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/fabric/sdk/android/services/common/DeliveryMechanism;->DEVELOPER:Lio/fabric/sdk/android/services/common/DeliveryMechanism;

    new-instance v0, Lio/fabric/sdk/android/services/common/DeliveryMechanism;

    const-string v1, "USER_SIDELOAD"

    invoke-direct {v0, v1, v2, v3}, Lio/fabric/sdk/android/services/common/DeliveryMechanism;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/fabric/sdk/android/services/common/DeliveryMechanism;->USER_SIDELOAD:Lio/fabric/sdk/android/services/common/DeliveryMechanism;

    new-instance v0, Lio/fabric/sdk/android/services/common/DeliveryMechanism;

    const-string v1, "TEST_DISTRIBUTION"

    invoke-direct {v0, v1, v3, v4}, Lio/fabric/sdk/android/services/common/DeliveryMechanism;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/fabric/sdk/android/services/common/DeliveryMechanism;->TEST_DISTRIBUTION:Lio/fabric/sdk/android/services/common/DeliveryMechanism;

    new-instance v0, Lio/fabric/sdk/android/services/common/DeliveryMechanism;

    const-string v1, "APP_STORE"

    invoke-direct {v0, v1, v4, v6}, Lio/fabric/sdk/android/services/common/DeliveryMechanism;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/fabric/sdk/android/services/common/DeliveryMechanism;->APP_STORE:Lio/fabric/sdk/android/services/common/DeliveryMechanism;

    .line 25
    new-array v0, v6, [Lio/fabric/sdk/android/services/common/DeliveryMechanism;

    sget-object v1, Lio/fabric/sdk/android/services/common/DeliveryMechanism;->DEVELOPER:Lio/fabric/sdk/android/services/common/DeliveryMechanism;

    aput-object v1, v0, v5

    sget-object v1, Lio/fabric/sdk/android/services/common/DeliveryMechanism;->USER_SIDELOAD:Lio/fabric/sdk/android/services/common/DeliveryMechanism;

    aput-object v1, v0, v2

    sget-object v1, Lio/fabric/sdk/android/services/common/DeliveryMechanism;->TEST_DISTRIBUTION:Lio/fabric/sdk/android/services/common/DeliveryMechanism;

    aput-object v1, v0, v3

    sget-object v1, Lio/fabric/sdk/android/services/common/DeliveryMechanism;->APP_STORE:Lio/fabric/sdk/android/services/common/DeliveryMechanism;

    aput-object v1, v0, v4

    sput-object v0, Lio/fabric/sdk/android/services/common/DeliveryMechanism;->b:[Lio/fabric/sdk/android/services/common/DeliveryMechanism;

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
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 34
    iput p3, p0, Lio/fabric/sdk/android/services/common/DeliveryMechanism;->a:I

    .line 35
    return-void
.end method

.method public static determineFrom(Ljava/lang/String;)Lio/fabric/sdk/android/services/common/DeliveryMechanism;
    .locals 1

    .prologue
    .line 51
    const-string v0, "io.crash.air"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    sget-object v0, Lio/fabric/sdk/android/services/common/DeliveryMechanism;->TEST_DISTRIBUTION:Lio/fabric/sdk/android/services/common/DeliveryMechanism;

    .line 56
    :goto_0
    return-object v0

    .line 53
    :cond_0
    if-eqz p0, :cond_1

    .line 54
    sget-object v0, Lio/fabric/sdk/android/services/common/DeliveryMechanism;->APP_STORE:Lio/fabric/sdk/android/services/common/DeliveryMechanism;

    goto :goto_0

    .line 56
    :cond_1
    sget-object v0, Lio/fabric/sdk/android/services/common/DeliveryMechanism;->DEVELOPER:Lio/fabric/sdk/android/services/common/DeliveryMechanism;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/fabric/sdk/android/services/common/DeliveryMechanism;
    .locals 1

    .prologue
    .line 25
    const-class v0, Lio/fabric/sdk/android/services/common/DeliveryMechanism;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/fabric/sdk/android/services/common/DeliveryMechanism;

    return-object v0
.end method

.method public static values()[Lio/fabric/sdk/android/services/common/DeliveryMechanism;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lio/fabric/sdk/android/services/common/DeliveryMechanism;->b:[Lio/fabric/sdk/android/services/common/DeliveryMechanism;

    invoke-virtual {v0}, [Lio/fabric/sdk/android/services/common/DeliveryMechanism;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/fabric/sdk/android/services/common/DeliveryMechanism;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lio/fabric/sdk/android/services/common/DeliveryMechanism;->a:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lio/fabric/sdk/android/services/common/DeliveryMechanism;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
