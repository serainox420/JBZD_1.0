.class public Lcom/openx/model/vast/Ad;
.super Lcom/openx/model/vast/VASTParserBase;
.source "Ad.java"


# static fields
.field public static final VAST_AD:Ljava/lang/String; = "Ad"

.field private static final VAST_INLINE:Ljava/lang/String; = "InLine"

.field private static final VAST_WRAPPER:Ljava/lang/String; = "Wrapper"

.field private static final serialVersionUID:J = 0x2bcae395fb64225dL


# instance fields
.field public id:Ljava/lang/String;

.field public inline:Lcom/openx/model/vast/InLine;

.field public sequence:Ljava/lang/String;

.field public wrapper:Lcom/openx/model/vast/Wrapper;


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
    const-string v0, "Ad"

    invoke-interface {p1, v3, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 26
    const-string v0, "id"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/openx/model/vast/Ad;->id:Ljava/lang/String;

    .line 27
    const-string v0, "sequence"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/openx/model/vast/Ad;->sequence:Ljava/lang/String;

    .line 29
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    if-eq v0, v4, :cond_3

    .line 31
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 35
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 36
    if-eqz v0, :cond_1

    const-string v1, "InLine"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 38
    const-string v0, "InLine"

    invoke-interface {p1, v3, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 39
    new-instance v0, Lcom/openx/model/vast/InLine;

    invoke-direct {v0, p1}, Lcom/openx/model/vast/InLine;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    iput-object v0, p0, Lcom/openx/model/vast/Ad;->inline:Lcom/openx/model/vast/InLine;

    .line 40
    const-string v0, "InLine"

    invoke-interface {p1, v4, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 42
    :cond_1
    if-eqz v0, :cond_2

    const-string v1, "Wrapper"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 44
    const-string v0, "Wrapper"

    invoke-interface {p1, v3, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 45
    new-instance v0, Lcom/openx/model/vast/Wrapper;

    invoke-direct {v0, p1}, Lcom/openx/model/vast/Wrapper;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    iput-object v0, p0, Lcom/openx/model/vast/Ad;->wrapper:Lcom/openx/model/vast/Wrapper;

    .line 46
    const-string v0, "Wrapper"

    invoke-interface {p1, v4, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :cond_2
    invoke-virtual {p0, p1}, Lcom/openx/model/vast/Ad;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 54
    :cond_3
    return-void
.end method
