.class public Lcom/openx/model/vast/Impressions;
.super Lcom/openx/model/vast/VASTParserBase;
.source "Impressions.java"


# static fields
.field public static final VAST_IMPRESSION:Ljava/lang/String; = "Impression"

.field public static final VAST_IMPRESSIONS:Ljava/lang/String; = "Impressions"

.field private static final serialVersionUID:J = -0x2661f6b01a01d247L


# instance fields
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
    const/4 v4, 0x0

    const/4 v3, 0x3

    const/4 v2, 0x2

    .line 19
    invoke-direct {p0}, Lcom/openx/model/vast/VASTParserBase;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/openx/model/vast/Impressions;->impressions:Ljava/util/ArrayList;

    .line 23
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    if-eq v0, v3, :cond_2

    .line 25
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 29
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 30
    if-eqz v0, :cond_1

    const-string v1, "Impression"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 32
    const-string v0, "Impression"

    invoke-interface {p1, v2, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcom/openx/model/vast/Impressions;->impressions:Ljava/util/ArrayList;

    new-instance v1, Lcom/openx/model/vast/Impression;

    invoke-direct {v1, p1}, Lcom/openx/model/vast/Impression;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    const-string v0, "Impression"

    invoke-interface {p1, v3, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 38
    :cond_1
    invoke-virtual {p0, p1}, Lcom/openx/model/vast/Impressions;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 42
    :cond_2
    return-void
.end method
