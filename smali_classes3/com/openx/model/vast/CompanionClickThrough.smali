.class public Lcom/openx/model/vast/CompanionClickThrough;
.super Lcom/openx/model/vast/BaseId;
.source "CompanionClickThrough.java"


# static fields
.field private static final serialVersionUID:J = 0x2fb555e5931ad350L


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
