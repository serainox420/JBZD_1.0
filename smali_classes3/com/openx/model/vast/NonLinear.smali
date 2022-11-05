.class public Lcom/openx/model/vast/NonLinear;
.super Lcom/openx/model/vast/VASTParserBase;
.source "NonLinear.java"


# static fields
.field private static final VAST_ADPARAMETERS:Ljava/lang/String; = "AdParameters"

.field private static final VAST_HTMLRESOURCE:Ljava/lang/String; = "HTMLResource"

.field private static final VAST_IFRAMERESOUCE:Ljava/lang/String; = "IFrameResource"

.field private static final VAST_NONLINEAR:Ljava/lang/String; = "NonLinear"

.field private static final VAST_NONLINEARCLICKTHROUGH:Ljava/lang/String; = "NonLinearClickThrough"

.field private static final VAST_NONLINEARCLICKTRACKING:Ljava/lang/String; = "NonLinearClickTracking"

.field private static final VAST_STATICRESOURCE:Ljava/lang/String; = "StaticResource"

.field private static final serialVersionUID:J = 0x1d5ae11d16ae1ab8L


# instance fields
.field public adParameters:Lcom/openx/model/vast/AdParameters;

.field public apiFramework:Ljava/lang/String;

.field public expandedHeight:Ljava/lang/String;

.field public expandedWidth:Ljava/lang/String;

.field public height:Ljava/lang/String;

.field public htmlResource:Lcom/openx/model/vast/HTMLResource;

.field public iFrameResource:Lcom/openx/model/vast/IFrameResource;

.field public id:Ljava/lang/String;

.field public maintainAspectRatio:Ljava/lang/String;

.field public minSuggestedDuration:Ljava/lang/String;

.field public nonLinearClickThrough:Lcom/openx/model/vast/NonLinearClickThrough;

.field public nonLinearClickTracking:Lcom/openx/model/vast/NonLinearClickTracking;

.field public scalable:Ljava/lang/String;

.field public staticResource:Lcom/openx/model/vast/StaticResource;

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

    .line 38
    invoke-direct {p0}, Lcom/openx/model/vast/VASTParserBase;-><init>()V

    .line 40
    const-string v0, "NonLinear"

    invoke-interface {p1, v3, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 42
    const-string v0, "id"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/openx/model/vast/NonLinear;->id:Ljava/lang/String;

    .line 43
    const-string v0, "width"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/openx/model/vast/NonLinear;->width:Ljava/lang/String;

    .line 44
    const-string v0, "height"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/openx/model/vast/NonLinear;->height:Ljava/lang/String;

    .line 45
    const-string v0, "expandedWidth"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/openx/model/vast/NonLinear;->expandedWidth:Ljava/lang/String;

    .line 46
    const-string v0, "expandedHeight"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/openx/model/vast/NonLinear;->expandedHeight:Ljava/lang/String;

    .line 47
    const-string v0, "scalable"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/openx/model/vast/NonLinear;->scalable:Ljava/lang/String;

    .line 48
    const-string v0, "maintainAspectRatio"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/openx/model/vast/NonLinear;->maintainAspectRatio:Ljava/lang/String;

    .line 49
    const-string v0, "minSuggestedDuration"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/openx/model/vast/NonLinear;->minSuggestedDuration:Ljava/lang/String;

    .line 50
    const-string v0, "apiFramework"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/openx/model/vast/NonLinear;->apiFramework:Ljava/lang/String;

    .line 52
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    if-eq v0, v4, :cond_7

    .line 54
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 58
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 59
    if-eqz v0, :cond_1

    const-string v1, "StaticResource"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 61
    const-string v0, "StaticResource"

    invoke-interface {p1, v3, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 62
    new-instance v0, Lcom/openx/model/vast/StaticResource;

    invoke-direct {v0, p1}, Lcom/openx/model/vast/StaticResource;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    iput-object v0, p0, Lcom/openx/model/vast/NonLinear;->staticResource:Lcom/openx/model/vast/StaticResource;

    .line 63
    const-string v0, "StaticResource"

    invoke-interface {p1, v4, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 65
    :cond_1
    if-eqz v0, :cond_2

    const-string v1, "IFrameResource"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 67
    const-string v0, "IFrameResource"

    invoke-interface {p1, v3, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 68
    new-instance v0, Lcom/openx/model/vast/IFrameResource;

    invoke-direct {v0, p1}, Lcom/openx/model/vast/IFrameResource;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    iput-object v0, p0, Lcom/openx/model/vast/NonLinear;->iFrameResource:Lcom/openx/model/vast/IFrameResource;

    .line 69
    const-string v0, "IFrameResource"

    invoke-interface {p1, v4, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 71
    :cond_2
    if-eqz v0, :cond_3

    const-string v1, "HTMLResource"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 73
    const-string v0, "HTMLResource"

    invoke-interface {p1, v3, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 74
    new-instance v0, Lcom/openx/model/vast/HTMLResource;

    invoke-direct {v0, p1}, Lcom/openx/model/vast/HTMLResource;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    iput-object v0, p0, Lcom/openx/model/vast/NonLinear;->htmlResource:Lcom/openx/model/vast/HTMLResource;

    .line 75
    const-string v0, "HTMLResource"

    invoke-interface {p1, v4, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 77
    :cond_3
    if-eqz v0, :cond_4

    const-string v1, "AdParameters"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 79
    const-string v0, "AdParameters"

    invoke-interface {p1, v3, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 80
    new-instance v0, Lcom/openx/model/vast/AdParameters;

    invoke-direct {v0, p1}, Lcom/openx/model/vast/AdParameters;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    iput-object v0, p0, Lcom/openx/model/vast/NonLinear;->adParameters:Lcom/openx/model/vast/AdParameters;

    .line 81
    const-string v0, "AdParameters"

    invoke-interface {p1, v4, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 83
    :cond_4
    if-eqz v0, :cond_5

    const-string v1, "NonLinearClickThrough"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 85
    const-string v0, "NonLinearClickThrough"

    invoke-interface {p1, v3, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 86
    new-instance v0, Lcom/openx/model/vast/NonLinearClickThrough;

    invoke-direct {v0, p1}, Lcom/openx/model/vast/NonLinearClickThrough;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    iput-object v0, p0, Lcom/openx/model/vast/NonLinear;->nonLinearClickThrough:Lcom/openx/model/vast/NonLinearClickThrough;

    .line 87
    const-string v0, "NonLinearClickThrough"

    invoke-interface {p1, v4, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 89
    :cond_5
    if-eqz v0, :cond_6

    const-string v1, "NonLinearClickTracking"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 91
    const-string v0, "NonLinearClickTracking"

    invoke-interface {p1, v3, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 92
    new-instance v0, Lcom/openx/model/vast/NonLinearClickTracking;

    invoke-direct {v0, p1}, Lcom/openx/model/vast/NonLinearClickTracking;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    iput-object v0, p0, Lcom/openx/model/vast/NonLinear;->nonLinearClickTracking:Lcom/openx/model/vast/NonLinearClickTracking;

    .line 93
    const-string v0, "NonLinearClickTracking"

    invoke-interface {p1, v4, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 97
    :cond_6
    invoke-virtual {p0, p1}, Lcom/openx/model/vast/NonLinear;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 101
    :cond_7
    return-void
.end method
