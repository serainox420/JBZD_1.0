.class public Lcom/openx/model/vast/ClickTracking;
.super Lcom/openx/model/vast/BaseId;
.source "ClickTracking.java"


# static fields
.field private static final serialVersionUID:J = -0x26c1155c93ff497fL


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
    invoke-direct {p0, p1}, Lcom/openx/model/vast/BaseId;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 15
    return-void
.end method
