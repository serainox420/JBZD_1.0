.class public Lcom/intentsoftware/addapptr/b;
.super Ljava/lang/Object;
.source "AdConfig.java"


# instance fields
.field private final adId:Ljava/lang/String;

.field private final bannerSize:Lcom/intentsoftware/addapptr/BannerSize;

.field private lastTryTimestamp:J

.field private final network:Lcom/intentsoftware/addapptr/AdNetwork;

.field private final percentage:I

.field private final placementName:Ljava/lang/String;

.field private final priority:I

.field private final size:Lcom/intentsoftware/addapptr/AdType;


# direct methods
.method public constructor <init>(Lcom/intentsoftware/addapptr/AdType;Lcom/intentsoftware/addapptr/AdNetwork;Ljava/lang/String;IILjava/lang/String;Lcom/intentsoftware/addapptr/BannerSize;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p2, p0, Lcom/intentsoftware/addapptr/b;->network:Lcom/intentsoftware/addapptr/AdNetwork;

    .line 19
    iput-object p1, p0, Lcom/intentsoftware/addapptr/b;->size:Lcom/intentsoftware/addapptr/AdType;

    .line 20
    iput-object p3, p0, Lcom/intentsoftware/addapptr/b;->adId:Ljava/lang/String;

    .line 21
    iput p4, p0, Lcom/intentsoftware/addapptr/b;->priority:I

    .line 22
    iput p5, p0, Lcom/intentsoftware/addapptr/b;->percentage:I

    .line 23
    iput-object p6, p0, Lcom/intentsoftware/addapptr/b;->placementName:Ljava/lang/String;

    .line 24
    iput-object p7, p0, Lcom/intentsoftware/addapptr/b;->bannerSize:Lcom/intentsoftware/addapptr/BannerSize;

    .line 25
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 196
    if-ne p0, p1, :cond_1

    move v1, v0

    .line 208
    :cond_0
    :goto_0
    return v1

    .line 197
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 199
    check-cast p1, Lcom/intentsoftware/addapptr/b;

    .line 201
    iget v2, p0, Lcom/intentsoftware/addapptr/b;->priority:I

    iget v3, p1, Lcom/intentsoftware/addapptr/b;->priority:I

    if-ne v2, v3, :cond_0

    .line 202
    iget v2, p0, Lcom/intentsoftware/addapptr/b;->percentage:I

    iget v3, p1, Lcom/intentsoftware/addapptr/b;->percentage:I

    if-ne v2, v3, :cond_0

    .line 203
    iget-object v2, p0, Lcom/intentsoftware/addapptr/b;->network:Lcom/intentsoftware/addapptr/AdNetwork;

    iget-object v3, p1, Lcom/intentsoftware/addapptr/b;->network:Lcom/intentsoftware/addapptr/AdNetwork;

    if-ne v2, v3, :cond_0

    .line 204
    iget-object v2, p0, Lcom/intentsoftware/addapptr/b;->size:Lcom/intentsoftware/addapptr/AdType;

    iget-object v3, p1, Lcom/intentsoftware/addapptr/b;->size:Lcom/intentsoftware/addapptr/AdType;

    if-ne v2, v3, :cond_0

    .line 205
    iget-object v2, p0, Lcom/intentsoftware/addapptr/b;->adId:Ljava/lang/String;

    iget-object v3, p1, Lcom/intentsoftware/addapptr/b;->adId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 206
    iget-object v2, p0, Lcom/intentsoftware/addapptr/b;->placementName:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/intentsoftware/addapptr/b;->placementName:Ljava/lang/String;

    iget-object v3, p1, Lcom/intentsoftware/addapptr/b;->placementName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 208
    :cond_2
    iget-object v2, p0, Lcom/intentsoftware/addapptr/b;->bannerSize:Lcom/intentsoftware/addapptr/BannerSize;

    iget-object v3, p1, Lcom/intentsoftware/addapptr/b;->bannerSize:Lcom/intentsoftware/addapptr/BannerSize;

    if-ne v2, v3, :cond_4

    :goto_1
    move v1, v0

    goto :goto_0

    .line 206
    :cond_3
    iget-object v2, p1, Lcom/intentsoftware/addapptr/b;->placementName:Ljava/lang/String;

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_4
    move v0, v1

    .line 208
    goto :goto_1
.end method

.method getAdId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/intentsoftware/addapptr/b;->adId:Ljava/lang/String;

    return-object v0
.end method

.method getBannerSize()Lcom/intentsoftware/addapptr/BannerSize;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/intentsoftware/addapptr/b;->bannerSize:Lcom/intentsoftware/addapptr/BannerSize;

    return-object v0
.end method

.method getLastTryTimestamp()J
    .locals 2

    .prologue
    .line 186
    iget-wide v0, p0, Lcom/intentsoftware/addapptr/b;->lastTryTimestamp:J

    return-wide v0
.end method

.method public getNetwork()Lcom/intentsoftware/addapptr/AdNetwork;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/intentsoftware/addapptr/b;->network:Lcom/intentsoftware/addapptr/AdNetwork;

    return-object v0
.end method

.method getPercentage()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/intentsoftware/addapptr/b;->percentage:I

    return v0
.end method

.method getPlacementName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/intentsoftware/addapptr/b;->placementName:Ljava/lang/String;

    return-object v0
.end method

.method getPriority()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/intentsoftware/addapptr/b;->priority:I

    return v0
.end method

.method getSize()Lcom/intentsoftware/addapptr/AdType;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/intentsoftware/addapptr/b;->size:Lcom/intentsoftware/addapptr/AdType;

    return-object v0
.end method

.method getSupportedPlacementSizes()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/intentsoftware/addapptr/PlacementSize;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 57
    iget-object v0, p0, Lcom/intentsoftware/addapptr/b;->bannerSize:Lcom/intentsoftware/addapptr/BannerSize;

    if-eqz v0, :cond_1

    .line 58
    sget-object v0, Lcom/intentsoftware/addapptr/PlacementSize;->MultiSizeBanner:Lcom/intentsoftware/addapptr/PlacementSize;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    invoke-static {}, Lcom/intentsoftware/addapptr/PlacementSize;->values()[Lcom/intentsoftware/addapptr/PlacementSize;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_2

    aget-object v4, v2, v0

    .line 60
    invoke-virtual {v4}, Lcom/intentsoftware/addapptr/PlacementSize;->getBannerSize()Lcom/intentsoftware/addapptr/BannerSize;

    move-result-object v5

    iget-object v6, p0, Lcom/intentsoftware/addapptr/b;->bannerSize:Lcom/intentsoftware/addapptr/BannerSize;

    if-ne v5, v6, :cond_0

    .line 61
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 64
    :cond_1
    iget-object v0, p0, Lcom/intentsoftware/addapptr/b;->size:Lcom/intentsoftware/addapptr/AdType;

    sget-object v2, Lcom/intentsoftware/addapptr/AdType;->FULLSCREEN:Lcom/intentsoftware/addapptr/AdType;

    if-ne v0, v2, :cond_3

    .line 65
    sget-object v0, Lcom/intentsoftware/addapptr/PlacementSize;->Fullscreen:Lcom/intentsoftware/addapptr/PlacementSize;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    :cond_2
    :goto_1
    return-object v1

    .line 66
    :cond_3
    iget-object v0, p0, Lcom/intentsoftware/addapptr/b;->size:Lcom/intentsoftware/addapptr/AdType;

    sget-object v2, Lcom/intentsoftware/addapptr/AdType;->NATIVE:Lcom/intentsoftware/addapptr/AdType;

    if-ne v0, v2, :cond_4

    .line 67
    sget-object v0, Lcom/intentsoftware/addapptr/PlacementSize;->Native:Lcom/intentsoftware/addapptr/PlacementSize;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 68
    :cond_4
    iget-object v0, p0, Lcom/intentsoftware/addapptr/b;->size:Lcom/intentsoftware/addapptr/AdType;

    sget-object v2, Lcom/intentsoftware/addapptr/AdType;->NATIVE_BANNER:Lcom/intentsoftware/addapptr/AdType;

    if-ne v0, v2, :cond_5

    .line 69
    sget-object v0, Lcom/intentsoftware/addapptr/PlacementSize;->Banner300x250:Lcom/intentsoftware/addapptr/PlacementSize;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    sget-object v0, Lcom/intentsoftware/addapptr/PlacementSize;->Banner320x53:Lcom/intentsoftware/addapptr/PlacementSize;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    sget-object v0, Lcom/intentsoftware/addapptr/PlacementSize;->Banner768x90:Lcom/intentsoftware/addapptr/PlacementSize;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    sget-object v0, Lcom/intentsoftware/addapptr/PlacementSize;->Banner468x60:Lcom/intentsoftware/addapptr/PlacementSize;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 73
    :cond_5
    iget-object v0, p0, Lcom/intentsoftware/addapptr/b;->size:Lcom/intentsoftware/addapptr/AdType;

    sget-object v2, Lcom/intentsoftware/addapptr/AdType;->NATIVE_INTERSTITIAL:Lcom/intentsoftware/addapptr/AdType;

    if-ne v0, v2, :cond_6

    .line 74
    sget-object v0, Lcom/intentsoftware/addapptr/PlacementSize;->Fullscreen:Lcom/intentsoftware/addapptr/PlacementSize;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 76
    :cond_6
    sget-object v0, Lcom/intentsoftware/addapptr/b$1;->$SwitchMap$com$intentsoftware$addapptr$AdNetwork:[I

    iget-object v2, p0, Lcom/intentsoftware/addapptr/b;->network:Lcom/intentsoftware/addapptr/AdNetwork;

    invoke-virtual {v2}, Lcom/intentsoftware/addapptr/AdNetwork;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 78
    :pswitch_0
    sget-object v0, Lcom/intentsoftware/addapptr/PlacementSize;->Banner300x250:Lcom/intentsoftware/addapptr/PlacementSize;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    sget-object v0, Lcom/intentsoftware/addapptr/PlacementSize;->Banner320x53:Lcom/intentsoftware/addapptr/PlacementSize;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    sget-object v0, Lcom/intentsoftware/addapptr/PlacementSize;->Banner768x90:Lcom/intentsoftware/addapptr/PlacementSize;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 83
    :pswitch_1
    sget-object v0, Lcom/intentsoftware/addapptr/PlacementSize;->Banner300x250:Lcom/intentsoftware/addapptr/PlacementSize;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    sget-object v0, Lcom/intentsoftware/addapptr/PlacementSize;->Banner320x53:Lcom/intentsoftware/addapptr/PlacementSize;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    sget-object v0, Lcom/intentsoftware/addapptr/PlacementSize;->Banner768x90:Lcom/intentsoftware/addapptr/PlacementSize;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 88
    :pswitch_2
    sget-object v0, Lcom/intentsoftware/addapptr/PlacementSize;->Banner300x250:Lcom/intentsoftware/addapptr/PlacementSize;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    sget-object v0, Lcom/intentsoftware/addapptr/PlacementSize;->Banner320x53:Lcom/intentsoftware/addapptr/PlacementSize;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    sget-object v0, Lcom/intentsoftware/addapptr/PlacementSize;->Banner768x90:Lcom/intentsoftware/addapptr/PlacementSize;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    sget-object v0, Lcom/intentsoftware/addapptr/PlacementSize;->Banner468x60:Lcom/intentsoftware/addapptr/PlacementSize;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 94
    :pswitch_3
    sget-object v0, Lcom/intentsoftware/addapptr/PlacementSize;->Banner300x250:Lcom/intentsoftware/addapptr/PlacementSize;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    sget-object v0, Lcom/intentsoftware/addapptr/PlacementSize;->Banner320x53:Lcom/intentsoftware/addapptr/PlacementSize;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    sget-object v0, Lcom/intentsoftware/addapptr/PlacementSize;->Banner768x90:Lcom/intentsoftware/addapptr/PlacementSize;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    sget-object v0, Lcom/intentsoftware/addapptr/PlacementSize;->Banner468x60:Lcom/intentsoftware/addapptr/PlacementSize;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 100
    :pswitch_4
    sget-object v0, Lcom/intentsoftware/addapptr/PlacementSize;->Banner300x250:Lcom/intentsoftware/addapptr/PlacementSize;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    sget-object v0, Lcom/intentsoftware/addapptr/PlacementSize;->Banner320x53:Lcom/intentsoftware/addapptr/PlacementSize;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    sget-object v0, Lcom/intentsoftware/addapptr/PlacementSize;->Banner768x90:Lcom/intentsoftware/addapptr/PlacementSize;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 105
    :pswitch_5
    sget-object v0, Lcom/intentsoftware/addapptr/PlacementSize;->Banner300x250:Lcom/intentsoftware/addapptr/PlacementSize;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    sget-object v0, Lcom/intentsoftware/addapptr/PlacementSize;->Banner320x53:Lcom/intentsoftware/addapptr/PlacementSize;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    sget-object v0, Lcom/intentsoftware/addapptr/PlacementSize;->Banner768x90:Lcom/intentsoftware/addapptr/PlacementSize;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    sget-object v0, Lcom/intentsoftware/addapptr/PlacementSize;->Banner468x60:Lcom/intentsoftware/addapptr/PlacementSize;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 111
    :pswitch_6
    sget-object v0, Lcom/intentsoftware/addapptr/PlacementSize;->Banner300x250:Lcom/intentsoftware/addapptr/PlacementSize;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    sget-object v0, Lcom/intentsoftware/addapptr/PlacementSize;->Banner320x53:Lcom/intentsoftware/addapptr/PlacementSize;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    sget-object v0, Lcom/intentsoftware/addapptr/PlacementSize;->Banner768x90:Lcom/intentsoftware/addapptr/PlacementSize;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    sget-object v0, Lcom/intentsoftware/addapptr/PlacementSize;->Banner468x60:Lcom/intentsoftware/addapptr/PlacementSize;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 117
    :pswitch_7
    sget-object v0, Lcom/intentsoftware/addapptr/PlacementSize;->Banner320x53:Lcom/intentsoftware/addapptr/PlacementSize;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    sget-object v0, Lcom/intentsoftware/addapptr/PlacementSize;->Banner300x250:Lcom/intentsoftware/addapptr/PlacementSize;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    sget-object v0, Lcom/intentsoftware/addapptr/PlacementSize;->Banner768x90:Lcom/intentsoftware/addapptr/PlacementSize;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    sget-object v0, Lcom/intentsoftware/addapptr/PlacementSize;->Banner468x60:Lcom/intentsoftware/addapptr/PlacementSize;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 123
    :pswitch_8
    sget-object v0, Lcom/intentsoftware/addapptr/PlacementSize;->Banner300x250:Lcom/intentsoftware/addapptr/PlacementSize;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    sget-object v0, Lcom/intentsoftware/addapptr/PlacementSize;->Banner320x53:Lcom/intentsoftware/addapptr/PlacementSize;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    sget-object v0, Lcom/intentsoftware/addapptr/PlacementSize;->Banner768x90:Lcom/intentsoftware/addapptr/PlacementSize;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 128
    :pswitch_9
    sget-object v0, Lcom/intentsoftware/addapptr/PlacementSize;->Banner300x250:Lcom/intentsoftware/addapptr/PlacementSize;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    sget-object v0, Lcom/intentsoftware/addapptr/PlacementSize;->Banner320x53:Lcom/intentsoftware/addapptr/PlacementSize;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    sget-object v0, Lcom/intentsoftware/addapptr/PlacementSize;->Banner768x90:Lcom/intentsoftware/addapptr/PlacementSize;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    sget-object v0, Lcom/intentsoftware/addapptr/PlacementSize;->Banner468x60:Lcom/intentsoftware/addapptr/PlacementSize;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 134
    :pswitch_a
    sget-object v0, Lcom/intentsoftware/addapptr/PlacementSize;->Banner300x250:Lcom/intentsoftware/addapptr/PlacementSize;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    sget-object v0, Lcom/intentsoftware/addapptr/PlacementSize;->Banner320x53:Lcom/intentsoftware/addapptr/PlacementSize;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    sget-object v0, Lcom/intentsoftware/addapptr/PlacementSize;->Banner768x90:Lcom/intentsoftware/addapptr/PlacementSize;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    sget-object v0, Lcom/intentsoftware/addapptr/PlacementSize;->Banner468x60:Lcom/intentsoftware/addapptr/PlacementSize;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 140
    :pswitch_b
    sget-object v0, Lcom/intentsoftware/addapptr/PlacementSize;->Banner320x53:Lcom/intentsoftware/addapptr/PlacementSize;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    sget-object v0, Lcom/intentsoftware/addapptr/PlacementSize;->Banner300x250:Lcom/intentsoftware/addapptr/PlacementSize;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    sget-object v0, Lcom/intentsoftware/addapptr/PlacementSize;->Banner768x90:Lcom/intentsoftware/addapptr/PlacementSize;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 145
    :pswitch_c
    sget-object v0, Lcom/intentsoftware/addapptr/PlacementSize;->Banner300x250:Lcom/intentsoftware/addapptr/PlacementSize;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    sget-object v0, Lcom/intentsoftware/addapptr/PlacementSize;->Banner320x53:Lcom/intentsoftware/addapptr/PlacementSize;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    sget-object v0, Lcom/intentsoftware/addapptr/PlacementSize;->Banner768x90:Lcom/intentsoftware/addapptr/PlacementSize;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 150
    :pswitch_d
    sget-object v0, Lcom/intentsoftware/addapptr/PlacementSize;->Banner320x53:Lcom/intentsoftware/addapptr/PlacementSize;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    sget-object v0, Lcom/intentsoftware/addapptr/PlacementSize;->Banner300x250:Lcom/intentsoftware/addapptr/PlacementSize;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 154
    :pswitch_e
    sget-object v0, Lcom/intentsoftware/addapptr/PlacementSize;->Banner300x250:Lcom/intentsoftware/addapptr/PlacementSize;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    sget-object v0, Lcom/intentsoftware/addapptr/PlacementSize;->Banner320x53:Lcom/intentsoftware/addapptr/PlacementSize;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    sget-object v0, Lcom/intentsoftware/addapptr/PlacementSize;->Banner768x90:Lcom/intentsoftware/addapptr/PlacementSize;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 159
    :pswitch_f
    sget-object v0, Lcom/intentsoftware/addapptr/PlacementSize;->Banner300x250:Lcom/intentsoftware/addapptr/PlacementSize;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    sget-object v0, Lcom/intentsoftware/addapptr/PlacementSize;->Banner320x53:Lcom/intentsoftware/addapptr/PlacementSize;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    sget-object v0, Lcom/intentsoftware/addapptr/PlacementSize;->Banner468x60:Lcom/intentsoftware/addapptr/PlacementSize;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    sget-object v0, Lcom/intentsoftware/addapptr/PlacementSize;->Banner768x90:Lcom/intentsoftware/addapptr/PlacementSize;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 165
    :pswitch_10
    sget-object v0, Lcom/intentsoftware/addapptr/PlacementSize;->Banner300x250:Lcom/intentsoftware/addapptr/PlacementSize;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    sget-object v0, Lcom/intentsoftware/addapptr/PlacementSize;->Banner320x53:Lcom/intentsoftware/addapptr/PlacementSize;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    sget-object v0, Lcom/intentsoftware/addapptr/PlacementSize;->Banner468x60:Lcom/intentsoftware/addapptr/PlacementSize;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    sget-object v0, Lcom/intentsoftware/addapptr/PlacementSize;->Banner768x90:Lcom/intentsoftware/addapptr/PlacementSize;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 171
    :pswitch_11
    sget-object v0, Lcom/intentsoftware/addapptr/PlacementSize;->Banner320x53:Lcom/intentsoftware/addapptr/PlacementSize;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 174
    :pswitch_12
    sget-object v0, Lcom/intentsoftware/addapptr/PlacementSize;->Banner320x53:Lcom/intentsoftware/addapptr/PlacementSize;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 76
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
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
    .end packed-switch
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 213
    iget-object v0, p0, Lcom/intentsoftware/addapptr/b;->network:Lcom/intentsoftware/addapptr/AdNetwork;

    invoke-virtual {v0}, Lcom/intentsoftware/addapptr/AdNetwork;->hashCode()I

    move-result v0

    .line 214
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/intentsoftware/addapptr/b;->size:Lcom/intentsoftware/addapptr/AdType;

    invoke-virtual {v2}, Lcom/intentsoftware/addapptr/AdType;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 215
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/intentsoftware/addapptr/b;->adId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 216
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/intentsoftware/addapptr/b;->priority:I

    add-int/2addr v0, v2

    .line 217
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/intentsoftware/addapptr/b;->percentage:I

    add-int/2addr v0, v2

    .line 218
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/intentsoftware/addapptr/b;->placementName:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/intentsoftware/addapptr/b;->placementName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v2

    .line 219
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/intentsoftware/addapptr/b;->bannerSize:Lcom/intentsoftware/addapptr/BannerSize;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/intentsoftware/addapptr/b;->bannerSize:Lcom/intentsoftware/addapptr/BannerSize;

    invoke-virtual {v1}, Lcom/intentsoftware/addapptr/BannerSize;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 220
    return v0

    :cond_1
    move v0, v1

    .line 218
    goto :goto_0
.end method

.method setLastTryTimestamp(J)V
    .locals 1

    .prologue
    .line 190
    iput-wide p1, p0, Lcom/intentsoftware/addapptr/b;->lastTryTimestamp:J

    .line 191
    return-void
.end method
