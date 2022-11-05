.class public final enum Lcom/flurry/sdk/mj$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/mj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/flurry/sdk/mj$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/flurry/sdk/mj$b;

.field public static final enum b:Lcom/flurry/sdk/mj$b;

.field public static final enum c:Lcom/flurry/sdk/mj$b;

.field public static final enum d:Lcom/flurry/sdk/mj$b;

.field private static final synthetic f:[Lcom/flurry/sdk/mj$b;


# instance fields
.field public final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 52
    new-instance v0, Lcom/flurry/sdk/mj$b;

    const-string v1, "BEACON_ERROR_CODE"

    const-string v2, "beaconErrorCode"

    invoke-direct {v0, v1, v3, v2}, Lcom/flurry/sdk/mj$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/flurry/sdk/mj$b;->a:Lcom/flurry/sdk/mj$b;

    .line 53
    new-instance v0, Lcom/flurry/sdk/mj$b;

    const-string v1, "DELTA_ON_CLICK"

    const-string v2, "deltaOnClick"

    invoke-direct {v0, v1, v4, v2}, Lcom/flurry/sdk/mj$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/flurry/sdk/mj$b;->b:Lcom/flurry/sdk/mj$b;

    .line 54
    new-instance v0, Lcom/flurry/sdk/mj$b;

    const-string v1, "DIALER_URL"

    const-string v2, "dialerUrl"

    invoke-direct {v0, v1, v5, v2}, Lcom/flurry/sdk/mj$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/flurry/sdk/mj$b;->c:Lcom/flurry/sdk/mj$b;

    .line 55
    new-instance v0, Lcom/flurry/sdk/mj$b;

    const-string v1, "URL"

    const-string v2, "url"

    invoke-direct {v0, v1, v6, v2}, Lcom/flurry/sdk/mj$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/flurry/sdk/mj$b;->d:Lcom/flurry/sdk/mj$b;

    .line 51
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/flurry/sdk/mj$b;

    sget-object v1, Lcom/flurry/sdk/mj$b;->a:Lcom/flurry/sdk/mj$b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/flurry/sdk/mj$b;->b:Lcom/flurry/sdk/mj$b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/flurry/sdk/mj$b;->c:Lcom/flurry/sdk/mj$b;

    aput-object v1, v0, v5

    sget-object v1, Lcom/flurry/sdk/mj$b;->d:Lcom/flurry/sdk/mj$b;

    aput-object v1, v0, v6

    sput-object v0, Lcom/flurry/sdk/mj$b;->f:[Lcom/flurry/sdk/mj$b;

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
    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 59
    iput-object p3, p0, Lcom/flurry/sdk/mj$b;->e:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flurry/sdk/mj$b;
    .locals 1

    .prologue
    .line 51
    const-class v0, Lcom/flurry/sdk/mj$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/mj$b;

    return-object v0
.end method

.method public static values()[Lcom/flurry/sdk/mj$b;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/flurry/sdk/mj$b;->f:[Lcom/flurry/sdk/mj$b;

    invoke-virtual {v0}, [Lcom/flurry/sdk/mj$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/sdk/mj$b;

    return-object v0
.end method
