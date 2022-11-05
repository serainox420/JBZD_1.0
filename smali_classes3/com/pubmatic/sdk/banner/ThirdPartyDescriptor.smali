.class public Lcom/pubmatic/sdk/banner/ThirdPartyDescriptor;
.super Ljava/lang/Object;
.source "ThirdPartyDescriptor.java"


# instance fields
.field private params:Ljava/util/Map;
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

.field private properties:Ljava/util/Map;
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


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/pubmatic/sdk/banner/ThirdPartyDescriptor;->properties:Ljava/util/Map;

    .line 118
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/pubmatic/sdk/banner/ThirdPartyDescriptor;->params:Ljava/util/Map;

    .line 122
    return-void
.end method

.method public static parseDescriptor(Ljava/lang/String;)Lcom/pubmatic/sdk/banner/ThirdPartyDescriptor;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 34
    const-string v0, "<external_campaign"

    .line 35
    const-string v0, "</external_campaign>"

    .line 37
    const-string v0, "<external_campaign"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 38
    const-string v2, "</external_campaign>"

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 40
    if-eq v0, v3, :cond_0

    if-ne v2, v3, :cond_1

    .line 114
    :cond_0
    :goto_0
    return-object v1

    .line 43
    :cond_1
    const-string v3, "</external_campaign>"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 45
    new-instance v3, Lcom/pubmatic/sdk/banner/ThirdPartyDescriptor;

    invoke-direct {v3}, Lcom/pubmatic/sdk/banner/ThirdPartyDescriptor;-><init>()V

    .line 47
    new-instance v5, Ljava/util/Stack;

    invoke-direct {v5}, Ljava/util/Stack;-><init>()V

    .line 48
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 51
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    .line 52
    invoke-virtual {v2, v4}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 53
    invoke-virtual {v2, v4}, Lorg/xmlpull/v1/XmlPullParserFactory;->setValidating(Z)V

    .line 55
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    .line 56
    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v7, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 58
    :goto_1
    const-string v0, "external_campaign"

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 59
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    goto :goto_1

    .line 61
    :cond_2
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 62
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    move-object v2, v1

    .line 64
    :goto_2
    const/4 v8, 0x1

    if-eq v0, v8, :cond_4

    .line 65
    packed-switch v0, :pswitch_data_0

    move-object v0, v2

    .line 111
    :goto_3
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    move v10, v2

    move-object v2, v0

    move v0, v10

    goto :goto_2

    .line 67
    :pswitch_0
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    invoke-interface {v6}, Ljava/util/Map;->clear()V

    .line 71
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v2

    move v0, v4

    .line 72
    :goto_4
    if-ge v0, v2, :cond_3

    .line 73
    invoke-interface {v7, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v8

    .line 74
    invoke-interface {v7, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v9

    .line 76
    invoke-interface {v6, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_3
    move-object v0, v1

    .line 79
    goto :goto_3

    .line 82
    :pswitch_1
    invoke-virtual {v5}, Ljava/util/Stack;->size()I

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    move-object v1, v3

    .line 114
    goto :goto_0

    .line 85
    :cond_5
    invoke-virtual {v5}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 87
    if-eqz v2, :cond_6

    .line 88
    const-string v8, "param"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 89
    const-string v0, "name"

    invoke-interface {v6, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 90
    const-string v0, "name"

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 92
    invoke-virtual {v3}, Lcom/pubmatic/sdk/banner/ThirdPartyDescriptor;->getParams()Ljava/util/Map;

    move-result-object v8

    .line 93
    invoke-interface {v8, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    :cond_6
    :goto_5
    invoke-interface {v6}, Ljava/util/Map;->clear()V

    move-object v0, v1

    .line 104
    goto :goto_3

    .line 96
    :cond_7
    invoke-virtual {v3}, Lcom/pubmatic/sdk/banner/ThirdPartyDescriptor;->getProperties()Ljava/util/Map;

    move-result-object v8

    .line 97
    invoke-interface {v8, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 107
    :pswitch_2
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 65
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public getParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 129
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/ThirdPartyDescriptor;->params:Ljava/util/Map;

    return-object v0
.end method

.method public getProperties()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/ThirdPartyDescriptor;->properties:Ljava/util/Map;

    return-object v0
.end method
