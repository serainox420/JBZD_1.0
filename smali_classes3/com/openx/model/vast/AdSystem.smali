.class public Lcom/openx/model/vast/AdSystem;
.super Lcom/openx/model/vast/VASTParserBase;
.source "AdSystem.java"


# static fields
.field private static final serialVersionUID:J = 0x73301464f573f4dcL


# instance fields
.field public value:Ljava/lang/String;

.field public version:Ljava/lang/String;


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
    .line 15
    invoke-direct {p0}, Lcom/openx/model/vast/VASTParserBase;-><init>()V

    .line 17
    const/4 v0, 0x0

    const-string v1, "version"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/openx/model/vast/AdSystem;->version:Ljava/lang/String;

    .line 18
    invoke-virtual {p0, p1}, Lcom/openx/model/vast/AdSystem;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/openx/model/vast/AdSystem;->value:Ljava/lang/String;

    .line 20
    return-void
.end method
