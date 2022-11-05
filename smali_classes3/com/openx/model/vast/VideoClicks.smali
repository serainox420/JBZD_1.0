.class public Lcom/openx/model/vast/VideoClicks;
.super Lcom/openx/model/vast/VASTParserBase;
.source "VideoClicks.java"


# static fields
.field private static final VAST_CLICKTHROUGH:Ljava/lang/String; = "ClickThrough"

.field private static final VAST_CLICKTRACKING:Ljava/lang/String; = "ClickTracking"

.field private static final VAST_CUSTOMCLICK:Ljava/lang/String; = "CustomClick"

.field private static final VAST_VIDEOCLICKS:Ljava/lang/String; = "VideoClicks"

.field private static final serialVersionUID:J = -0x4fc6117211fe445bL


# instance fields
.field public clickThrough:Lcom/openx/model/vast/ClickThrough;

.field public clickTrackings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/openx/model/vast/ClickTracking;",
            ">;"
        }
    .end annotation
.end field

.field public customClicks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/openx/model/vast/CustomClick;",
            ">;"
        }
    .end annotation
.end field


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

    .line 22
    invoke-direct {p0}, Lcom/openx/model/vast/VASTParserBase;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/openx/model/vast/VideoClicks;->clickTrackings:Ljava/util/ArrayList;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/openx/model/vast/VideoClicks;->customClicks:Ljava/util/ArrayList;

    .line 27
    const-string v0, "VideoClicks"

    invoke-interface {p1, v3, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 28
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    if-eq v0, v4, :cond_4

    .line 30
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 34
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 35
    if-eqz v0, :cond_1

    const-string v1, "ClickThrough"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 37
    const-string v0, "ClickThrough"

    invoke-interface {p1, v3, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 38
    new-instance v0, Lcom/openx/model/vast/ClickThrough;

    invoke-direct {v0, p1}, Lcom/openx/model/vast/ClickThrough;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    iput-object v0, p0, Lcom/openx/model/vast/VideoClicks;->clickThrough:Lcom/openx/model/vast/ClickThrough;

    .line 39
    const-string v0, "ClickThrough"

    invoke-interface {p1, v4, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 41
    :cond_1
    if-eqz v0, :cond_2

    const-string v1, "ClickTracking"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 43
    const-string v0, "ClickTracking"

    invoke-interface {p1, v3, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/openx/model/vast/VideoClicks;->clickTrackings:Ljava/util/ArrayList;

    new-instance v1, Lcom/openx/model/vast/ClickTracking;

    invoke-direct {v1, p1}, Lcom/openx/model/vast/ClickTracking;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    const-string v0, "ClickTracking"

    invoke-interface {p1, v4, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :cond_2
    if-eqz v0, :cond_3

    const-string v1, "CustomClick"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 50
    const-string v0, "CustomClick"

    invoke-interface {p1, v3, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/openx/model/vast/VideoClicks;->customClicks:Ljava/util/ArrayList;

    new-instance v1, Lcom/openx/model/vast/CustomClick;

    invoke-direct {v1, p1}, Lcom/openx/model/vast/CustomClick;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    const-string v0, "CustomClick"

    invoke-interface {p1, v4, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 57
    :cond_3
    invoke-virtual {p0, p1}, Lcom/openx/model/vast/VideoClicks;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 61
    :cond_4
    return-void
.end method
