.class public Lcom/openx/model/vast/Description;
.super Lcom/openx/model/vast/BaseValue;
.source "Description.java"


# static fields
.field private static final serialVersionUID:J = 0x579fdf91712dd723L


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
