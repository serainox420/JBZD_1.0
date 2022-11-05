.class public Lcom/pubmatic/sdk/banner/BannerAdDescriptor;
.super Ljava/lang/Object;
.source "BannerAdDescriptor.java"

# interfaces
.implements Lcom/pubmatic/sdk/common/AdResponse$Renderable;


# instance fields
.field private final adInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private errorMessage:Ljava/lang/String;

.field private mClickTrackers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mImpressionTrackers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pubmatic/sdk/banner/BannerAdDescriptor;->mImpressionTrackers:Ljava/util/ArrayList;

    .line 221
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pubmatic/sdk/banner/BannerAdDescriptor;->mClickTrackers:Ljava/util/ArrayList;

    .line 227
    iput-object v1, p0, Lcom/pubmatic/sdk/banner/BannerAdDescriptor;->errorMessage:Ljava/lang/String;

    .line 230
    iput-object v1, p0, Lcom/pubmatic/sdk/banner/BannerAdDescriptor;->adInfo:Ljava/util/Map;

    .line 231
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pubmatic/sdk/banner/BannerAdDescriptor;->mImpressionTrackers:Ljava/util/ArrayList;

    .line 221
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pubmatic/sdk/banner/BannerAdDescriptor;->mClickTrackers:Ljava/util/ArrayList;

    .line 227
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pubmatic/sdk/banner/BannerAdDescriptor;->errorMessage:Ljava/lang/String;

    .line 234
    iput-object p1, p0, Lcom/pubmatic/sdk/banner/BannerAdDescriptor;->adInfo:Ljava/util/Map;

    .line 235
    return-void
.end method

