.class public final enum Lcom/intentsoftware/addapptr/AdNetwork;
.super Ljava/lang/Enum;
.source "AdNetwork.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/intentsoftware/addapptr/AdNetwork;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/intentsoftware/addapptr/AdNetwork;

.field public static final enum ADCOLONY:Lcom/intentsoftware/addapptr/AdNetwork;

.field public static final enum ADMOB:Lcom/intentsoftware/addapptr/AdNetwork;

.field public static final enum ADX:Lcom/intentsoftware/addapptr/AdNetwork;

.field public static final enum AMAZON:Lcom/intentsoftware/addapptr/AdNetwork;

.field public static final enum APPLOVIN:Lcom/intentsoftware/addapptr/AdNetwork;

.field public static final enum APPRUPT:Lcom/intentsoftware/addapptr/AdNetwork;

.field public static final enum DFP:Lcom/intentsoftware/addapptr/AdNetwork;

.field public static final enum EMPTY:Lcom/intentsoftware/addapptr/AdNetwork;

.field public static final enum FACEBOOK:Lcom/intentsoftware/addapptr/AdNetwork;

.field public static final enum FLURRY:Lcom/intentsoftware/addapptr/AdNetwork;

.field public static final enum HOUSE:Lcom/intentsoftware/addapptr/AdNetwork;

.field public static final enum INMOBI:Lcom/intentsoftware/addapptr/AdNetwork;

.field public static final enum LOOPME:Lcom/intentsoftware/addapptr/AdNetwork;

.field public static final enum MDOTM:Lcom/intentsoftware/addapptr/AdNetwork;

.field public static final enum MILLENNIAL:Lcom/intentsoftware/addapptr/AdNetwork;

.field public static final enum MOPUB:Lcom/intentsoftware/addapptr/AdNetwork;

.field public static final enum NEXAGE:Lcom/intentsoftware/addapptr/AdNetwork;

.field public static final enum OPENX:Lcom/intentsoftware/addapptr/AdNetwork;

.field public static final enum PERMODO:Lcom/intentsoftware/addapptr/AdNetwork;

.field public static final enum PUBMATIC:Lcom/intentsoftware/addapptr/AdNetwork;

.field public static final enum REVMOB:Lcom/intentsoftware/addapptr/AdNetwork;

.field public static final enum SMAATO:Lcom/intentsoftware/addapptr/AdNetwork;

.field public static final enum SMARTAD:Lcom/intentsoftware/addapptr/AdNetwork;

.field public static final enum SMARTSTREAMTV:Lcom/intentsoftware/addapptr/AdNetwork;

.field public static final enum UNITYADS:Lcom/intentsoftware/addapptr/AdNetwork;


# instance fields
.field private final reportingName:Ljava/lang/String;

