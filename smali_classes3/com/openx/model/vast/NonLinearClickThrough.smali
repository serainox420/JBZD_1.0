.class public Lcom/openx/model/vast/NonLinearClickThrough;
.super Lcom/openx/model/vast/BaseId;
.source "NonLinearClickThrough.java"


# static fields
.field private static final serialVersionUID:J = -0x14b70d5bc9b2646fL


# direct methods
.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/openx/model/vast/BaseId;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 17
    return-void
.end method
