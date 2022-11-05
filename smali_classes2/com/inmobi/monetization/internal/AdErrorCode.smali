.class public final enum Lcom/inmobi/monetization/internal/AdErrorCode;
.super Ljava/lang/Enum;
.source "AdErrorCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/inmobi/monetization/internal/AdErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ADREQUEST_CANCELLED:Lcom/inmobi/monetization/internal/AdErrorCode;

.field public static final enum AD_CLICK_IN_PROGRESS:Lcom/inmobi/monetization/internal/AdErrorCode;

.field public static final enum AD_DOWNLOAD_IN_PROGRESS:Lcom/inmobi/monetization/internal/AdErrorCode;

.field public static final enum AD_RENDERING_TIMEOUT:Lcom/inmobi/monetization/internal/AdErrorCode;

.field public static final enum DO_MONETIZE:Lcom/inmobi/monetization/internal/AdErrorCode;

.field public static final enum DO_NOTHING:Lcom/inmobi/monetization/internal/AdErrorCode;

.field public static final enum INTERNAL_ERROR:Lcom/inmobi/monetization/internal/AdErrorCode;

.field public static final enum INVALID_APP_ID:Lcom/inmobi/monetization/internal/AdErrorCode;

.field public static final enum INVALID_REQUEST:Lcom/inmobi/monetization/internal/AdErrorCode;

.field public static final enum NETWORK_ERROR:Lcom/inmobi/monetization/internal/AdErrorCode;

.field public static final enum NO_FILL:Lcom/inmobi/monetization/internal/AdErrorCode;

