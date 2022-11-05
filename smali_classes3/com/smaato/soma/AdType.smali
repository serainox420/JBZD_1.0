.class public final enum Lcom/smaato/soma/AdType;
.super Ljava/lang/Enum;
.source "AdType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/smaato/soma/AdType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ALL:Lcom/smaato/soma/AdType;

.field public static final enum IMAGE:Lcom/smaato/soma/AdType;

.field public static final enum MEDIATION:Lcom/smaato/soma/AdType;

.field public static final enum NATIVE:Lcom/smaato/soma/AdType;

.field public static final enum REWARDED:Lcom/smaato/soma/AdType;

.field public static final enum RICHMEDIA:Lcom/smaato/soma/AdType;

.field public static final enum TEXT:Lcom/smaato/soma/AdType;

.field public static final enum VAST:Lcom/smaato/soma/AdType;

.field public static final enum VIDEO:Lcom/smaato/soma/AdType;

.field private static final synthetic a:[Lcom/smaato/soma/AdType;


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
    new-instance v0, Lcom/smaato/soma/AdType;

    const-string v1, "ALL"

    invoke-direct {v0, v1, v3}, Lcom/smaato/soma/AdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smaato/soma/AdType;->ALL:Lcom/smaato/soma/AdType;

    .line 24
    new-instance v0, Lcom/smaato/soma/AdType;

    const-string v1, "IMAGE"

    invoke-direct {v0, v1, v4}, Lcom/smaato/soma/AdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smaato/soma/AdType;->IMAGE:Lcom/smaato/soma/AdType;

    .line 28
    new-instance v0, Lcom/smaato/soma/AdType;

    const-string v1, "TEXT"

    invoke-direct {v0, v1, v5}, Lcom/smaato/soma/AdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smaato/soma/AdType;->TEXT:Lcom/smaato/soma/AdType;

    .line 32
    new-instance v0, Lcom/smaato/soma/AdType;

    const-string v1, "VIDEO"

    invoke-direct {v0, v1, v6}, Lcom/smaato/soma/AdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smaato/soma/AdType;->VIDEO:Lcom/smaato/soma/AdType;

    .line 36
    new-instance v0, Lcom/smaato/soma/AdType;

    const-string v1, "REWARDED"

    invoke-direct {v0, v1, v7}, Lcom/smaato/soma/AdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smaato/soma/AdType;->REWARDED:Lcom/smaato/soma/AdType;

    .line 40
    new-instance v0, Lcom/smaato/soma/AdType;

    const-string v1, "VAST"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/smaato/soma/AdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smaato/soma/AdType;->VAST:Lcom/smaato/soma/AdType;

    .line 44
    new-instance v0, Lcom/smaato/soma/AdType;

    const-string v1, "NATIVE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/smaato/soma/AdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smaato/soma/AdType;->NATIVE:Lcom/smaato/soma/AdType;

    .line 48
    new-instance v0, Lcom/smaato/soma/AdType;

    const-string v1, "MEDIATION"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/smaato/soma/AdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smaato/soma/AdType;->MEDIATION:Lcom/smaato/soma/AdType;

    .line 52
    new-instance v0, Lcom/smaato/soma/AdType;

    const-string v1, "RICHMEDIA"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/smaato/soma/AdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smaato/soma/AdType;->RICHMEDIA:Lcom/smaato/soma/AdType;

    .line 16
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/smaato/soma/AdType;

    sget-object v1, Lcom/smaato/soma/AdType;->ALL:Lcom/smaato/soma/AdType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/smaato/soma/AdType;->IMAGE:Lcom/smaato/soma/AdType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/smaato/soma/AdType;->TEXT:Lcom/smaato/soma/AdType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/smaato/soma/AdType;->VIDEO:Lcom/smaato/soma/AdType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/smaato/soma/AdType;->REWARDED:Lcom/smaato/soma/AdType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/smaato/soma/AdType;->VAST:Lcom/smaato/soma/AdType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/smaato/soma/AdType;->NATIVE:Lcom/smaato/soma/AdType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/smaato/soma/AdType;->MEDIATION:Lcom/smaato/soma/AdType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/smaato/soma/AdType;->RICHMEDIA:Lcom/smaato/soma/AdType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/smaato/soma/AdType;->a:[Lcom/smaato/soma/AdType;

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

.method public static getStringForValue(Lcom/smaato/soma/AdType;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/UnknownAdTypeException;
        }
    .end annotation

    .prologue
    .line 88
    :try_start_0
    sget-object v0, Lcom/smaato/soma/AdType$1;->a:[I

    invoke-virtual {p0}, Lcom/smaato/soma/AdType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 114
    const-string v0, ""

    .line 117
    :goto_0
    return-object v0

    .line 90
    :pswitch_0
    const-string v0, "ALL"

    goto :goto_0

    .line 93
    :pswitch_1
    const-string v0, "IMG"

    goto :goto_0

    .line 96
    :pswitch_2
    const-string v0, "TXT"

    goto :goto_0

    .line 99
    :pswitch_3
    const-string v0, "RICHMEDIA"

    goto :goto_0

    .line 102
    :pswitch_4
    const-string v0, "video"

    goto :goto_0

    .line 105
    :pswitch_5
    const-string v0, "rewarded"

    goto :goto_0

    .line 108
    :pswitch_6
    const-string v0, "VAST"

    goto :goto_0

    .line 111
    :pswitch_7
    const-string v0, "NATIVE"
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 118
    :catch_0
    move-exception v0

    .line 119
    throw v0

    .line 120
    :catch_1
    move-exception v0

    .line 121
    new-instance v1, Lcom/smaato/soma/exception/UnknownAdTypeException;

    invoke-direct {v1, v0}, Lcom/smaato/soma/exception/UnknownAdTypeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 88
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public static getValueForString(Ljava/lang/String;)Lcom/smaato/soma/AdType;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/UnknownStringAdTypeValue;
        }
    .end annotation

    .prologue
    .line 134
    :try_start_0
    const-string v0, "ALL"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    sget-object v0, Lcom/smaato/soma/AdType;->ALL:Lcom/smaato/soma/AdType;

    .line 151
    :goto_0
    return-object v0

    .line 136
    :cond_0
    const-string v0, "IMG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    sget-object v0, Lcom/smaato/soma/AdType;->IMAGE:Lcom/smaato/soma/AdType;

    goto :goto_0

    .line 138
    :cond_1
    const-string v0, "TXT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 139
    sget-object v0, Lcom/smaato/soma/AdType;->TEXT:Lcom/smaato/soma/AdType;

    goto :goto_0

    .line 140
    :cond_2
    const-string v0, "video"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 141
    sget-object v0, Lcom/smaato/soma/AdType;->VIDEO:Lcom/smaato/soma/AdType;

    goto :goto_0

    .line 142
    :cond_3
    const-string v0, "rewarded"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 143
    sget-object v0, Lcom/smaato/soma/AdType;->REWARDED:Lcom/smaato/soma/AdType;

    goto :goto_0

    .line 144
    :cond_4
    const-string v0, "VAST"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 145
    sget-object v0, Lcom/smaato/soma/AdType;->VAST:Lcom/smaato/soma/AdType;

    goto :goto_0

    .line 146
    :cond_5
    const-string v0, "RICHMEDIA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 147
    sget-object v0, Lcom/smaato/soma/AdType;->RICHMEDIA:Lcom/smaato/soma/AdType;

    goto :goto_0

    .line 148
    :cond_6
    const-string v0, "NATIVE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 149
    sget-object v0, Lcom/smaato/soma/AdType;->NATIVE:Lcom/smaato/soma/AdType;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 151
    :cond_7
    const/4 v0, 0x0

    goto :goto_0

    .line 152
    :catch_0
    move-exception v0

    .line 153
    throw v0

    .line 154
    :catch_1
    move-exception v0

    .line 155
    new-instance v1, Lcom/smaato/soma/exception/UnknownStringAdTypeValue;

    invoke-direct {v1, v0}, Lcom/smaato/soma/exception/UnknownStringAdTypeValue;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/smaato/soma/AdType;
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/smaato/soma/AdType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/smaato/soma/AdType;

    return-object v0
.end method

.method public static values()[Lcom/smaato/soma/AdType;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/smaato/soma/AdType;->a:[Lcom/smaato/soma/AdType;

    invoke-virtual {v0}, [Lcom/smaato/soma/AdType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/smaato/soma/AdType;

    return-object v0
.end method
