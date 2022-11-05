.class public final enum Lcom/smaato/soma/ErrorCode;
.super Ljava/lang/Enum;
.source "ErrorCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/smaato/soma/ErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ADAPTER_CONFIGURATION_ERROR:Lcom/smaato/soma/ErrorCode;

.field public static final enum ADAPTER_NOT_FOUND:Lcom/smaato/soma/ErrorCode;

.field public static final enum GENERAL_ERROR:Lcom/smaato/soma/ErrorCode;

.field public static final enum NETWORK_INVALID_STATE:Lcom/smaato/soma/ErrorCode;

.field public static final enum NETWORK_NO_FILL:Lcom/smaato/soma/ErrorCode;

.field public static final enum NETWORK_TIMEOUT:Lcom/smaato/soma/ErrorCode;

.field public static final enum NO_AD_AVAILABLE:Lcom/smaato/soma/ErrorCode;

.field public static final enum NO_CONNECTION_ERROR:Lcom/smaato/soma/ErrorCode;

.field public static final enum NO_ERROR:Lcom/smaato/soma/ErrorCode;

.field public static final enum PARSING_ERROR:Lcom/smaato/soma/ErrorCode;

.field public static final enum UNKNOWN_PUBLISHER_OR_ADSPACE_ID:Lcom/smaato/soma/ErrorCode;

.field public static final enum UNSPECIFIED:Lcom/smaato/soma/ErrorCode;