.field private final serverConfigName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 5
    new-instance v0, Lcom/intentsoftware/addapptr/AdNetwork;

    const-string v1, "HOUSE"

    const-string v2, "House"

    invoke-direct {v0, v1, v5, v2}, Lcom/intentsoftware/addapptr/AdNetwork;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/intentsoftware/addapptr/AdNetwork;->HOUSE:Lcom/intentsoftware/addapptr/AdNetwork;

    .line 6
    new-instance v0, Lcom/intentsoftware/addapptr/AdNetwork;

    const-string v1, "MILLENNIAL"

    const-string v2, "Millennial"

    invoke-direct {v0, v1, v6, v2}, Lcom/intentsoftware/addapptr/AdNetwork;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/intentsoftware/addapptr/AdNetwork;->MILLENNIAL:Lcom/intentsoftware/addapptr/AdNetwork;

    .line 7
    new-instance v0, Lcom/intentsoftware/addapptr/AdNetwork;

    const-string v1, "INMOBI"

    const-string v2, "Inmobi"

    invoke-direct {v0, v1, v7, v2}, Lcom/intentsoftware/addapptr/AdNetwork;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/intentsoftware/addapptr/AdNetwork;->INMOBI:Lcom/intentsoftware/addapptr/AdNetwork;

    .line 8
    new-instance v0, Lcom/intentsoftware/addapptr/AdNetwork;

    const-string v1, "ADMOB"

    const-string v2, "AdMob"

    invoke-direct {v0, v1, v8, v2}, Lcom/intentsoftware/addapptr/AdNetwork;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/intentsoftware/addapptr/AdNetwork;->ADMOB:Lcom/intentsoftware/addapptr/AdNetwork;

    .line 9
    new-instance v0, Lcom/intentsoftware/addapptr/AdNetwork;

    const-string v1, "SMARTSTREAMTV"

    const-string v2, "GroupM"

    const-string v3, "GROUPM"

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/intentsoftware/addapptr/AdNetwork;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/intentsoftware/addapptr/AdNetwork;->SMARTSTREAMTV:Lcom/intentsoftware/addapptr/AdNetwork;

    .line 10
    new-instance v0, Lcom/intentsoftware/addapptr/AdNetwork;

    const-string v1, "EMPTY"

    const/4 v2, 0x5

    const-string v3, "Empty"

    invoke-direct {v0, v1, v2, v3}, Lcom/intentsoftware/addapptr/AdNetwork;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/intentsoftware/addapptr/AdNetwork;->EMPTY:Lcom/intentsoftware/addapptr/AdNetwork;

    .line 11
    new-instance v0, Lcom/intentsoftware/addapptr/AdNetwork;

    const-string v1, "MDOTM"

    const/4 v2, 0x6

    const-string v3, "MdotM"

    invoke-direct {v0, v1, v2, v3}, Lcom/intentsoftware/addapptr/AdNetwork;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/intentsoftware/addapptr/AdNetwork;->MDOTM:Lcom/intentsoftware/addapptr/AdNetwork;

    .line 12
    new-instance v0, Lcom/intentsoftware/addapptr/AdNetwork;

    const-string v1, "APPLOVIN"

    const/4 v2, 0x7

    const-string v3, "AppLovin"

    invoke-direct {v0, v1, v2, v3}, Lcom/intentsoftware/addapptr/AdNetwork;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/intentsoftware/addapptr/AdNetwork;->APPLOVIN:Lcom/intentsoftware/addapptr/AdNetwork;

    .line 13
    new-instance v0, Lcom/intentsoftware/addapptr/AdNetwork;

    const-string v1, "SMARTAD"

    const/16 v2, 0x8

    const-string v3, "SmartAd"

    invoke-direct {v0, v1, v2, v3}, Lcom/intentsoftware/addapptr/AdNetwork;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/intentsoftware/addapptr/AdNetwork;->SMARTAD:Lcom/intentsoftware/addapptr/AdNetwork;

    .line 14
    new-instance v0, Lcom/intentsoftware/addapptr/AdNetwork;

    const-string v1, "NEXAGE"

    const/16 v2, 0x9

    const-string v3, "RTB1"

    const-string v4, "RTB1"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/intentsoftware/addapptr/AdNetwork;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/intentsoftware/addapptr/AdNetwork;->NEXAGE:Lcom/intentsoftware/addapptr/AdNetwork;

    .line 15
    new-instance v0, Lcom/intentsoftware/addapptr/AdNetwork;

    const-string v1, "ADX"

    const/16 v2, 0xa

    const-string v3, "RTB2"

    const-string v4, "RTB2"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/intentsoftware/addapptr/AdNetwork;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/intentsoftware/addapptr/AdNetwork;->ADX:Lcom/intentsoftware/addapptr/AdNetwork;

    .line 16
    new-instance v0, Lcom/intentsoftware/addapptr/AdNetwork;

    const-string v1, "DFP"

    const/16 v2, 0xb

    const-string v3, "DFP"

    invoke-direct {v0, v1, v2, v3}, Lcom/intentsoftware/addapptr/AdNetwork;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/intentsoftware/addapptr/AdNetwork;->DFP:Lcom/intentsoftware/addapptr/AdNetwork;

    .line 17
    new-instance v0, Lcom/intentsoftware/addapptr/AdNetwork;

    const-string v1, "SMAATO"

    const/16 v2, 0xc

    const-string v3, "Smaato"

    invoke-direct {v0, v1, v2, v3}, Lcom/intentsoftware/addapptr/AdNetwork;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/intentsoftware/addapptr/AdNetwork;->SMAATO:Lcom/intentsoftware/addapptr/AdNetwork;

    .line 18
    new-instance v0, Lcom/intentsoftware/addapptr/AdNetwork;

    const-string v1, "APPRUPT"

    const/16 v2, 0xd

    const-string v3, "Apprupt"

    invoke-direct {v0, v1, v2, v3}, Lcom/intentsoftware/addapptr/AdNetwork;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/intentsoftware/addapptr/AdNetwork;->APPRUPT:Lcom/intentsoftware/addapptr/AdNetwork;

    .line 19
    new-instance v0, Lcom/intentsoftware/addapptr/AdNetwork;

    const-string v1, "FACEBOOK"

    const/16 v2, 0xe

    const-string v3, "Facebook"

    invoke-direct {v0, v1, v2, v3}, Lcom/intentsoftware/addapptr/AdNetwork;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/intentsoftware/addapptr/AdNetwork;->FACEBOOK:Lcom/intentsoftware/addapptr/AdNetwork;

    .line 20
    new-instance v0, Lcom/intentsoftware/addapptr/AdNetwork;

    const-string v1, "UNITYADS"

    const/16 v2, 0xf

    const-string v3, "Unity"

    const-string v4, "UNITY"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/intentsoftware/addapptr/AdNetwork;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/intentsoftware/addapptr/AdNetwork;->UNITYADS:Lcom/intentsoftware/addapptr/AdNetwork;

    .line 21
    new-instance v0, Lcom/intentsoftware/addapptr/AdNetwork;

    const-string v1, "ADCOLONY"

    const/16 v2, 0x10

    const-string v3, "AdColony"

    invoke-direct {v0, v1, v2, v3}, Lcom/intentsoftware/addapptr/AdNetwork;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/intentsoftware/addapptr/AdNetwork;->ADCOLONY:Lcom/intentsoftware/addapptr/AdNetwork;

    .line 22
    new-instance v0, Lcom/intentsoftware/addapptr/AdNetwork;

    const-string v1, "LOOPME"

    const/16 v2, 0x11

    const-string v3, "LoopMe"

    invoke-direct {v0, v1, v2, v3}, Lcom/intentsoftware/addapptr/AdNetwork;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/intentsoftware/addapptr/AdNetwork;->LOOPME:Lcom/intentsoftware/addapptr/AdNetwork;

    .line 23
    new-instance v0, Lcom/intentsoftware/addapptr/AdNetwork;

    const-string v1, "AMAZON"

    const/16 v2, 0x12

    const-string v3, "Amazon"

    invoke-direct {v0, v1, v2, v3}, Lcom/intentsoftware/addapptr/AdNetwork;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/intentsoftware/addapptr/AdNetwork;->AMAZON:Lcom/intentsoftware/addapptr/AdNetwork;

    .line 24
    new-instance v0, Lcom/intentsoftware/addapptr/AdNetwork;

    const-string v1, "MOPUB"

    const/16 v2, 0x13

    const-string v3, "MoPub"

    invoke-direct {v0, v1, v2, v3}, Lcom/intentsoftware/addapptr/AdNetwork;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/intentsoftware/addapptr/AdNetwork;->MOPUB:Lcom/intentsoftware/addapptr/AdNetwork;

    .line 25
    new-instance v0, Lcom/intentsoftware/addapptr/AdNetwork;

    const-string v1, "OPENX"

    const/16 v2, 0x14

    const-string v3, "OpenX"

    invoke-direct {v0, v1, v2, v3}, Lcom/intentsoftware/addapptr/AdNetwork;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/intentsoftware/addapptr/AdNetwork;->OPENX:Lcom/intentsoftware/addapptr/AdNetwork;

    .line 26
    new-instance v0, Lcom/intentsoftware/addapptr/AdNetwork;

    const-string v1, "PUBMATIC"

    const/16 v2, 0x15

    const-string v3, "PubMatic"

    invoke-direct {v0, v1, v2, v3}, Lcom/intentsoftware/addapptr/AdNetwork;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/intentsoftware/addapptr/AdNetwork;->PUBMATIC:Lcom/intentsoftware/addapptr/AdNetwork;

    .line 27
    new-instance v0, Lcom/intentsoftware/addapptr/AdNetwork;

    const-string v1, "FLURRY"

    const/16 v2, 0x16

    const-string v3, "Flurry"

    invoke-direct {v0, v1, v2, v3}, Lcom/intentsoftware/addapptr/AdNetwork;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/intentsoftware/addapptr/AdNetwork;->FLURRY:Lcom/intentsoftware/addapptr/AdNetwork;

    .line 28
    new-instance v0, Lcom/intentsoftware/addapptr/AdNetwork;

    const-string v1, "REVMOB"

    const/16 v2, 0x17

    const-string v3, "RevMob"

    invoke-direct {v0, v1, v2, v3}, Lcom/intentsoftware/addapptr/AdNetwork;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/intentsoftware/addapptr/AdNetwork;->REVMOB:Lcom/intentsoftware/addapptr/AdNetwork;

    .line 29
    new-instance v0, Lcom/intentsoftware/addapptr/AdNetwork;

    const-string v1, "PERMODO"

    const/16 v2, 0x18

    const-string v3, "Permodo"

    invoke-direct {v0, v1, v2, v3}, Lcom/intentsoftware/addapptr/AdNetwork;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/intentsoftware/addapptr/AdNetwork;->PERMODO:Lcom/intentsoftware/addapptr/AdNetwork;

    .line 3
    const/16 v0, 0x19

    new-array v0, v0, [Lcom/intentsoftware/addapptr/AdNetwork;

    sget-object v1, Lcom/intentsoftware/addapptr/AdNetwork;->HOUSE:Lcom/intentsoftware/addapptr/AdNetwork;

    aput-object v1, v0, v5

    sget-object v1, Lcom/intentsoftware/addapptr/AdNetwork;->MILLENNIAL:Lcom/intentsoftware/addapptr/AdNetwork;

    aput-object v1, v0, v6

    sget-object v1, Lcom/intentsoftware/addapptr/AdNetwork;->INMOBI:Lcom/intentsoftware/addapptr/AdNetwork;

    aput-object v1, v0, v7

    sget-object v1, Lcom/intentsoftware/addapptr/AdNetwork;->ADMOB:Lcom/intentsoftware/addapptr/AdNetwork;

    aput-object v1, v0, v8

    sget-object v1, Lcom/intentsoftware/addapptr/AdNetwork;->SMARTSTREAMTV:Lcom/intentsoftware/addapptr/AdNetwork;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/intentsoftware/addapptr/AdNetwork;->EMPTY:Lcom/intentsoftware/addapptr/AdNetwork;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/intentsoftware/addapptr/AdNetwork;->MDOTM:Lcom/intentsoftware/addapptr/AdNetwork;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/intentsoftware/addapptr/AdNetwork;->APPLOVIN:Lcom/intentsoftware/addapptr/AdNetwork;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/intentsoftware/addapptr/AdNetwork;->SMARTAD:Lcom/intentsoftware/addapptr/AdNetwork;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/intentsoftware/addapptr/AdNetwork;->NEXAGE:Lcom/intentsoftware/addapptr/AdNetwork;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/intentsoftware/addapptr/AdNetwork;->ADX:Lcom/intentsoftware/addapptr/AdNetwork;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/intentsoftware/addapptr/AdNetwork;->DFP:Lcom/intentsoftware/addapptr/AdNetwork;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/intentsoftware/addapptr/AdNetwork;->SMAATO:Lcom/intentsoftware/addapptr/AdNetwork;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/intentsoftware/addapptr/AdNetwork;->APPRUPT:Lcom/intentsoftware/addapptr/AdNetwork;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/intentsoftware/addapptr/AdNetwork;->FACEBOOK:Lcom/intentsoftware/addapptr/AdNetwork;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/intentsoftware/addapptr/AdNetwork;->UNITYADS:Lcom/intentsoftware/addapptr/AdNetwork;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/intentsoftware/addapptr/AdNetwork;->ADCOLONY:Lcom/intentsoftware/addapptr/AdNetwork;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/intentsoftware/addapptr/AdNetwork;->LOOPME:Lcom/intentsoftware/addapptr/AdNetwork;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/intentsoftware/addapptr/AdNetwork;->AMAZON:Lcom/intentsoftware/addapptr/AdNetwork;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/intentsoftware/addapptr/AdNetwork;->MOPUB:Lcom/intentsoftware/addapptr/AdNetwork;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/intentsoftware/addapptr/AdNetwork;->OPENX:Lcom/intentsoftware/addapptr/AdNetwork;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/intentsoftware/addapptr/AdNetwork;->PUBMATIC:Lcom/intentsoftware/addapptr/AdNetwork;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/intentsoftware/addapptr/AdNetwork;->FLURRY:Lcom/intentsoftware/addapptr/AdNetwork;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/intentsoftware/addapptr/AdNetwork;->REVMOB:Lcom/intentsoftware/addapptr/AdNetwork;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/intentsoftware/addapptr/AdNetwork;->PERMODO:Lcom/intentsoftware/addapptr/AdNetwork;

    aput-object v2, v0, v1

    sput-object v0, Lcom/intentsoftware/addapptr/AdNetwork;->$VALUES:[Lcom/intentsoftware/addapptr/AdNetwork;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 36
    iput-object p3, p0, Lcom/intentsoftware/addapptr/AdNetwork;->reportingName:Ljava/lang/String;

    .line 37
    invoke-virtual {p0}, Lcom/intentsoftware/addapptr/AdNetwork;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/intentsoftware/addapptr/AdNetwork;->serverConfigName:Ljava/lang/String;

    .line 38
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 41
    iput-object p3, p0, Lcom/intentsoftware/addapptr/AdNetwork;->reportingName:Ljava/lang/String;

    .line 42
    iput-object p4, p0, Lcom/intentsoftware/addapptr/AdNetwork;->serverConfigName:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public static fromServerConfigName(Ljava/lang/String;)Lcom/intentsoftware/addapptr/AdNetwork;
    .locals 5

    .prologue
    .line 50
    invoke-static {}, Lcom/intentsoftware/addapptr/AdNetwork;->values()[Lcom/intentsoftware/addapptr/AdNetwork;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 51
    iget-object v4, v0, Lcom/intentsoftware/addapptr/AdNetwork;->serverConfigName:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 56
    :goto_1
    return-object v0

    .line 50
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 56
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/intentsoftware/addapptr/AdNetwork;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/intentsoftware/addapptr/AdNetwork;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/intentsoftware/addapptr/AdNetwork;

    return-object v0
.end method

.method public static values()[Lcom/intentsoftware/addapptr/AdNetwork;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/intentsoftware/addapptr/AdNetwork;->$VALUES:[Lcom/intentsoftware/addapptr/AdNetwork;

    invoke-virtual {v0}, [Lcom/intentsoftware/addapptr/AdNetwork;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/intentsoftware/addapptr/AdNetwork;

    return-object v0
.end method


# virtual methods
.method getReportingName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/intentsoftware/addapptr/AdNetwork;->reportingName:Ljava/lang/String;

    return-object v0
.end method
