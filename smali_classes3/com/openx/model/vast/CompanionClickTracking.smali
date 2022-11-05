.class public Lcom/openx/model/vast/CompanionClickTracking;
.super Lcom/openx/model/vast/BaseId;
.source "CompanionClickTracking.java"


# static fields
.field private static final serialVersionUID:J = 0x201c634360bc3d36L


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
