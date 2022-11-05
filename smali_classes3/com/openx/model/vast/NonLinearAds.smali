.class public Lcom/openx/model/vast/NonLinearAds;
.super Lcom/openx/model/vast/VASTParserBase;
.source "NonLinearAds.java"


# static fields
.field public static final VAST_NONLINEAERADS:Ljava/lang/String; = "NonLinearAds"

.field public static final VAST_NONLINEAR:Ljava/lang/String; = "NonLinear"

.field public static final VAST_TRACKINGEVENTS:Ljava/lang/String; = "TrackingEvents"

.field private static final serialVersionUID:J = 0x5e102b78a2f025deL


# instance fields
.field public nonLinearAds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/openx/model/vast/NonLinear;",
            ">;"
        }
    .end annotation
.end field

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

    .line 21
    invoke-direct {p0}, Lcom/openx/model/vast/VASTParserBase;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/openx/model/vast/NonLinearAds;->nonLinearAds:Ljava/util/ArrayList;

    .line 25
    const-string v0, "NonLinearAds"

    invoke-interface {p1, v3, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 27
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    if-eq v0, v4, :cond_3

    .line 29
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 33
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 34
    if-eqz v0, :cond_1

    const-string v1, "NonLinear"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 36
    const-string v0, "NonLinear"

    invoke-interface {p1, v3, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/openx/model/vast/NonLinearAds;->nonLinearAds:Ljava/util/ArrayList;

    new-instance v1, Lcom/openx/model/vast/NonLinear;

    invoke-direct {v1, p1}, Lcom/openx/model/vast/NonLinear;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    const-string v0, "NonLinear"

    invoke-interface {p1, v4, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 40
    :cond_1
    if-eqz v0, :cond_2

    const-string v1, "TrackingEvents"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 42
    const-string v0, "TrackingEvents"

    invoke-interface {p1, v3, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 43
    new-instance v0, Lcom/openx/model/vast/TrackingEvents;

    invoke-direct {v0, p1}, Lcom/openx/model/vast/TrackingEvents;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    iget-object v0, v0, Lcom/openx/model/vast/TrackingEvents;->trackingEvents:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/openx/model/vast/NonLinearAds;->trackingEvents:Ljava/util/ArrayList;

    .line 44
    const-string v0, "TrackingEvents"

    invoke-interface {p1, v4, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :cond_2
    invoke-virtual {p0, p1}, Lcom/openx/model/vast/NonLinearAds;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 52
    :cond_3
    return-void
.end method
