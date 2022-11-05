.class public Lcom/openx/model/vast/VAST;
.super Lcom/openx/model/vast/VASTParserBase;
.source "VAST.java"


# static fields
.field private static final VAST_AD:Ljava/lang/String; = "Ad"

.field private static final VAST_ERROR:Ljava/lang/String; = "Error"

.field private static final VAST_START:Ljava/lang/String; = "VAST"

.field private static final serialVersionUID:J = 0x5b4b057ab329c287L


# instance fields
.field public ads:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/openx/model/vast/Ad;",
            ">;"
        }
    .end annotation
.end field

.field public error:Lcom/openx/model/vast/Error;

.field public version:Ljava/lang/String;


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

    .line 23
    invoke-direct {p0}, Lcom/openx/model/vast/VASTParserBase;-><init>()V

    .line 25
    const-string v0, "VAST"

    invoke-interface {p1, v3, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 27
    const-string v0, "version"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/openx/model/vast/VAST;->version:Ljava/lang/String;

    .line 29
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    if-eq v0, v4, :cond_4

    .line 31
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 35
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 36
    if-eqz v0, :cond_1

    const-string v1, "Error"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 38
    const-string v0, "Error"

    invoke-interface {p1, v3, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 39
    new-instance v0, Lcom/openx/model/vast/Error;

    invoke-direct {v0, p1}, Lcom/openx/model/vast/Error;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    iput-object v0, p0, Lcom/openx/model/vast/VAST;->error:Lcom/openx/model/vast/Error;

    .line 40
    const-string v0, "Error"

    invoke-interface {p1, v4, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 42
    :cond_1
    if-eqz v0, :cond_3

    const-string v1, "Ad"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 45
    iget-object v0, p0, Lcom/openx/model/vast/VAST;->ads:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/openx/model/vast/VAST;->ads:Ljava/util/ArrayList;

    .line 50
    :cond_2
    const-string v0, "Ad"

    invoke-interface {p1, v3, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/openx/model/vast/VAST;->ads:Ljava/util/ArrayList;

    new-instance v1, Lcom/openx/model/vast/Ad;

    invoke-direct {v1, p1}, Lcom/openx/model/vast/Ad;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    const-string v0, "Ad"

    invoke-interface {p1, v4, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 56
    :cond_3
    invoke-virtual {p0, p1}, Lcom/openx/model/vast/VAST;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 60
    :cond_4
    return-void
.end method
