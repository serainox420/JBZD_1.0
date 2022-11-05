.class public final enum Lcom/smaato/soma/bannerutilities/constant/BannerStatus;
.super Ljava/lang/Enum;
.source "BannerStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/smaato/soma/bannerutilities/constant/BannerStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ERROR:Lcom/smaato/soma/bannerutilities/constant/BannerStatus;

.field public static final enum MEDIATION:Lcom/smaato/soma/bannerutilities/constant/BannerStatus;

.field public static final enum SUCCESS:Lcom/smaato/soma/bannerutilities/constant/BannerStatus;

.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static final synthetic c:[Lcom/smaato/soma/bannerutilities/constant/BannerStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 20
    new-instance v0, Lcom/smaato/soma/bannerutilities/constant/BannerStatus;

    const-string v1, "MEDIATION"

    invoke-direct {v0, v1, v2}, Lcom/smaato/soma/bannerutilities/constant/BannerStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smaato/soma/bannerutilities/constant/BannerStatus;->MEDIATION:Lcom/smaato/soma/bannerutilities/constant/BannerStatus;

    .line 24
    new-instance v0, Lcom/smaato/soma/bannerutilities/constant/BannerStatus;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v3}, Lcom/smaato/soma/bannerutilities/constant/BannerStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smaato/soma/bannerutilities/constant/BannerStatus;->SUCCESS:Lcom/smaato/soma/bannerutilities/constant/BannerStatus;

    .line 28
    new-instance v0, Lcom/smaato/soma/bannerutilities/constant/BannerStatus;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v4}, Lcom/smaato/soma/bannerutilities/constant/BannerStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smaato/soma/bannerutilities/constant/BannerStatus;->ERROR:Lcom/smaato/soma/bannerutilities/constant/BannerStatus;

    .line 15
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/smaato/soma/bannerutilities/constant/BannerStatus;

    sget-object v1, Lcom/smaato/soma/bannerutilities/constant/BannerStatus;->MEDIATION:Lcom/smaato/soma/bannerutilities/constant/BannerStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/smaato/soma/bannerutilities/constant/BannerStatus;->SUCCESS:Lcom/smaato/soma/bannerutilities/constant/BannerStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/smaato/soma/bannerutilities/constant/BannerStatus;->ERROR:Lcom/smaato/soma/bannerutilities/constant/BannerStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/smaato/soma/bannerutilities/constant/BannerStatus;->c:[Lcom/smaato/soma/bannerutilities/constant/BannerStatus;

    .line 32
    const-string v0, "SUCCESS"

    sput-object v0, Lcom/smaato/soma/bannerutilities/constant/BannerStatus;->a:Ljava/lang/String;

    .line 36
    const-string v0, "ERROR"

    sput-object v0, Lcom/smaato/soma/bannerutilities/constant/BannerStatus;->b:Ljava/lang/String;

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

.method public static getStringForValue(Lcom/smaato/soma/bannerutilities/constant/BannerStatus;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/UnknownBannerStatusException;
        }
    .end annotation

    .prologue
    .line 47
    :try_start_0
    sget-object v0, Lcom/smaato/soma/bannerutilities/constant/BannerStatus;->SUCCESS:Lcom/smaato/soma/bannerutilities/constant/BannerStatus;

    if-ne p0, v0, :cond_0

    .line 48
    sget-object v0, Lcom/smaato/soma/bannerutilities/constant/BannerStatus;->a:Ljava/lang/String;

    .line 52
    :goto_0
    return-object v0

    .line 49
    :cond_0
    sget-object v0, Lcom/smaato/soma/bannerutilities/constant/BannerStatus;->ERROR:Lcom/smaato/soma/bannerutilities/constant/BannerStatus;

    if-ne p0, v0, :cond_1

    .line 50
    sget-object v0, Lcom/smaato/soma/bannerutilities/constant/BannerStatus;->b:Ljava/lang/String;

    goto :goto_0

    .line 52
    :cond_1
    const-string v0, ""
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 53
    :catch_0
    move-exception v0

    .line 54
    throw v0

    .line 55
    :catch_1
    move-exception v0

    .line 56
    new-instance v1, Lcom/smaato/soma/exception/UnknownBannerStatusException;

    invoke-direct {v1, v0}, Lcom/smaato/soma/exception/UnknownBannerStatusException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getValueForString(Ljava/lang/String;)Lcom/smaato/soma/bannerutilities/constant/BannerStatus;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/UnrecognizedBannerStatusValue;
        }
    .end annotation

    .prologue
    .line 69
    :try_start_0
    sget-object v0, Lcom/smaato/soma/bannerutilities/constant/BannerStatus;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    sget-object v0, Lcom/smaato/soma/bannerutilities/constant/BannerStatus;->SUCCESS:Lcom/smaato/soma/bannerutilities/constant/BannerStatus;

    .line 74
    :goto_0
    return-object v0

    .line 71
    :cond_0
    sget-object v0, Lcom/smaato/soma/bannerutilities/constant/BannerStatus;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    sget-object v0, Lcom/smaato/soma/bannerutilities/constant/BannerStatus;->ERROR:Lcom/smaato/soma/bannerutilities/constant/BannerStatus;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 74
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 75
    :catch_0
    move-exception v0

    .line 76
    throw v0

    .line 77
    :catch_1
    move-exception v0

    .line 78
    new-instance v1, Lcom/smaato/soma/exception/UnrecognizedBannerStatusValue;

    invoke-direct {v1, v0}, Lcom/smaato/soma/exception/UnrecognizedBannerStatusValue;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/smaato/soma/bannerutilities/constant/BannerStatus;
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/smaato/soma/bannerutilities/constant/BannerStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/smaato/soma/bannerutilities/constant/BannerStatus;

    return-object v0
.end method

.method public static values()[Lcom/smaato/soma/bannerutilities/constant/BannerStatus;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/smaato/soma/bannerutilities/constant/BannerStatus;->c:[Lcom/smaato/soma/bannerutilities/constant/BannerStatus;

    invoke-virtual {v0}, [Lcom/smaato/soma/bannerutilities/constant/BannerStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/smaato/soma/bannerutilities/constant/BannerStatus;

    return-object v0
.end method