.field private static final synthetic a:[Lcom/smaato/soma/ErrorCode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 19
    new-instance v0, Lcom/smaato/soma/ErrorCode;

    const-string v1, "NO_ERROR"

    invoke-direct {v0, v1, v3}, Lcom/smaato/soma/ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smaato/soma/ErrorCode;->NO_ERROR:Lcom/smaato/soma/ErrorCode;

    .line 23
    new-instance v0, Lcom/smaato/soma/ErrorCode;

    const-string v1, "UNKNOWN_PUBLISHER_OR_ADSPACE_ID"

    invoke-direct {v0, v1, v4}, Lcom/smaato/soma/ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smaato/soma/ErrorCode;->UNKNOWN_PUBLISHER_OR_ADSPACE_ID:Lcom/smaato/soma/ErrorCode;

    .line 27
    new-instance v0, Lcom/smaato/soma/ErrorCode;

    const-string v1, "NO_CONNECTION_ERROR"

    invoke-direct {v0, v1, v5}, Lcom/smaato/soma/ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smaato/soma/ErrorCode;->NO_CONNECTION_ERROR:Lcom/smaato/soma/ErrorCode;

    .line 31
    new-instance v0, Lcom/smaato/soma/ErrorCode;

    const-string v1, "NO_AD_AVAILABLE"

    invoke-direct {v0, v1, v6}, Lcom/smaato/soma/ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smaato/soma/ErrorCode;->NO_AD_AVAILABLE:Lcom/smaato/soma/ErrorCode;

    .line 35
    new-instance v0, Lcom/smaato/soma/ErrorCode;

    const-string v1, "GENERAL_ERROR"

    invoke-direct {v0, v1, v7}, Lcom/smaato/soma/ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smaato/soma/ErrorCode;->GENERAL_ERROR:Lcom/smaato/soma/ErrorCode;

    .line 39
    new-instance v0, Lcom/smaato/soma/ErrorCode;

    const-string v1, "PARSING_ERROR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/smaato/soma/ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smaato/soma/ErrorCode;->PARSING_ERROR:Lcom/smaato/soma/ErrorCode;

    .line 44
    new-instance v0, Lcom/smaato/soma/ErrorCode;

    const-string v1, "ADAPTER_NOT_FOUND"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/smaato/soma/ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smaato/soma/ErrorCode;->ADAPTER_NOT_FOUND:Lcom/smaato/soma/ErrorCode;

    .line 48
    new-instance v0, Lcom/smaato/soma/ErrorCode;

    const-string v1, "ADAPTER_CONFIGURATION_ERROR"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/smaato/soma/ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smaato/soma/ErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/smaato/soma/ErrorCode;

    .line 52
    new-instance v0, Lcom/smaato/soma/ErrorCode;

    const-string v1, "UNSPECIFIED"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/smaato/soma/ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smaato/soma/ErrorCode;->UNSPECIFIED:Lcom/smaato/soma/ErrorCode;

    .line 56
    new-instance v0, Lcom/smaato/soma/ErrorCode;

    const-string v1, "NETWORK_TIMEOUT"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/smaato/soma/ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smaato/soma/ErrorCode;->NETWORK_TIMEOUT:Lcom/smaato/soma/ErrorCode;

    .line 60
    new-instance v0, Lcom/smaato/soma/ErrorCode;

    const-string v1, "NETWORK_NO_FILL"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/smaato/soma/ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smaato/soma/ErrorCode;->NETWORK_NO_FILL:Lcom/smaato/soma/ErrorCode;

    .line 64
    new-instance v0, Lcom/smaato/soma/ErrorCode;

    const-string v1, "NETWORK_INVALID_STATE"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/smaato/soma/ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smaato/soma/ErrorCode;->NETWORK_INVALID_STATE:Lcom/smaato/soma/ErrorCode;

    .line 15
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/smaato/soma/ErrorCode;

    sget-object v1, Lcom/smaato/soma/ErrorCode;->NO_ERROR:Lcom/smaato/soma/ErrorCode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/smaato/soma/ErrorCode;->UNKNOWN_PUBLISHER_OR_ADSPACE_ID:Lcom/smaato/soma/ErrorCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/smaato/soma/ErrorCode;->NO_CONNECTION_ERROR:Lcom/smaato/soma/ErrorCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/smaato/soma/ErrorCode;->NO_AD_AVAILABLE:Lcom/smaato/soma/ErrorCode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/smaato/soma/ErrorCode;->GENERAL_ERROR:Lcom/smaato/soma/ErrorCode;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/smaato/soma/ErrorCode;->PARSING_ERROR:Lcom/smaato/soma/ErrorCode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/smaato/soma/ErrorCode;->ADAPTER_NOT_FOUND:Lcom/smaato/soma/ErrorCode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/smaato/soma/ErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/smaato/soma/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/smaato/soma/ErrorCode;->UNSPECIFIED:Lcom/smaato/soma/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/smaato/soma/ErrorCode;->NETWORK_TIMEOUT:Lcom/smaato/soma/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/smaato/soma/ErrorCode;->NETWORK_NO_FILL:Lcom/smaato/soma/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/smaato/soma/ErrorCode;->NETWORK_INVALID_STATE:Lcom/smaato/soma/ErrorCode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/smaato/soma/ErrorCode;->a:[Lcom/smaato/soma/ErrorCode;

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

.method public static getStringForValue(Lcom/smaato/soma/ErrorCode;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/UnrecognizedErrorCodeValue;
        }
    .end annotation

    .prologue
    .line 75
    :try_start_0
    sget-object v0, Lcom/smaato/soma/ErrorCode;->NO_ERROR:Lcom/smaato/soma/ErrorCode;

    if-ne p0, v0, :cond_0

    .line 76
    const-string v0, "0"

    .line 88
    :goto_0
    return-object v0

    .line 77
    :cond_0
    sget-object v0, Lcom/smaato/soma/ErrorCode;->UNKNOWN_PUBLISHER_OR_ADSPACE_ID:Lcom/smaato/soma/ErrorCode;

    if-ne p0, v0, :cond_1

    .line 78
    const-string v0, "106"

    goto :goto_0

    .line 79
    :cond_1
    sget-object v0, Lcom/smaato/soma/ErrorCode;->NO_CONNECTION_ERROR:Lcom/smaato/soma/ErrorCode;

    if-ne p0, v0, :cond_2

    .line 80
    const-string v0, "NO_CONNECTION_ERROR"

    goto :goto_0

    .line 81
    :cond_2
    sget-object v0, Lcom/smaato/soma/ErrorCode;->NO_AD_AVAILABLE:Lcom/smaato/soma/ErrorCode;

    if-ne p0, v0, :cond_3

    .line 82
    const-string v0, "42"

    goto :goto_0

    .line 83
    :cond_3
    sget-object v0, Lcom/smaato/soma/ErrorCode;->GENERAL_ERROR:Lcom/smaato/soma/ErrorCode;

    if-ne p0, v0, :cond_4

    .line 84
    const-string v0, "107"

    goto :goto_0

    .line 85
    :cond_4
    sget-object v0, Lcom/smaato/soma/ErrorCode;->PARSING_ERROR:Lcom/smaato/soma/ErrorCode;

    if-ne p0, v0, :cond_5

    .line 86
    const-string v0, "PARSING_ERROR"

    goto :goto_0

    .line 88
    :cond_5
    const-string v0, ""
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 89
    :catch_0
    move-exception v0

    .line 90
    throw v0

    .line 91
    :catch_1
    move-exception v0

    .line 92
    new-instance v1, Lcom/smaato/soma/exception/UnrecognizedErrorCodeValue;

    invoke-direct {v1, v0}, Lcom/smaato/soma/exception/UnrecognizedErrorCodeValue;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getValueForString(Ljava/lang/String;)Lcom/smaato/soma/ErrorCode;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/UnrecognizedStringErrorCodeValue;
        }
    .end annotation

    .prologue
    .line 105
    :try_start_0
    const-string v0, "0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    sget-object v0, Lcom/smaato/soma/ErrorCode;->NO_ERROR:Lcom/smaato/soma/ErrorCode;

    .line 118
    :goto_0
    return-object v0

    .line 107
    :cond_0
    const-string v0, "106"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    sget-object v0, Lcom/smaato/soma/ErrorCode;->UNKNOWN_PUBLISHER_OR_ADSPACE_ID:Lcom/smaato/soma/ErrorCode;

    goto :goto_0

    .line 109
    :cond_1
    const-string v0, "NO_CONNECTION_ERROR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 110
    sget-object v0, Lcom/smaato/soma/ErrorCode;->NO_CONNECTION_ERROR:Lcom/smaato/soma/ErrorCode;

    goto :goto_0

    .line 111
    :cond_2
    const-string v0, "42"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 112
    sget-object v0, Lcom/smaato/soma/ErrorCode;->NO_AD_AVAILABLE:Lcom/smaato/soma/ErrorCode;

    goto :goto_0

    .line 113
    :cond_3
    const-string v0, "107"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 114
    sget-object v0, Lcom/smaato/soma/ErrorCode;->GENERAL_ERROR:Lcom/smaato/soma/ErrorCode;

    goto :goto_0

    .line 115
    :cond_4
    const-string v0, "PARSING_ERROR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 116
    sget-object v0, Lcom/smaato/soma/ErrorCode;->PARSING_ERROR:Lcom/smaato/soma/ErrorCode;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 118
    :cond_5
    const/4 v0, 0x0

    goto :goto_0

    .line 119
    :catch_0
    move-exception v0

    .line 120
    throw v0

    .line 121
    :catch_1
    move-exception v0

    .line 122
    new-instance v1, Lcom/smaato/soma/exception/UnrecognizedStringErrorCodeValue;

    invoke-direct {v1, v0}, Lcom/smaato/soma/exception/UnrecognizedStringErrorCodeValue;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/smaato/soma/ErrorCode;
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/smaato/soma/ErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/smaato/soma/ErrorCode;

    return-object v0
.end method

.method public static values()[Lcom/smaato/soma/ErrorCode;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/smaato/soma/ErrorCode;->a:[Lcom/smaato/soma/ErrorCode;

    invoke-virtual {v0}, [Lcom/smaato/soma/ErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/smaato/soma/ErrorCode;

    return-object v0
.end method
