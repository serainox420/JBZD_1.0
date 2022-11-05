.class public Lcom/openx/model/vast/Wrapper;
.super Lcom/openx/model/vast/VASTParserBase;
.source "Wrapper.java"


# static fields
.field private static final VAST_ADSYSTEM:Ljava/lang/String; = "AdSystem"

.field private static final VAST_CREATIVES:Ljava/lang/String; = "Creatives"

.field private static final VAST_ERROR:Ljava/lang/String; = "Error"

.field private static final VAST_EXTENSIONS:Ljava/lang/String; = "Extensions"

.field private static final VAST_IMPRESSION:Ljava/lang/String; = "Impression"

.field private static final VAST_VASTADTAGURI:Ljava/lang/String; = "VASTAdTagURI"

.field private static final VAST_WRAPPER:Ljava/lang/String; = "Wrapper"

.field private static final serialVersionUID:J = -0x6c768322f1a0a64aL


# instance fields
.field public adSystem:Lcom/openx/model/vast/AdSystem;

.field public allowMultipleAds:Ljava/lang/String;

.field public creatives:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/openx/model/vast/Creative;",
            ">;"
        }
    .end annotation
.end field

.field public error:Lcom/openx/model/vast/Error;

.field public extensions:Lcom/openx/model/vast/Extensions;

.field public fallbackOnNoAd:Ljava/lang/String;

.field public followAdditionalWrappers:Ljava/lang/String;

.field public impressions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/openx/model/vast/Impression;",
            ">;"
        }
    .end annotation
.end field

.field public vastAdTagURI:Lcom/openx/model/vast/VASTAdTagURI;


# direct methods
.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 32
    invoke-direct {p0}, Lcom/openx/model/vast/VASTParserBase;-><init>()V

    .line 34
    const-string v0, "Wrapper"

    invoke-interface {p1, v3, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 36
    const-string v0, "followAdditionalWrappers"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/openx/model/vast/Wrapper;->followAdditionalWrappers:Ljava/lang/String;

    .line 37
    const-string v0, "allowMultipleAds"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/openx/model/vast/Wrapper;->allowMultipleAds:Ljava/lang/String;

    .line 38
    const-string v0, "fallbackOnNoAd"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/openx/model/vast/Wrapper;->fallbackOnNoAd:Ljava/lang/String;

    .line 40
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    if-eq v0, v4, :cond_8

    .line 42
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 46
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 47
    if-eqz v0, :cond_1

    const-string v1, "AdSystem"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 49
    const-string v0, "AdSystem"

    invoke-interface {p1, v3, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 50
    new-instance v0, Lcom/openx/model/vast/AdSystem;

    invoke-direct {v0, p1}, Lcom/openx/model/vast/AdSystem;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    iput-object v0, p0, Lcom/openx/model/vast/Wrapper;->adSystem:Lcom/openx/model/vast/AdSystem;

    .line 51
    const-string v0, "AdSystem"

    invoke-interface {p1, v4, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :cond_1
    if-eqz v0, :cond_2

    const-string v1, "Error"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 55
    const-string v0, "Error"

    invoke-interface {p1, v3, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 56
    new-instance v0, Lcom/openx/model/vast/Error;

    invoke-direct {v0, p1}, Lcom/openx/model/vast/Error;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    iput-object v0, p0, Lcom/openx/model/vast/Wrapper;->error:Lcom/openx/model/vast/Error;

    .line 57
    const-string v0, "Error"

    invoke-interface {p1, v4, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 59
    :cond_2
    if-eqz v0, :cond_3

    const-string v1, "VASTAdTagURI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 61
    const-string v0, "VASTAdTagURI"

    invoke-interface {p1, v3, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 62
    new-instance v0, Lcom/openx/model/vast/VASTAdTagURI;

    invoke-direct {v0, p1}, Lcom/openx/model/vast/VASTAdTagURI;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    iput-object v0, p0, Lcom/openx/model/vast/Wrapper;->vastAdTagURI:Lcom/openx/model/vast/VASTAdTagURI;

    .line 63
    const-string v0, "VASTAdTagURI"

    invoke-interface {p1, v4, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 66
    :cond_3
    if-eqz v0, :cond_5

    const-string v1, "Impression"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 68
    iget-object v0, p0, Lcom/openx/model/vast/Wrapper;->impressions:Ljava/util/ArrayList;

    if-nez v0, :cond_4

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/openx/model/vast/Wrapper;->impressions:Ljava/util/ArrayList;

    .line 72
    :cond_4
    const-string v0, "Impression"

    invoke-interface {p1, v3, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/openx/model/vast/Wrapper;->impressions:Ljava/util/ArrayList;

    new-instance v1, Lcom/openx/model/vast/Impression;

    invoke-direct {v1, p1}, Lcom/openx/model/vast/Impression;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    const-string v0, "Impression"

    invoke-interface {p1, v4, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 76
    :cond_5
    if-eqz v0, :cond_6

    const-string v1, "Creatives"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 78
    const-string v0, "Creatives"

    invoke-interface {p1, v3, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 79
    new-instance v0, Lcom/openx/model/vast/Creatives;

    invoke-direct {v0, p1}, Lcom/openx/model/vast/Creatives;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    iget-object v0, v0, Lcom/openx/model/vast/Creatives;->creatives:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/openx/model/vast/Wrapper;->creatives:Ljava/util/ArrayList;

    .line 80
    const-string v0, "Creatives"

    invoke-interface {p1, v4, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 82
    :cond_6
    if-eqz v0, :cond_7

    const-string v1, "Extensions"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 84
    const-string v0, "Extensions"

    invoke-interface {p1, v3, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 85
    new-instance v0, Lcom/openx/model/vast/Extensions;

    invoke-direct {v0, p1}, Lcom/openx/model/vast/Extensions;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    iput-object v0, p0, Lcom/openx/model/vast/Wrapper;->extensions:Lcom/openx/model/vast/Extensions;

    .line 86
    const-string v0, "Extensions"

    invoke-interface {p1, v4, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 90
    :cond_7
    invoke-virtual {p0, p1}, Lcom/openx/model/vast/Wrapper;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 94
    :cond_8
    return-void
.end method
