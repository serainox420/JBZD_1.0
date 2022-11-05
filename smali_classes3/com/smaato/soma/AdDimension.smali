.class public final enum Lcom/smaato/soma/AdDimension;
.super Ljava/lang/Enum;
.source "AdDimension.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/smaato/soma/AdDimension;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DEFAULT:Lcom/smaato/soma/AdDimension;

.field public static final enum INTERSTITIAL_LANDSCAPE:Lcom/smaato/soma/AdDimension;

.field public static final enum INTERSTITIAL_PORTRAIT:Lcom/smaato/soma/AdDimension;

.field public static final enum LEADERBOARD:Lcom/smaato/soma/AdDimension;

.field public static final enum MEDIUMRECTANGLE:Lcom/smaato/soma/AdDimension;

.field public static final enum NOT_SET:Lcom/smaato/soma/AdDimension;

.field public static final enum SKYSCRAPER:Lcom/smaato/soma/AdDimension;

.field public static final enum WIDESKYSCRAPER:Lcom/smaato/soma/AdDimension;

.field private static final synthetic a:[Lcom/smaato/soma/AdDimension;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 20
    new-instance v0, Lcom/smaato/soma/AdDimension;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v3}, Lcom/smaato/soma/AdDimension;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smaato/soma/AdDimension;->DEFAULT:Lcom/smaato/soma/AdDimension;

    .line 24
    new-instance v0, Lcom/smaato/soma/AdDimension;

    const-string v1, "MEDIUMRECTANGLE"

    invoke-direct {v0, v1, v4}, Lcom/smaato/soma/AdDimension;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smaato/soma/AdDimension;->MEDIUMRECTANGLE:Lcom/smaato/soma/AdDimension;

    .line 28
    new-instance v0, Lcom/smaato/soma/AdDimension;

    const-string v1, "LEADERBOARD"

    invoke-direct {v0, v1, v5}, Lcom/smaato/soma/AdDimension;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smaato/soma/AdDimension;->LEADERBOARD:Lcom/smaato/soma/AdDimension;

    .line 32
    new-instance v0, Lcom/smaato/soma/AdDimension;

    const-string v1, "SKYSCRAPER"

    invoke-direct {v0, v1, v6}, Lcom/smaato/soma/AdDimension;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smaato/soma/AdDimension;->SKYSCRAPER:Lcom/smaato/soma/AdDimension;

    .line 36
    new-instance v0, Lcom/smaato/soma/AdDimension;

    const-string v1, "WIDESKYSCRAPER"

    invoke-direct {v0, v1, v7}, Lcom/smaato/soma/AdDimension;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smaato/soma/AdDimension;->WIDESKYSCRAPER:Lcom/smaato/soma/AdDimension;

    .line 40
    new-instance v0, Lcom/smaato/soma/AdDimension;

    const-string v1, "INTERSTITIAL_PORTRAIT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/smaato/soma/AdDimension;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smaato/soma/AdDimension;->INTERSTITIAL_PORTRAIT:Lcom/smaato/soma/AdDimension;

    .line 44
    new-instance v0, Lcom/smaato/soma/AdDimension;

    const-string v1, "INTERSTITIAL_LANDSCAPE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/smaato/soma/AdDimension;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smaato/soma/AdDimension;->INTERSTITIAL_LANDSCAPE:Lcom/smaato/soma/AdDimension;

    .line 48
    new-instance v0, Lcom/smaato/soma/AdDimension;

    const-string v1, "NOT_SET"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/smaato/soma/AdDimension;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smaato/soma/AdDimension;->NOT_SET:Lcom/smaato/soma/AdDimension;

    .line 16
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/smaato/soma/AdDimension;

    sget-object v1, Lcom/smaato/soma/AdDimension;->DEFAULT:Lcom/smaato/soma/AdDimension;

    aput-object v1, v0, v3

    sget-object v1, Lcom/smaato/soma/AdDimension;->MEDIUMRECTANGLE:Lcom/smaato/soma/AdDimension;

    aput-object v1, v0, v4

    sget-object v1, Lcom/smaato/soma/AdDimension;->LEADERBOARD:Lcom/smaato/soma/AdDimension;

    aput-object v1, v0, v5

    sget-object v1, Lcom/smaato/soma/AdDimension;->SKYSCRAPER:Lcom/smaato/soma/AdDimension;

    aput-object v1, v0, v6

    sget-object v1, Lcom/smaato/soma/AdDimension;->WIDESKYSCRAPER:Lcom/smaato/soma/AdDimension;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/smaato/soma/AdDimension;->INTERSTITIAL_PORTRAIT:Lcom/smaato/soma/AdDimension;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/smaato/soma/AdDimension;->INTERSTITIAL_LANDSCAPE:Lcom/smaato/soma/AdDimension;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/smaato/soma/AdDimension;->NOT_SET:Lcom/smaato/soma/AdDimension;

    aput-object v2, v0, v1

    sput-object v0, Lcom/smaato/soma/AdDimension;->a:[Lcom/smaato/soma/AdDimension;

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
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getStringForValue(Lcom/smaato/soma/AdDimension;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/UnknownAdDimensionException;
        }
    .end annotation

    .prologue
    .line 84
    :try_start_0
    sget-object v0, Lcom/smaato/soma/AdDimension$1;->a:[I

    invoke-virtual {p0}, Lcom/smaato/soma/AdDimension;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 104
    const-string v0, ""

    .line 107
    :goto_0
    return-object v0

    .line 86
    :pswitch_0
    const-string v0, "MMA"

    goto :goto_0

    .line 89
    :pswitch_1
    const-string v0, "MEDRECT"

    goto :goto_0

    .line 92
    :pswitch_2
    const-string v0, "LEADER"

    goto :goto_0

    .line 95
    :pswitch_3
    const-string v0, "SKY"

    goto :goto_0

    .line 98
    :pswitch_4
    const-string v0, "WIDESKY"

    goto :goto_0

    .line 101
    :pswitch_5
    const-string v0, ""
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 108
    :catch_0
    move-exception v0

    .line 109
    throw v0

    .line 110
    :catch_1
    move-exception v0

    .line 111
    new-instance v1, Lcom/smaato/soma/exception/UnknownAdDimensionException;

    invoke-direct {v1, v0}, Lcom/smaato/soma/exception/UnknownAdDimensionException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 84
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static getValueForString(Ljava/lang/String;)Lcom/smaato/soma/AdDimension;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/UnknownStringValueForAdDimension;
        }
    .end annotation

    .prologue
    .line 124
    :try_start_0
    const-string v0, "MMA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    sget-object v0, Lcom/smaato/soma/AdDimension;->DEFAULT:Lcom/smaato/soma/AdDimension;

    .line 137
    :goto_0
    return-object v0

    .line 126
    :cond_0
    const-string v0, "MEDRECT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    sget-object v0, Lcom/smaato/soma/AdDimension;->MEDIUMRECTANGLE:Lcom/smaato/soma/AdDimension;

    goto :goto_0

    .line 128
    :cond_1
    const-string v0, "LEADER"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 129
    sget-object v0, Lcom/smaato/soma/AdDimension;->LEADERBOARD:Lcom/smaato/soma/AdDimension;

    goto :goto_0

    .line 130
    :cond_2
    const-string v0, "SKY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 131
    sget-object v0, Lcom/smaato/soma/AdDimension;->SKYSCRAPER:Lcom/smaato/soma/AdDimension;

    goto :goto_0

    .line 132
    :cond_3
    const-string v0, "WIDESKY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 133
    sget-object v0, Lcom/smaato/soma/AdDimension;->WIDESKYSCRAPER:Lcom/smaato/soma/AdDimension;

    goto :goto_0

    .line 134
    :cond_4
    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 135
    sget-object v0, Lcom/smaato/soma/AdDimension;->INTERSTITIAL_PORTRAIT:Lcom/smaato/soma/AdDimension;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 137
    :cond_5
    const/4 v0, 0x0

    goto :goto_0

    .line 138
    :catch_0
    move-exception v0

    .line 139
    throw v0

    .line 140
    :catch_1
    move-exception v0

    .line 141
    new-instance v1, Lcom/smaato/soma/exception/UnknownStringValueForAdDimension;

    invoke-direct {v1, v0}, Lcom/smaato/soma/exception/UnknownStringValueForAdDimension;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/smaato/soma/AdDimension;
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/smaato/soma/AdDimension;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/smaato/soma/AdDimension;

    return-object v0
.end method

.method public static values()[Lcom/smaato/soma/AdDimension;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/smaato/soma/AdDimension;->a:[Lcom/smaato/soma/AdDimension;

    invoke-virtual {v0}, [Lcom/smaato/soma/AdDimension;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/smaato/soma/AdDimension;

    return-object v0
.end method
