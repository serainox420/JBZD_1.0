.class public Lcom/openx/model/vast/InLine;
.super Lcom/openx/model/vast/VASTParserBase;
.source "InLine.java"


# static fields
.field private static final VAST_ADSYSTEM:Ljava/lang/String; = "AdSystem"

.field private static final VAST_ADTITLE:Ljava/lang/String; = "AdTitle"

.field private static final VAST_ADVERTISER:Ljava/lang/String; = "Advertiser"

.field private static final VAST_CREATIVES:Ljava/lang/String; = "Creatives"

.field private static final VAST_DESCRIPTION:Ljava/lang/String; = "Description"

.field private static final VAST_ERROR:Ljava/lang/String; = "Error"

.field private static final VAST_EXTENSIONS:Ljava/lang/String; = "Extensions"

.field private static final VAST_IMPRESSION:Ljava/lang/String; = "Impression"

.field private static final VAST_INLINE:Ljava/lang/String; = "InLine"

.field private static final VAST_PRICING:Ljava/lang/String; = "Pricing"

.field private static final VAST_SURVEY:Ljava/lang/String; = "Survey"

.field private static final serialVersionUID:J = 0x25e2efbd77c45baaL


# instance fields
.field public adSystem:Lcom/openx/model/vast/AdSystem;

.field public adTitle:Lcom/openx/model/vast/AdTitle;

.field public advertiser:Lcom/openx/model/vast/Advertiser;

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

.field public description:Lcom/openx/model/vast/Description;

.field public error:Lcom/openx/model/vast/Error;

.field public extensions:Lcom/openx/model/vast/Extensions;

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

.field public pricing:Lcom/openx/model/vast/Pricing;

