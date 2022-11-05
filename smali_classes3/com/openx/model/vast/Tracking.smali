.class public Lcom/openx/model/vast/Tracking;
.super Lcom/openx/model/vast/VASTParserBase;
.source "Tracking.java"


# static fields
.field private static final serialVersionUID:J = 0x3c79b1b97e034595L


# instance fields
.field public event:Ljava/lang/String;

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
    .line 16
    invoke-direct {p0}, Lcom/openx/model/vast/VASTParserBase;-><init>()V

    .line 18
    const/4 v0, 0x0

    const-string v1, "event"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/openx/model/vast/Tracking;->event:Ljava/lang/String;

    .line 19
    invoke-virtual {p0, p1}, Lcom/openx/model/vast/Tracking;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/openx/model/vast/Tracking;->value:Ljava/lang/String;

    .line 21
    return-void
.end method
