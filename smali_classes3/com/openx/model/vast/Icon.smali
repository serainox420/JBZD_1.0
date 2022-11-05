.class public Lcom/openx/model/vast/Icon;
.super Lcom/openx/model/vast/VASTParserBase;
.source "Icon.java"


# static fields
.field private static final VAST_HTMLRESOURCE:Ljava/lang/String; = "HTMLResource"

.field private static final VAST_ICON:Ljava/lang/String; = "Icon"

.field private static final VAST_ICONCLICKS:Ljava/lang/String; = "IconClicks"

.field private static final VAST_ICONVIEWTRACKING:Ljava/lang/String; = "IconViewTracking"

.field private static final VAST_IFRAMERESOURCE:Ljava/lang/String; = "IFrameResource"

.field private static final VAST_STATICRESOURCE:Ljava/lang/String; = "StaticResource"

.field private static final serialVersionUID:J = -0x4045ce013782795dL


# instance fields
.field public apiFramework:Ljava/lang/String;

.field public duration:Ljava/lang/String;

.field public height:Ljava/lang/String;

.field public htmlResource:Lcom/openx/model/vast/HTMLResource;

.field public iFrameResource:Lcom/openx/model/vast/IFrameResource;

.field public iconClicks:Lcom/openx/model/vast/IconClicks;

.field public iconViewTracking:Lcom/openx/model/vast/IconViewTracking;

.field public offset:Ljava/lang/String;

.field public program:Ljava/lang/String;

.field public staticResource:Lcom/openx/model/vast/StaticResource;

.field public width:Ljava/lang/String;

.field public xPosition:Ljava/lang/String;

.field public yPosition:Ljava/lang/String;


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

    .line 35
    invoke-direct {p0}, Lcom/openx/model/vast/VASTParserBase;-><init>()V

    .line 37
    const-string v0, "Icon"

    invoke-interface {p1, v3, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 39
    const-string v0, "program"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/openx/model/vast/Icon;->program:Ljava/lang/String;

    .line 40
    const-string v0, "width"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/openx/model/vast/Icon;->width:Ljava/lang/String;

    .line 41
    const-string v0, "height"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/openx/model/vast/Icon;->height:Ljava/lang/String;

    .line 42
    const-string v0, "xPosition"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/openx/model/vast/Icon;->xPosition:Ljava/lang/String;

    .line 43
    const-string v0, "yPosition"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/openx/model/vast/Icon;->yPosition:Ljava/lang/String;

    .line 44
    const-string v0, "duration"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/openx/model/vast/Icon;->duration:Ljava/lang/String;

    .line 45
    const-string v0, "offset"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/openx/model/vast/Icon;->offset:Ljava/lang/String;

    .line 46
    const-string v0, "apiFramework"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/openx/model/vast/Icon;->apiFramework:Ljava/lang/String;

    .line 48
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    if-eq v0, v4, :cond_6

    .line 50
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 54
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 55
    if-eqz v0, :cond_1

    const-string v1, "StaticResource"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 57
    const-string v0, "StaticResource"

    invoke-interface {p1, v3, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 58
    new-instance v0, Lcom/openx/model/vast/StaticResource;

    invoke-direct {v0, p1}, Lcom/openx/model/vast/StaticResource;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    iput-object v0, p0, Lcom/openx/model/vast/Icon;->staticResource:Lcom/openx/model/vast/StaticResource;

    .line 59
    const-string v0, "StaticResource"

    invoke-interface {p1, v4, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 61
    :cond_1
    if-eqz v0, :cond_2

    const-string v1, "IFrameResource"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 63
    const-string v0, "IFrameResource"

    invoke-interface {p1, v3, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 64
    new-instance v0, Lcom/openx/model/vast/IFrameResource;

    invoke-direct {v0, p1}, Lcom/openx/model/vast/IFrameResource;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    iput-object v0, p0, Lcom/openx/model/vast/Icon;->iFrameResource:Lcom/openx/model/vast/IFrameResource;

    .line 65
    const-string v0, "IFrameResource"

    invoke-interface {p1, v4, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 67
    :cond_2
    if-eqz v0, :cond_3

    const-string v1, "HTMLResource"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 69
    const-string v0, "HTMLResource"

    invoke-interface {p1, v3, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 70
    new-instance v0, Lcom/openx/model/vast/HTMLResource;

    invoke-direct {v0, p1}, Lcom/openx/model/vast/HTMLResource;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    iput-object v0, p0, Lcom/openx/model/vast/Icon;->htmlResource:Lcom/openx/model/vast/HTMLResource;

    .line 71
    const-string v0, "HTMLResource"

    invoke-interface {p1, v4, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 73
    :cond_3
    if-eqz v0, :cond_4

    const-string v1, "IconClicks"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 75
    const-string v0, "IconClicks"

    invoke-interface {p1, v3, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 76
    new-instance v0, Lcom/openx/model/vast/IconClicks;

    invoke-direct {v0, p1}, Lcom/openx/model/vast/IconClicks;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    iput-object v0, p0, Lcom/openx/model/vast/Icon;->iconClicks:Lcom/openx/model/vast/IconClicks;

    .line 77
    const-string v0, "IconClicks"

    invoke-interface {p1, v4, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 79
    :cond_4
    if-eqz v0, :cond_5

    const-string v1, "IconViewTracking"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 81
    const-string v0, "IconViewTracking"

    invoke-interface {p1, v3, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 82
    new-instance v0, Lcom/openx/model/vast/IconViewTracking;

    invoke-direct {v0, p1}, Lcom/openx/model/vast/IconViewTracking;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    iput-object v0, p0, Lcom/openx/model/vast/Icon;->iconViewTracking:Lcom/openx/model/vast/IconViewTracking;

    .line 83
    const-string v0, "IconViewTracking"

    invoke-interface {p1, v4, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 87
    :cond_5
    invoke-virtual {p0, p1}, Lcom/openx/model/vast/Icon;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 91
    :cond_6
    return-void
.end method
