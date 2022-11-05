.class public Lcom/openx/model/vast/Linear;
.super Lcom/openx/model/vast/VASTParserBase;
.source "Linear.java"


# static fields
.field private static final VAST_ADPARAMETERS:Ljava/lang/String; = "AdParameters"

.field private static final VAST_DURATION:Ljava/lang/String; = "Duration"

.field private static final VAST_ICONS:Ljava/lang/String; = "Icons"

.field private static final VAST_LINEAR:Ljava/lang/String; = "Linear"

.field private static final VAST_MEDIAFILES:Ljava/lang/String; = "MediaFiles"

.field private static final VAST_TRACKINGEVENTS:Ljava/lang/String; = "TrackingEvents"

.field private static final VAST_VIDEOCLICKS:Ljava/lang/String; = "VideoClicks"

.field private static final serialVersionUID:J = 0x26bef86b165065b8L


# instance fields
.field public adParameters:Lcom/openx/model/vast/AdParameters;

.field public duration:Lcom/openx/model/vast/Duration;

.field public icons:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/openx/model/vast/Icon;",
            ">;"
        }
    .end annotation
.end field

.field public mediaFiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/openx/model/vast/MediaFile;",
            ">;"
        }
    .end annotation
.end field

.field public skipoffset:Ljava/lang/String;

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

.field public videoClicks:Lcom/openx/model/vast/VideoClicks;


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

    .line 31
    invoke-direct {p0}, Lcom/openx/model/vast/VASTParserBase;-><init>()V

    .line 33
    const-string v0, "Linear"

    invoke-interface {p1, v3, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 35
    const-string v0, "skipoffset"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/openx/model/vast/Linear;->skipoffset:Ljava/lang/String;

    .line 37
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    if-eq v0, v4, :cond_7

    .line 39
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 43
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 44
    if-eqz v0, :cond_1

    const-string v1, "AdParameters"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 46
    const-string v0, "AdParameters"

    invoke-interface {p1, v3, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 47
    new-instance v0, Lcom/openx/model/vast/AdParameters;

    invoke-direct {v0, p1}, Lcom/openx/model/vast/AdParameters;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    iput-object v0, p0, Lcom/openx/model/vast/Linear;->adParameters:Lcom/openx/model/vast/AdParameters;

    .line 48
    const-string v0, "AdParameters"

    invoke-interface {p1, v4, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :cond_1
    if-eqz v0, :cond_2

    const-string v1, "Duration"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 52
    const-string v0, "Duration"

    invoke-interface {p1, v3, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 53
    new-instance v0, Lcom/openx/model/vast/Duration;

    invoke-direct {v0, p1}, Lcom/openx/model/vast/Duration;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    iput-object v0, p0, Lcom/openx/model/vast/Linear;->duration:Lcom/openx/model/vast/Duration;

    .line 54
    const-string v0, "Duration"

    invoke-interface {p1, v4, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 56
    :cond_2
    if-eqz v0, :cond_3

    const-string v1, "MediaFiles"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 58
    const-string v0, "MediaFiles"

    invoke-interface {p1, v3, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 59
    new-instance v0, Lcom/openx/model/vast/MediaFiles;

    invoke-direct {v0, p1}, Lcom/openx/model/vast/MediaFiles;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    iget-object v0, v0, Lcom/openx/model/vast/MediaFiles;->mediaFiles:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/openx/model/vast/Linear;->mediaFiles:Ljava/util/ArrayList;

    .line 60
    const-string v0, "MediaFiles"

    invoke-interface {p1, v4, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 62
    :cond_3
    if-eqz v0, :cond_4

    const-string v1, "TrackingEvents"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 64
    const-string v0, "TrackingEvents"

    invoke-interface {p1, v3, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 65
    new-instance v0, Lcom/openx/model/vast/TrackingEvents;

    invoke-direct {v0, p1}, Lcom/openx/model/vast/TrackingEvents;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    iget-object v0, v0, Lcom/openx/model/vast/TrackingEvents;->trackingEvents:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/openx/model/vast/Linear;->trackingEvents:Ljava/util/ArrayList;

    .line 66
    const-string v0, "TrackingEvents"

    invoke-interface {p1, v4, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 68
    :cond_4
    if-eqz v0, :cond_5

    const-string v1, "VideoClicks"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 70
    const-string v0, "VideoClicks"

    invoke-interface {p1, v3, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 71
    new-instance v0, Lcom/openx/model/vast/VideoClicks;

    invoke-direct {v0, p1}, Lcom/openx/model/vast/VideoClicks;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    iput-object v0, p0, Lcom/openx/model/vast/Linear;->videoClicks:Lcom/openx/model/vast/VideoClicks;

    .line 72
    const-string v0, "VideoClicks"

    invoke-interface {p1, v4, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 74
    :cond_5
    if-eqz v0, :cond_6

    const-string v1, "Icons"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 76
    const-string v0, "Icons"

    invoke-interface {p1, v3, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 77
    new-instance v0, Lcom/openx/model/vast/Icons;

    invoke-direct {v0, p1}, Lcom/openx/model/vast/Icons;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    iget-object v0, v0, Lcom/openx/model/vast/Icons;->icons:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/openx/model/vast/Linear;->icons:Ljava/util/ArrayList;

    .line 78
    const-string v0, "Icons"

    invoke-interface {p1, v4, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 82
    :cond_6
    invoke-virtual {p0, p1}, Lcom/openx/model/vast/Linear;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 86
    :cond_7
    return-void
.end method
