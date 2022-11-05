.class public final enum Lcom/smaato/soma/measurements/FraudesType;
.super Ljava/lang/Enum;
.source "FraudesType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/smaato/soma/measurements/FraudesType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AUTO_CLICK:Lcom/smaato/soma/measurements/FraudesType;

.field public static final enum AUTO_DOWNLOAD:Lcom/smaato/soma/measurements/FraudesType;

.field public static final enum AUTO_EXPAND:Lcom/smaato/soma/measurements/FraudesType;

.field public static final enum AUTO_OPEN:Lcom/smaato/soma/measurements/FraudesType;

.field public static final enum AUTO_PLAY:Lcom/smaato/soma/measurements/FraudesType;

.field public static final enum AUTO_REDIRECT:Lcom/smaato/soma/measurements/FraudesType;

.field public static final enum BANNER_DIMENSION:Lcom/smaato/soma/measurements/FraudesType;

.field public static final enum BANNER_OFF_SCREEN:Lcom/smaato/soma/measurements/FraudesType;

.field public static final enum BANNER_OVERLAP:Lcom/smaato/soma/measurements/FraudesType;

.field public static final enum POP_UP:Lcom/smaato/soma/measurements/FraudesType;

.field public static final enum UBER_FREQUENT_REQUEST:Lcom/smaato/soma/measurements/FraudesType;

.field private static final synthetic a:[Lcom/smaato/soma/measurements/FraudesType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 15
    new-instance v0, Lcom/smaato/soma/measurements/FraudesType;

    const-string v1, "UBER_FREQUENT_REQUEST"

    invoke-direct {v0, v1, v3}, Lcom/smaato/soma/measurements/FraudesType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smaato/soma/measurements/FraudesType;->UBER_FREQUENT_REQUEST:Lcom/smaato/soma/measurements/FraudesType;

    .line 19
    new-instance v0, Lcom/smaato/soma/measurements/FraudesType;

    const-string v1, "AUTO_CLICK"

    invoke-direct {v0, v1, v4}, Lcom/smaato/soma/measurements/FraudesType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smaato/soma/measurements/FraudesType;->AUTO_CLICK:Lcom/smaato/soma/measurements/FraudesType;

    .line 23
    new-instance v0, Lcom/smaato/soma/measurements/FraudesType;

    const-string v1, "BANNER_OFF_SCREEN"

    invoke-direct {v0, v1, v5}, Lcom/smaato/soma/measurements/FraudesType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smaato/soma/measurements/FraudesType;->BANNER_OFF_SCREEN:Lcom/smaato/soma/measurements/FraudesType;

    .line 27
    new-instance v0, Lcom/smaato/soma/measurements/FraudesType;

    const-string v1, "BANNER_DIMENSION"

    invoke-direct {v0, v1, v6}, Lcom/smaato/soma/measurements/FraudesType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smaato/soma/measurements/FraudesType;->BANNER_DIMENSION:Lcom/smaato/soma/measurements/FraudesType;

    .line 31
    new-instance v0, Lcom/smaato/soma/measurements/FraudesType;

    const-string v1, "BANNER_OVERLAP"

    invoke-direct {v0, v1, v7}, Lcom/smaato/soma/measurements/FraudesType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smaato/soma/measurements/FraudesType;->BANNER_OVERLAP:Lcom/smaato/soma/measurements/FraudesType;

    .line 33
    new-instance v0, Lcom/smaato/soma/measurements/FraudesType;

    const-string v1, "AUTO_REDIRECT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/smaato/soma/measurements/FraudesType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smaato/soma/measurements/FraudesType;->AUTO_REDIRECT:Lcom/smaato/soma/measurements/FraudesType;

    .line 34
    new-instance v0, Lcom/smaato/soma/measurements/FraudesType;

    const-string v1, "AUTO_OPEN"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/smaato/soma/measurements/FraudesType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smaato/soma/measurements/FraudesType;->AUTO_OPEN:Lcom/smaato/soma/measurements/FraudesType;

    .line 35
    new-instance v0, Lcom/smaato/soma/measurements/FraudesType;

    const-string v1, "AUTO_DOWNLOAD"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/smaato/soma/measurements/FraudesType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smaato/soma/measurements/FraudesType;->AUTO_DOWNLOAD:Lcom/smaato/soma/measurements/FraudesType;

    .line 36
    new-instance v0, Lcom/smaato/soma/measurements/FraudesType;

    const-string v1, "AUTO_EXPAND"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/smaato/soma/measurements/FraudesType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smaato/soma/measurements/FraudesType;->AUTO_EXPAND:Lcom/smaato/soma/measurements/FraudesType;

    .line 37
    new-instance v0, Lcom/smaato/soma/measurements/FraudesType;

    const-string v1, "POP_UP"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/smaato/soma/measurements/FraudesType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smaato/soma/measurements/FraudesType;->POP_UP:Lcom/smaato/soma/measurements/FraudesType;

    .line 38
    new-instance v0, Lcom/smaato/soma/measurements/FraudesType;

    const-string v1, "AUTO_PLAY"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/smaato/soma/measurements/FraudesType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smaato/soma/measurements/FraudesType;->AUTO_PLAY:Lcom/smaato/soma/measurements/FraudesType;

    .line 11
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/smaato/soma/measurements/FraudesType;

    sget-object v1, Lcom/smaato/soma/measurements/FraudesType;->UBER_FREQUENT_REQUEST:Lcom/smaato/soma/measurements/FraudesType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/smaato/soma/measurements/FraudesType;->AUTO_CLICK:Lcom/smaato/soma/measurements/FraudesType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/smaato/soma/measurements/FraudesType;->BANNER_OFF_SCREEN:Lcom/smaato/soma/measurements/FraudesType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/smaato/soma/measurements/FraudesType;->BANNER_DIMENSION:Lcom/smaato/soma/measurements/FraudesType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/smaato/soma/measurements/FraudesType;->BANNER_OVERLAP:Lcom/smaato/soma/measurements/FraudesType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/smaato/soma/measurements/FraudesType;->AUTO_REDIRECT:Lcom/smaato/soma/measurements/FraudesType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/smaato/soma/measurements/FraudesType;->AUTO_OPEN:Lcom/smaato/soma/measurements/FraudesType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/smaato/soma/measurements/FraudesType;->AUTO_DOWNLOAD:Lcom/smaato/soma/measurements/FraudesType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/smaato/soma/measurements/FraudesType;->AUTO_EXPAND:Lcom/smaato/soma/measurements/FraudesType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/smaato/soma/measurements/FraudesType;->POP_UP:Lcom/smaato/soma/measurements/FraudesType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/smaato/soma/measurements/FraudesType;->AUTO_PLAY:Lcom/smaato/soma/measurements/FraudesType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/smaato/soma/measurements/FraudesType;->a:[Lcom/smaato/soma/measurements/FraudesType;

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
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/smaato/soma/measurements/FraudesType;
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcom/smaato/soma/measurements/FraudesType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/smaato/soma/measurements/FraudesType;

    return-object v0
.end method

.method public static values()[Lcom/smaato/soma/measurements/FraudesType;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/smaato/soma/measurements/FraudesType;->a:[Lcom/smaato/soma/measurements/FraudesType;

    invoke-virtual {v0}, [Lcom/smaato/soma/measurements/FraudesType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/smaato/soma/measurements/FraudesType;

    return-object v0
.end method
