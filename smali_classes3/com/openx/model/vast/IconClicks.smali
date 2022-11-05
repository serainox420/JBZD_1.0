.class public Lcom/openx/model/vast/IconClicks;
.super Lcom/openx/model/vast/VASTParserBase;
.source "IconClicks.java"


# static fields
.field private static final VAST_ICONCLICKS:Ljava/lang/String; = "IconClicks"

.field private static final VAST_ICONCLICKTHROUGH:Ljava/lang/String; = "IconClickThrough"

.field private static final VAST_ICONCLICKTRACKING:Ljava/lang/String; = "IconClickTracking"

.field private static final serialVersionUID:J = -0x562418286d514a0cL


# instance fields
.field public iconClickThrough:Lcom/openx/model/vast/IconClickThrough;

.field public iconClickTracking:Lcom/openx/model/vast/IconClickTracking;


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

    .line 19
    invoke-direct {p0}, Lcom/openx/model/vast/VASTParserBase;-><init>()V

    .line 21
    const-string v0, "IconClicks"

    invoke-interface {p1, v3, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 22
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    if-eq v0, v4, :cond_3

    .line 24
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 28
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 29
    if-eqz v0, :cond_1

    const-string v1, "IconClickThrough"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 31
    const-string v0, "IconClickThrough"

    invoke-interface {p1, v3, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 32
    new-instance v0, Lcom/openx/model/vast/IconClickThrough;

    invoke-direct {v0, p1}, Lcom/openx/model/vast/IconClickThrough;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    iput-object v0, p0, Lcom/openx/model/vast/IconClicks;->iconClickThrough:Lcom/openx/model/vast/IconClickThrough;

    .line 33
    const-string v0, "IconClickThrough"

    invoke-interface {p1, v4, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 35
    :cond_1
    if-eqz v0, :cond_2

    const-string v1, "IconClickTracking"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 37
    const-string v0, "IconClickTracking"

    invoke-interface {p1, v3, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 38
    new-instance v0, Lcom/openx/model/vast/IconClickTracking;

    invoke-direct {v0, p1}, Lcom/openx/model/vast/IconClickTracking;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    iput-object v0, p0, Lcom/openx/model/vast/IconClicks;->iconClickTracking:Lcom/openx/model/vast/IconClickTracking;

    .line 39
    const-string v0, "IconClickTracking"

    invoke-interface {p1, v4, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 43
    :cond_2
    invoke-virtual {p0, p1}, Lcom/openx/model/vast/IconClicks;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 47
    :cond_3
    return-void
.end method