.field private static final synthetic b:[Lcom/inmobi/monetization/internal/AdErrorCode;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 9
    new-instance v0, Lcom/inmobi/monetization/internal/AdErrorCode;

    const-string v1, "INVALID_REQUEST"

    const-string v2, "Invalid ad request"

    invoke-direct {v0, v1, v4, v2}, Lcom/inmobi/monetization/internal/AdErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/inmobi/monetization/internal/AdErrorCode;->INVALID_REQUEST:Lcom/inmobi/monetization/internal/AdErrorCode;

    .line 13
    new-instance v0, Lcom/inmobi/monetization/internal/AdErrorCode;

    const-string v1, "INTERNAL_ERROR"

    const-string v2, "An error occurred while fetching the ad"

    invoke-direct {v0, v1, v5, v2}, Lcom/inmobi/monetization/internal/AdErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/inmobi/monetization/internal/AdErrorCode;->INTERNAL_ERROR:Lcom/inmobi/monetization/internal/AdErrorCode;

    .line 18
    new-instance v0, Lcom/inmobi/monetization/internal/AdErrorCode;

    const-string v1, "NO_FILL"

    const-string v2, "The ad request was successful, but no ad was returned"

    invoke-direct {v0, v1, v6, v2}, Lcom/inmobi/monetization/internal/AdErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/inmobi/monetization/internal/AdErrorCode;->NO_FILL:Lcom/inmobi/monetization/internal/AdErrorCode;

    .line 19
    new-instance v0, Lcom/inmobi/monetization/internal/AdErrorCode;

    const-string v1, "AD_CLICK_IN_PROGRESS"

    const-string v2, "Ad click is in progress, cannot load new ad"

    invoke-direct {v0, v1, v7, v2}, Lcom/inmobi/monetization/internal/AdErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/inmobi/monetization/internal/AdErrorCode;->AD_CLICK_IN_PROGRESS:Lcom/inmobi/monetization/internal/AdErrorCode;

    .line 20
    new-instance v0, Lcom/inmobi/monetization/internal/AdErrorCode;

    const-string v1, "AD_DOWNLOAD_IN_PROGRESS"

    const-string v2, "Ad download is in progress, cannot load new ad"

    invoke-direct {v0, v1, v8, v2}, Lcom/inmobi/monetization/internal/AdErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/inmobi/monetization/internal/AdErrorCode;->AD_DOWNLOAD_IN_PROGRESS:Lcom/inmobi/monetization/internal/AdErrorCode;

    .line 21
    new-instance v0, Lcom/inmobi/monetization/internal/AdErrorCode;

    const-string v1, "INVALID_APP_ID"

    const/4 v2, 0x5

    const-string v3, "Invalid App Id"

    invoke-direct {v0, v1, v2, v3}, Lcom/inmobi/monetization/internal/AdErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/inmobi/monetization/internal/AdErrorCode;->INVALID_APP_ID:Lcom/inmobi/monetization/internal/AdErrorCode;

    .line 22
    new-instance v0, Lcom/inmobi/monetization/internal/AdErrorCode;

    const-string v1, "ADREQUEST_CANCELLED"

    const/4 v2, 0x6

    const-string v3, "Stop loading invoked on the ad"

    invoke-direct {v0, v1, v2, v3}, Lcom/inmobi/monetization/internal/AdErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/inmobi/monetization/internal/AdErrorCode;->ADREQUEST_CANCELLED:Lcom/inmobi/monetization/internal/AdErrorCode;

    .line 23
    new-instance v0, Lcom/inmobi/monetization/internal/AdErrorCode;

    const-string v1, "AD_RENDERING_TIMEOUT"

    const/4 v2, 0x7

    const-string v3, "Failed to render ad"

    invoke-direct {v0, v1, v2, v3}, Lcom/inmobi/monetization/internal/AdErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/inmobi/monetization/internal/AdErrorCode;->AD_RENDERING_TIMEOUT:Lcom/inmobi/monetization/internal/AdErrorCode;

    .line 24
    new-instance v0, Lcom/inmobi/monetization/internal/AdErrorCode;

    const-string v1, "DO_MONETIZE"

    const/16 v2, 0x8

    const-string v3, "Please load a mediation network"

    invoke-direct {v0, v1, v2, v3}, Lcom/inmobi/monetization/internal/AdErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/inmobi/monetization/internal/AdErrorCode;->DO_MONETIZE:Lcom/inmobi/monetization/internal/AdErrorCode;

    .line 25
    new-instance v0, Lcom/inmobi/monetization/internal/AdErrorCode;

    const-string v1, "DO_NOTHING"

    const/16 v2, 0x9

    const-string v3, "No Ads"

    invoke-direct {v0, v1, v2, v3}, Lcom/inmobi/monetization/internal/AdErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/inmobi/monetization/internal/AdErrorCode;->DO_NOTHING:Lcom/inmobi/monetization/internal/AdErrorCode;

    .line 30
    new-instance v0, Lcom/inmobi/monetization/internal/AdErrorCode;

    const-string v1, "NETWORK_ERROR"

    const/16 v2, 0xa

    const-string v3, "Ad network failed to retrieve ad"

    invoke-direct {v0, v1, v2, v3}, Lcom/inmobi/monetization/internal/AdErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/inmobi/monetization/internal/AdErrorCode;->NETWORK_ERROR:Lcom/inmobi/monetization/internal/AdErrorCode;

    .line 5
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/inmobi/monetization/internal/AdErrorCode;

    sget-object v1, Lcom/inmobi/monetization/internal/AdErrorCode;->INVALID_REQUEST:Lcom/inmobi/monetization/internal/AdErrorCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/inmobi/monetization/internal/AdErrorCode;->INTERNAL_ERROR:Lcom/inmobi/monetization/internal/AdErrorCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/inmobi/monetization/internal/AdErrorCode;->NO_FILL:Lcom/inmobi/monetization/internal/AdErrorCode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/inmobi/monetization/internal/AdErrorCode;->AD_CLICK_IN_PROGRESS:Lcom/inmobi/monetization/internal/AdErrorCode;

    aput-object v1, v0, v7

    sget-object v1, Lcom/inmobi/monetization/internal/AdErrorCode;->AD_DOWNLOAD_IN_PROGRESS:Lcom/inmobi/monetization/internal/AdErrorCode;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/inmobi/monetization/internal/AdErrorCode;->INVALID_APP_ID:Lcom/inmobi/monetization/internal/AdErrorCode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/inmobi/monetization/internal/AdErrorCode;->ADREQUEST_CANCELLED:Lcom/inmobi/monetization/internal/AdErrorCode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/inmobi/monetization/internal/AdErrorCode;->AD_RENDERING_TIMEOUT:Lcom/inmobi/monetization/internal/AdErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/inmobi/monetization/internal/AdErrorCode;->DO_MONETIZE:Lcom/inmobi/monetization/internal/AdErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/inmobi/monetization/internal/AdErrorCode;->DO_NOTHING:Lcom/inmobi/monetization/internal/AdErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/inmobi/monetization/internal/AdErrorCode;->NETWORK_ERROR:Lcom/inmobi/monetization/internal/AdErrorCode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/inmobi/monetization/internal/AdErrorCode;->b:[Lcom/inmobi/monetization/internal/AdErrorCode;

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
    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 35
    iput-object p3, p0, Lcom/inmobi/monetization/internal/AdErrorCode;->a:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/inmobi/monetization/internal/AdErrorCode;
    .locals 1

    .prologue
    .line 5
    const-class v0, Lcom/inmobi/monetization/internal/AdErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/inmobi/monetization/internal/AdErrorCode;

    return-object v0
.end method

.method public static values()[Lcom/inmobi/monetization/internal/AdErrorCode;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/inmobi/monetization/internal/AdErrorCode;->b:[Lcom/inmobi/monetization/internal/AdErrorCode;

    invoke-virtual {v0}, [Lcom/inmobi/monetization/internal/AdErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/inmobi/monetization/internal/AdErrorCode;

    return-object v0
.end method


# virtual methods
.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/inmobi/monetization/internal/AdErrorCode;->a:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/inmobi/monetization/internal/AdErrorCode;->a:Ljava/lang/String;

    return-object v0
.end method
