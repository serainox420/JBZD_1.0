.class public Lcom/openx/model/vast/Creatives;
.super Lcom/openx/model/vast/VASTParserBase;
.source "Creatives.java"


# static fields
.field public static final VAST_CREATIVE:Ljava/lang/String; = "Creative"

.field public static final VAST_CREATIVES:Ljava/lang/String; = "Creatives"

.field private static final serialVersionUID:J = -0x7113477d44f10f6aL


# instance fields
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

    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 18
    invoke-direct {p0}, Lcom/openx/model/vast/VASTParserBase;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/openx/model/vast/Creatives;->creatives:Ljava/util/ArrayList;

    .line 22
    const-string v0, "Creatives"

    invoke-interface {p1, v2, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 23
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    if-eq v0, v4, :cond_2

    .line 25
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 29
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 30
    if-eqz v0, :cond_1

    const-string v1, "Creative"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 32
    const-string v0, "Creative"

    invoke-interface {p1, v2, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcom/openx/model/vast/Creatives;->creatives:Ljava/util/ArrayList;

    new-instance v1, Lcom/openx/model/vast/Creative;

    invoke-direct {v1, p1}, Lcom/openx/model/vast/Creative;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    const-string v0, "Creative"

    invoke-interface {p1, v4, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 38
    :cond_1
    invoke-virtual {p0, p1}, Lcom/openx/model/vast/Creatives;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 42
    :cond_2
    return-void
.end method
