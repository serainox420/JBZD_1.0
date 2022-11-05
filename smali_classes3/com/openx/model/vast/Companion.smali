.class public Lcom/openx/model/vast/Companion;
.super Lcom/openx/model/vast/VASTParserBase;
.source "Companion.java"


# static fields
.field private static final VAST_ADPARAMETERS:Ljava/lang/String; = "AdParameters"

.field private static final VAST_ALTTEXT:Ljava/lang/String; = "AltText"

.field private static final VAST_COMPANION:Ljava/lang/String; = "Companion"

.field private static final VAST_COMPANIONCLICKTHROUGH:Ljava/lang/String; = "CompanionClickThrough"

.field private static final VAST_COMPANIONCLICKTRACKING:Ljava/lang/String; = "CompanionClickTracking"

.field private static final VAST_HTMLRESOURCE:Ljava/lang/String; = "HTMLResource"

.field private static final VAST_IFRAMERESOUCE:Ljava/lang/String; = "IFrameResource"

.field private static final VAST_STATICRESOURCE:Ljava/lang/String; = "StaticResource"

.field private static final VAST_TRACKINGEVENTS:Ljava/lang/String; = "TrackingEvents"

.field private static final serialVersionUID:J = 0x4a899a2b65092a3dL


# instance fields
.field public adParameters:Lcom/openx/model/vast/AdParameters;

.field public adSlotID:Ljava/lang/String;

.field public altText:Lcom/openx/model/vast/AltText;

.field public apiFramework:Ljava/lang/String;

.field public assetHeight:Ljava/lang/String;

.field public assetWidth:Ljava/lang/String;

.field public companionClickThrough:Lcom/openx/model/vast/CompanionClickThrough;

.field public companionClickTracking:Lcom/openx/model/vast/CompanionClickTracking;

.field public expandedHeight:Ljava/lang/String;

.field public expandedWidth:Ljava/lang/String;

.field public height:Ljava/lang/String;

.field public htmlResource:Lcom/openx/model/vast/HTMLResource;

.field public iFrameResource:Lcom/openx/model/vast/IFrameResource;

.field public id:Ljava/lang/String;

.field public staticResource:Lcom/openx/model/vast/StaticResource;

.field public trackingEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/openx/model/vast/Tracking;",
            ">;"
        }
    .end annotation
.end field

