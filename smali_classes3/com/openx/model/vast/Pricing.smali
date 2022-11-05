.class public Lcom/openx/model/vast/Pricing;
.super Lcom/openx/model/vast/VASTParserBase;
.source "Pricing.java"


# static fields
.field private static final serialVersionUID:J = 0x1931aa5f3886b0f3L


# instance fields
.field public currency:Ljava/lang/String;

.field public model:Ljava/lang/String;

.field public value:Ljava/lang/String;


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

    .line 17
    invoke-direct {p0}, Lcom/openx/model/vast/VASTParserBase;-><init>()V

    .line 19
    const-string v0, "model"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/openx/model/vast/Pricing;->model:Ljava/lang/String;

    .line 20
    const-string v0, "currency"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/openx/model/vast/Pricing;->currency:Ljava/lang/String;

    .line 21
    invoke-virtual {p0, p1}, Lcom/openx/model/vast/Pricing;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/openx/model/vast/Pricing;->value:Ljava/lang/String;

    .line 23
    return-void
.end method
