.class public Lcom/openx/model/vast/CreativeExtension;
.super Lcom/openx/model/vast/BaseValue;
.source "CreativeExtension.java"


# static fields
.field private static final serialVersionUID:J = -0x5674ef9c12379df5L


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
    .line 14
    invoke-direct {p0, p1}, Lcom/openx/model/vast/BaseValue;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 15
    return-void
.end method
