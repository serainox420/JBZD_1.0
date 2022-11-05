.class public Lcom/openx/model/vast/Icons;
.super Lcom/openx/model/vast/VASTParserBase;
.source "Icons.java"


# static fields
.field public static final VAST_ICON:Ljava/lang/String; = "Icons"

.field public static final VAST_ICONS:Ljava/lang/String; = "Icons"

.field private static final serialVersionUID:J = 0x198d5c60c5c43e85L


# instance fields
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

    .line 19
    invoke-direct {p0}, Lcom/openx/model/vast/VASTParserBase;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/openx/model/vast/Icons;->icons:Ljava/util/ArrayList;

    .line 23
    const-string v0, "Icons"

    invoke-interface {p1, v2, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 24
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    if-eq v0, v4, :cond_2

    .line 26
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 30
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 31
    if-eqz v0, :cond_1

    const-string v1, "Icons"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 33
    const-string v0, "Icons"

    invoke-interface {p1, v2, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/openx/model/vast/Icons;->icons:Ljava/util/ArrayList;

    new-instance v1, Lcom/openx/model/vast/Icon;

    invoke-direct {v1, p1}, Lcom/openx/model/vast/Icon;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    const-string v0, "Icons"

    invoke-interface {p1, v4, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 39
    :cond_1
    invoke-virtual {p0, p1}, Lcom/openx/model/vast/Icons;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 43
    :cond_2
    return-void
.end method
