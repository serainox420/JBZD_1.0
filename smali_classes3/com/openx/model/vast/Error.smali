.class public Lcom/openx/model/vast/Error;
.super Lcom/openx/model/vast/BaseValue;
.source "Error.java"


# static fields
.field private static final serialVersionUID:J = -0x4a7e6c35c3d73f7eL


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
    .line 15
    invoke-direct {p0, p1}, Lcom/openx/model/vast/BaseValue;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 16
    return-void
.end method