.method private static getXmlValue(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 181
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 182
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    .line 183
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 184
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 186
    :cond_0
    return-object v0
.end method

.method public static parseDescriptor(Lorg/xmlpull/v1/XmlPullParser;)Lcom/pubmatic/sdk/banner/BannerAdDescriptor;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v14, 0x4

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v2, 0x0

    .line 63
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 64
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 65
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 67
    const-string v0, "type"

    invoke-interface {p0, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 68
    const-string v1, "type"

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    const-string v0, "subtype"

    invoke-interface {p0, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 71
    const-string v1, "subtype"

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 77
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    move v3, v0

    .line 78
    :goto_0
    if-eq v3, v11, :cond_0

    .line 79
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 82
    if-ne v3, v13, :cond_1

    const-string v0, "ad"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    :cond_0
    new-instance v0, Lcom/pubmatic/sdk/banner/BannerAdDescriptor;

    invoke-direct {v0, v4}, Lcom/pubmatic/sdk/banner/BannerAdDescriptor;-><init>(Ljava/util/Map;)V

    .line 163
    invoke-virtual {v0, v5}, Lcom/pubmatic/sdk/banner/BannerAdDescriptor;->setImpressionTrackers(Ljava/util/ArrayList;)V

    .line 164
    invoke-virtual {v0, v6}, Lcom/pubmatic/sdk/banner/BannerAdDescriptor;->setClickTrackers(Ljava/util/ArrayList;)V

    .line 168
    return-object v0

    .line 85
    :cond_1
    if-ne v3, v12, :cond_5

    .line 86
    const-string v0, "type"

    invoke-interface {p0, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    const-string v1, "width"

    invoke-interface {p0, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 88
    const-string v8, "height"

    invoke-interface {p0, v2, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 89
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 90
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "Type"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz v1, :cond_3

    .line 93
    const-string v0, "width"

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    :cond_3
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    if-eqz v8, :cond_4

    .line 96
    const-string v0, "height"

    invoke-interface {v4, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    :cond_4
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 101
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 102
    const-string v0, "impressiontrackers"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 103
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 104
    const-string v7, "impressiontracker"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 105
    :goto_1
    if-eq v1, v11, :cond_5

    .line 106
    const-string v0, ""

    .line 107
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 108
    if-ne v1, v13, :cond_6

    const-string v8, "impressiontrackers"

    .line 109
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 158
    :cond_5
    :goto_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 159
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    move v3, v0

    .line 160
    goto/16 :goto_0

    .line 111
    :cond_6
    if-ne v3, v12, :cond_10

    .line 112
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    if-ne v1, v14, :cond_7

    .line 113
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 115
    :cond_7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 116
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    :cond_8
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 119
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    :goto_3
    move v1, v0

    .line 121
    goto :goto_1

    .line 123
    :cond_9
    const-string v0, "clicktrackers"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 124
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 125
    const-string v1, "clicktracker"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 126
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 127
    :goto_4
    if-eq v1, v11, :cond_5

    .line 128
    const-string v0, ""

    .line 129
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 130
    if-ne v1, v13, :cond_a

    const-string v8, "clicktrackers"

    .line 131
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 133
    :cond_a
    if-ne v3, v12, :cond_f

    .line 134
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    if-ne v1, v14, :cond_b

    .line 135
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 137
    :cond_b
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 138
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    :cond_c
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 141
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    :goto_5
    move v1, v0

    .line 143
    goto :goto_4

    .line 145
    :cond_d
    const-string v0, "mediation"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 149
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    if-ne v0, v14, :cond_e

    .line 150
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 152
    :goto_6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 153
    invoke-interface {v4, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_e
    move-object v0, v2

    goto :goto_6

    :cond_f
    move v0, v1

    goto :goto_5

    :cond_10
    move v0, v1

    goto :goto_3
.end method

.method private static seekToCurrentEndTag(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 201
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 202
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Current event of parser is not pointing to XmlPullParser.START_TAG"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :cond_0
    const/4 v0, 0x1

    .line 206
    :goto_0
    if-eqz v0, :cond_1

    .line 207
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 212
    :pswitch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 209
    :pswitch_1
    add-int/lit8 v0, v0, -0x1

    .line 210
    goto :goto_0

    .line 217
    :cond_1
    return-void

    .line 207
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getAdCreativeId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 309
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/BannerAdDescriptor;->adInfo:Ljava/util/Map;

    const-string v1, "creativeid"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 310
    return-object v0
.end method

.method public getClickTrackers()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 328
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/BannerAdDescriptor;->mClickTrackers:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 2

    .prologue
    .line 304
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/BannerAdDescriptor;->adInfo:Ljava/util/Map;

    const-string v1, "content"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 305
    return-object v0
.end method

.method public getEcpm()Ljava/lang/String;
    .locals 2

    .prologue
    .line 254
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/BannerAdDescriptor;->adInfo:Ljava/util/Map;

    const-string v1, "ecpm"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 255
    return-object v0
.end method

.method getErrroMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/BannerAdDescriptor;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()Ljava/lang/String;
    .locals 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/BannerAdDescriptor;->adInfo:Ljava/util/Map;

    const-string v1, "height"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 270
    return-object v0
.end method

.method public getImage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 289
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/BannerAdDescriptor;->adInfo:Ljava/util/Map;

    const-string v1, "img"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 290
    return-object v0
.end method

.method public getImageType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 294
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/BannerAdDescriptor;->adInfo:Ljava/util/Map;

    const-string v1, "imgType"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 295
    return-object v0
.end method

.method public getImpressionTrackers()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 314
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/BannerAdDescriptor;->mImpressionTrackers:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getRenderable()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 354
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSubType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 274
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/BannerAdDescriptor;->adInfo:Ljava/util/Map;

    const-string v1, "subtype"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 275
    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 299
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/BannerAdDescriptor;->adInfo:Ljava/util/Map;

    const-string v1, "text"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 300
    return-object v0
.end method

.method public getTrack()Ljava/lang/String;
    .locals 2

    .prologue
    .line 284
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/BannerAdDescriptor;->adInfo:Ljava/util/Map;

    const-string v1, "track"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 285
    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 259
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/BannerAdDescriptor;->adInfo:Ljava/util/Map;

    const-string v1, "type"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 260
    return-object v0
.end method

.method public getURL()Ljava/lang/String;
    .locals 2

    .prologue
    .line 279
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/BannerAdDescriptor;->adInfo:Ljava/util/Map;

    const-string v1, "url"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 280
    return-object v0
.end method

.method public getWidth()Ljava/lang/String;
    .locals 2

    .prologue
    .line 264
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/BannerAdDescriptor;->adInfo:Ljava/util/Map;

    const-string v1, "width"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 265
    return-object v0
.end method

.method public setClickTrackers(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 337
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/BannerAdDescriptor;->mClickTrackers:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/BannerAdDescriptor;->mClickTrackers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 340
    :cond_0
    iput-object p1, p0, Lcom/pubmatic/sdk/banner/BannerAdDescriptor;->mClickTrackers:Ljava/util/ArrayList;

    .line 341
    return-void
.end method

.method public setEcpm(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/BannerAdDescriptor;->adInfo:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/BannerAdDescriptor;->adInfo:Ljava/util/Map;

    const-string v1, "ecpm"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    :cond_0
    return-void
.end method

.method public setImpressionTrackers(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 318
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/BannerAdDescriptor;->mImpressionTrackers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 319
    iput-object p1, p0, Lcom/pubmatic/sdk/banner/BannerAdDescriptor;->mImpressionTrackers:Ljava/util/ArrayList;

    .line 320
    return-void
.end method