.field public survey:Lcom/openx/model/vast/Survey;


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

    .line 37
    invoke-direct {p0}, Lcom/openx/model/vast/VASTParserBase;-><init>()V

    .line 39
    const-string v0, "InLine"

    invoke-interface {p1, v3, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 41
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    if-eq v0, v4, :cond_c

    .line 43
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 47
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 48
    if-eqz v0, :cond_1

    const-string v1, "AdSystem"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 50
    const-string v0, "AdSystem"

    invoke-interface {p1, v3, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 51
    new-instance v0, Lcom/openx/model/vast/AdSystem;

    invoke-direct {v0, p1}, Lcom/openx/model/vast/AdSystem;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    iput-object v0, p0, Lcom/openx/model/vast/InLine;->adSystem:Lcom/openx/model/vast/AdSystem;

    .line 52
    const-string v0, "AdSystem"

    invoke-interface {p1, v4, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 54
    :cond_1
    if-eqz v0, :cond_2

    const-string v1, "AdTitle"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 56
    const-string v0, "AdTitle"

    invoke-interface {p1, v3, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 57
    new-instance v0, Lcom/openx/model/vast/AdTitle;

    invoke-direct {v0, p1}, Lcom/openx/model/vast/AdTitle;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    iput-object v0, p0, Lcom/openx/model/vast/InLine;->adTitle:Lcom/openx/model/vast/AdTitle;

    .line 58
    const-string v0, "AdTitle"

    invoke-interface {p1, v4, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 60
    :cond_2
    if-eqz v0, :cond_3

    const-string v1, "Description"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 62
    const-string v0, "Description"

    invoke-interface {p1, v3, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 63
    new-instance v0, Lcom/openx/model/vast/Description;

    invoke-direct {v0, p1}, Lcom/openx/model/vast/Description;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    iput-object v0, p0, Lcom/openx/model/vast/InLine;->description:Lcom/openx/model/vast/Description;

    .line 64
    const-string v0, "Description"

    invoke-interface {p1, v4, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 66
    :cond_3
    if-eqz v0, :cond_4

    const-string v1, "Advertiser"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 68
    const-string v0, "Advertiser"

    invoke-interface {p1, v3, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 69
    new-instance v0, Lcom/openx/model/vast/Advertiser;

    invoke-direct {v0, p1}, Lcom/openx/model/vast/Advertiser;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    iput-object v0, p0, Lcom/openx/model/vast/InLine;->advertiser:Lcom/openx/model/vast/Advertiser;

    .line 70
    const-string v0, "Advertiser"

    invoke-interface {p1, v4, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 72
    :cond_4
    if-eqz v0, :cond_5

    const-string v1, "Pricing"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 74
    const-string v0, "Pricing"

    invoke-interface {p1, v3, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 75
    new-instance v0, Lcom/openx/model/vast/Pricing;

    invoke-direct {v0, p1}, Lcom/openx/model/vast/Pricing;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    iput-object v0, p0, Lcom/openx/model/vast/InLine;->pricing:Lcom/openx/model/vast/Pricing;

    .line 76
    const-string v0, "Pricing"

    invoke-interface {p1, v4, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 78
    :cond_5
    if-eqz v0, :cond_6

    const-string v1, "Survey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 80
    const-string v0, "Survey"

    invoke-interface {p1, v3, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 81
    new-instance v0, Lcom/openx/model/vast/Survey;

    invoke-direct {v0, p1}, Lcom/openx/model/vast/Survey;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    iput-object v0, p0, Lcom/openx/model/vast/InLine;->survey:Lcom/openx/model/vast/Survey;

    .line 82
    const-string v0, "Survey"

    invoke-interface {p1, v4, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 84
    :cond_6
    if-eqz v0, :cond_7

    const-string v1, "Error"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 86
    const-string v0, "Error"

    invoke-interface {p1, v3, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 87
    new-instance v0, Lcom/openx/model/vast/Error;

    invoke-direct {v0, p1}, Lcom/openx/model/vast/Error;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    iput-object v0, p0, Lcom/openx/model/vast/InLine;->error:Lcom/openx/model/vast/Error;

    .line 88
    const-string v0, "Error"

    invoke-interface {p1, v4, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 90
    :cond_7
    if-eqz v0, :cond_9

    const-string v1, "Impression"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 92
    iget-object v0, p0, Lcom/openx/model/vast/InLine;->impressions:Ljava/util/ArrayList;

    if-nez v0, :cond_8

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/openx/model/vast/InLine;->impressions:Ljava/util/ArrayList;

    .line 96
    :cond_8
    const-string v0, "Impression"

    invoke-interface {p1, v3, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/openx/model/vast/InLine;->impressions:Ljava/util/ArrayList;

    new-instance v1, Lcom/openx/model/vast/Impression;

    invoke-direct {v1, p1}, Lcom/openx/model/vast/Impression;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    const-string v0, "Impression"

    invoke-interface {p1, v4, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 100
    :cond_9
    if-eqz v0, :cond_a

    const-string v1, "Creatives"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 102
    const-string v0, "Creatives"

    invoke-interface {p1, v3, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 103
    new-instance v0, Lcom/openx/model/vast/Creatives;

    invoke-direct {v0, p1}, Lcom/openx/model/vast/Creatives;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    iget-object v0, v0, Lcom/openx/model/vast/Creatives;->creatives:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/openx/model/vast/InLine;->creatives:Ljava/util/ArrayList;

    .line 104
    const-string v0, "Creatives"

    invoke-interface {p1, v4, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 106
    :cond_a
    if-eqz v0, :cond_b

    const-string v1, "Extensions"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 108
    const-string v0, "Extensions"

    invoke-interface {p1, v3, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 109
    new-instance v0, Lcom/openx/model/vast/Extensions;

    invoke-direct {v0, p1}, Lcom/openx/model/vast/Extensions;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    iput-object v0, p0, Lcom/openx/model/vast/InLine;->extensions:Lcom/openx/model/vast/Extensions;

    .line 110
    const-string v0, "Extensions"

    invoke-interface {p1, v4, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 114
    :cond_b
    invoke-virtual {p0, p1}, Lcom/openx/model/vast/InLine;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 118
    :cond_c
    return-void
.end method