.field public width:Ljava/lang/String;


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

    .line 42
    invoke-direct {p0}, Lcom/openx/model/vast/VASTParserBase;-><init>()V

    .line 44
    const-string v0, "Companion"

    invoke-interface {p1, v3, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 46
    const-string v0, "id"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/openx/model/vast/Companion;->id:Ljava/lang/String;

    .line 47
    const-string v0, "width"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/openx/model/vast/Companion;->width:Ljava/lang/String;

    .line 48
    const-string v0, "height"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/openx/model/vast/Companion;->height:Ljava/lang/String;

    .line 49
    const-string v0, "assetWidth"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/openx/model/vast/Companion;->assetWidth:Ljava/lang/String;

    .line 50
    const-string v0, "assetHeight"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/openx/model/vast/Companion;->assetHeight:Ljava/lang/String;

    .line 51
    const-string v0, "expandedWidth"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/openx/model/vast/Companion;->expandedWidth:Ljava/lang/String;

    .line 52
    const-string v0, "expandedHeight"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/openx/model/vast/Companion;->expandedHeight:Ljava/lang/String;

    .line 53
    const-string v0, "apiFramework"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/openx/model/vast/Companion;->apiFramework:Ljava/lang/String;

    .line 54
    const-string v0, "adSlotID"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/openx/model/vast/Companion;->adSlotID:Ljava/lang/String;

    .line 56
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    if-eq v0, v4, :cond_9

    .line 58
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 62
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 63
    if-eqz v0, :cond_1

    const-string v1, "StaticResource"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 65
    const-string v0, "StaticResource"

    invoke-interface {p1, v3, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 66
    new-instance v0, Lcom/openx/model/vast/StaticResource;

    invoke-direct {v0, p1}, Lcom/openx/model/vast/StaticResource;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    iput-object v0, p0, Lcom/openx/model/vast/Companion;->staticResource:Lcom/openx/model/vast/StaticResource;

    .line 67
    const-string v0, "StaticResource"

    invoke-interface {p1, v4, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 69
    :cond_1
    if-eqz v0, :cond_2

    const-string v1, "IFrameResource"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 71
    const-string v0, "IFrameResource"

    invoke-interface {p1, v3, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 72
    new-instance v0, Lcom/openx/model/vast/IFrameResource;

    invoke-direct {v0, p1}, Lcom/openx/model/vast/IFrameResource;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    iput-object v0, p0, Lcom/openx/model/vast/Companion;->iFrameResource:Lcom/openx/model/vast/IFrameResource;

    .line 73
    const-string v0, "IFrameResource"

    invoke-interface {p1, v4, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 75
    :cond_2
    if-eqz v0, :cond_3

    const-string v1, "HTMLResource"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 77
    const-string v0, "HTMLResource"

    invoke-interface {p1, v3, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 78
    new-instance v0, Lcom/openx/model/vast/HTMLResource;

    invoke-direct {v0, p1}, Lcom/openx/model/vast/HTMLResource;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    iput-object v0, p0, Lcom/openx/model/vast/Companion;->htmlResource:Lcom/openx/model/vast/HTMLResource;

    .line 79
    const-string v0, "HTMLResource"

    invoke-interface {p1, v4, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 81
    :cond_3
    if-eqz v0, :cond_4

    const-string v1, "AdParameters"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 83
    const-string v0, "AdParameters"

    invoke-interface {p1, v3, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 84
    new-instance v0, Lcom/openx/model/vast/AdParameters;

    invoke-direct {v0, p1}, Lcom/openx/model/vast/AdParameters;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    iput-object v0, p0, Lcom/openx/model/vast/Companion;->adParameters:Lcom/openx/model/vast/AdParameters;

    .line 85
    const-string v0, "AdParameters"

    invoke-interface {p1, v4, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 87
    :cond_4
    if-eqz v0, :cond_5

    const-string v1, "AltText"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 89
    const-string v0, "AltText"

    invoke-interface {p1, v3, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 90
    new-instance v0, Lcom/openx/model/vast/AltText;

    invoke-direct {v0, p1}, Lcom/openx/model/vast/AltText;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    iput-object v0, p0, Lcom/openx/model/vast/Companion;->altText:Lcom/openx/model/vast/AltText;

    .line 91
    const-string v0, "AltText"

    invoke-interface {p1, v4, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 93
    :cond_5
    if-eqz v0, :cond_6

    const-string v1, "CompanionClickThrough"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 95
    const-string v0, "CompanionClickThrough"

    invoke-interface {p1, v3, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 96
    new-instance v0, Lcom/openx/model/vast/CompanionClickThrough;

    invoke-direct {v0, p1}, Lcom/openx/model/vast/CompanionClickThrough;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    iput-object v0, p0, Lcom/openx/model/vast/Companion;->companionClickThrough:Lcom/openx/model/vast/CompanionClickThrough;

    .line 97
    const-string v0, "CompanionClickThrough"

    invoke-interface {p1, v4, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 99
    :cond_6
    if-eqz v0, :cond_7

    const-string v1, "CompanionClickTracking"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 101
    const-string v0, "CompanionClickTracking"

    invoke-interface {p1, v3, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 102
    new-instance v0, Lcom/openx/model/vast/CompanionClickTracking;

    invoke-direct {v0, p1}, Lcom/openx/model/vast/CompanionClickTracking;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    iput-object v0, p0, Lcom/openx/model/vast/Companion;->companionClickTracking:Lcom/openx/model/vast/CompanionClickTracking;

    .line 103
    const-string v0, "CompanionClickTracking"

    invoke-interface {p1, v4, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 105
    :cond_7
    if-eqz v0, :cond_8

    const-string v1, "TrackingEvents"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 107
    const-string v0, "TrackingEvents"

    invoke-interface {p1, v3, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 108
    new-instance v0, Lcom/openx/model/vast/TrackingEvents;

    invoke-direct {v0, p1}, Lcom/openx/model/vast/TrackingEvents;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    iget-object v0, v0, Lcom/openx/model/vast/TrackingEvents;->trackingEvents:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/openx/model/vast/Companion;->trackingEvents:Ljava/util/ArrayList;

    .line 109
    const-string v0, "TrackingEvents"

    invoke-interface {p1, v4, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 113
    :cond_8
    invoke-virtual {p0, p1}, Lcom/openx/model/vast/Companion;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 117
    :cond_9
    return-void
.end method
