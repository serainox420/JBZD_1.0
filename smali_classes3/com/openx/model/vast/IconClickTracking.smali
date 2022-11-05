.class public Lcom/openx/model/vast/IconClickTracking;
.super Lcom/openx/model/vast/BaseId;
.source "IconClickTracking.java"


# static fields
.field private static final serialVersionUID:J = 0x3e586d0b344ba4f3L


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
