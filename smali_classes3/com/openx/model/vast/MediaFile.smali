.class public Lcom/openx/model/vast/MediaFile;
.super Lcom/openx/model/vast/VASTParserBase;
.source "MediaFile.java"


# static fields
.field private static final serialVersionUID:J = 0x36f53e2ab89eaa02L


# instance fields
.field public apiFramework:Ljava/lang/String;

.field public bitrate:Ljava/lang/String;

.field public delivery:Ljava/lang/String;

.field public duration:Ljava/lang/String;

.field public height:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public maxBitrate:Ljava/lang/String;

.field public minBitrate:Ljava/lang/String;

.field public offset:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public value:Ljava/lang/String;

.field public width:Ljava/lang/String;

.field public xPosition:Ljava/lang/String;

.field public yPosition:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-direct {p0}, Lcom/openx/model/vast/VASTParserBase;-><init>()V

    .line 30
    const-string v0, "id"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/openx/model/vast/MediaFile;->id:Ljava/lang/String;

    .line 31
    const-string v0, "delivery"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/openx/model/vast/MediaFile;->delivery:Ljava/lang/String;

    .line 32
    const-string v0, "type"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/openx/model/vast/MediaFile;->type:Ljava/lang/String;

    .line 33
    const-string v0, "bitrate"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/openx/model/vast/MediaFile;->bitrate:Ljava/lang/String;

    .line 34
    const-string v0, "minBitrate"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/openx/model/vast/MediaFile;->minBitrate:Ljava/lang/String;

    .line 35
    const-string v0, "maxBitrate"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/openx/model/vast/MediaFile;->maxBitrate:Ljava/lang/String;

    .line 36
    const-string v0, "width"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/openx/model/vast/MediaFile;->width:Ljava/lang/String;

    .line 37
    const-string v0, "height"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/openx/model/vast/MediaFile;->height:Ljava/lang/String;

    .line 38
    const-string v0, "xPosition"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/openx/model/vast/MediaFile;->xPosition:Ljava/lang/String;

    .line 39
    const-string v0, "yPosition"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/openx/model/vast/MediaFile;->yPosition:Ljava/lang/String;

    .line 40
    const-string v0, "duration"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/openx/model/vast/MediaFile;->duration:Ljava/lang/String;

    .line 41
    const-string v0, "offset"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/openx/model/vast/MediaFile;->offset:Ljava/lang/String;

    .line 42
    const-string v0, "apiFramework"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/openx/model/vast/MediaFile;->apiFramework:Ljava/lang/String;

    .line 43
    invoke-virtual {p0, p1}, Lcom/openx/model/vast/MediaFile;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/openx/model/vast/MediaFile;->value:Ljava/lang/String;

    .line 44
    return-void
.end method
